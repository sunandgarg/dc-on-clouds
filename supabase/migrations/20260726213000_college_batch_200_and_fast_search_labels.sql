-- Continue first-pass structural cleanup for the next deterministic
-- 200-college batch, and keep universal search labels fast and clean.
--
-- This pass humanises and structures existing records. It deliberately
-- preserves fee, ranking, approval and placement facts unless a value already
-- exists in the record.

CREATE OR REPLACE FUNCTION public.dc_plain_label(value text)
RETURNS text
LANGUAGE sql
IMMUTABLE
AS $$
  SELECT trim(regexp_replace(
    replace(replace(replace(replace(replace(coalesce(value, ''), '&nbsp;', ' '), '&amp;', '&'), '&#039;', ''''), '&quot;', '"'), '&lt;', '<'),
    '<[^>]*>',
    ' ',
    'g'
  ));
$$;

DROP FUNCTION IF EXISTS public.search_directory_fuzzy(text[], integer);

CREATE OR REPLACE FUNCTION public.search_directory_fuzzy(
  p_terms text[],
  p_limit integer DEFAULT 8
)
RETURNS TABLE (
  entity_type text,
  name text,
  slug text,
  subtitle text,
  image_url text,
  logo_url text,
  score real
)
LANGUAGE sql
STABLE
SECURITY INVOKER
SET search_path = public, extensions
AS $$
  WITH terms AS (
    SELECT DISTINCT lower(trim(term)) AS term
    FROM unnest(COALESCE(p_terms, ARRAY[]::text[])) AS term
    WHERE length(trim(term)) >= 2
    LIMIT 8
  ),
  candidates AS (
    SELECT
      'College'::text AS entity_type,
      public.dc_plain_label(c.name)::text AS name,
      c.slug::text,
      public.dc_plain_label(COALESCE(NULLIF(c.city, ''), NULLIF(c.state, ''), ''))::text AS subtitle,
      COALESCE(c.image, c.logo, '')::text AS image_url,
      COALESCE(c.logo, c.image, '')::text AS logo_url
    FROM public.colleges c
    WHERE c.is_active = true
    UNION ALL
    SELECT
      'Course',
      public.dc_plain_label(c.name)::text,
      c.slug::text,
      public.dc_plain_label(COALESCE(NULLIF(c.level, ''), NULLIF(c.category, ''), 'Course'))::text,
      COALESCE(c.image, '')::text,
      COALESCE(c.image, '')::text
    FROM public.courses c
    WHERE c.is_active = true
    UNION ALL
    SELECT
      'Exam',
      public.dc_plain_label(e.name)::text,
      e.slug::text,
      public.dc_plain_label(COALESCE(NULLIF(e.exam_type, ''), NULLIF(e.category, ''), 'Exam'))::text,
      COALESCE(e.logo, e.image, '')::text,
      COALESCE(e.logo, e.image, '')::text
    FROM public.exams e
    WHERE e.is_active = true
    UNION ALL
    SELECT
      'Career',
      public.dc_plain_label(c.name)::text,
      c.slug::text,
      public.dc_plain_label(COALESCE(c.domain, 'Career'))::text,
      COALESCE(c.image, '')::text,
      COALESCE(c.image, '')::text
    FROM public.career_profiles c
    WHERE c.is_active = true
  ),
  ranked AS (
    SELECT c.entity_type, c.name, c.slug, c.subtitle, c.image_url, c.logo_url,
           max(greatest(
             extensions.similarity(lower(c.name), t.term),
             extensions.word_similarity(t.term, lower(c.name)),
             CASE WHEN lower(c.name) LIKE '%' || t.term || '%' THEN 0.9 ELSE 0 END
           ))::real AS score,
           bool_or(lower(c.name) = t.term) AS exact_match,
           bool_or(lower(c.name) LIKE t.term || '%') AS prefix_match
    FROM candidates c
    CROSS JOIN terms t
    GROUP BY c.entity_type, c.name, c.slug, c.subtitle, c.image_url, c.logo_url
  )
  SELECT r.entity_type, r.name, r.slug, r.subtitle, r.image_url, r.logo_url, r.score
  FROM ranked r
  WHERE r.score >= 0.24
  ORDER BY r.exact_match DESC, r.prefix_match DESC, r.score DESC, length(r.name), r.name
  LIMIT greatest(1, least(COALESCE(p_limit, 8), 12));
$$;

GRANT EXECUTE ON FUNCTION public.search_directory_fuzzy(text[], integer) TO anon, authenticated;

WITH target AS (
  SELECT
    id,
    public.dc_plain_label(name) AS clean_name,
    public.dc_plain_label(short_name) AS clean_short_name,
    coalesce(category, '') AS raw_category,
    coalesce(type, '') AS college_type,
    coalesce(city, '') AS college_city,
    coalesce(state, '') AS college_state,
    coalesce(location, '') AS college_location
  FROM public.colleges
  WHERE coalesce(ai_clean_pass_count, 0) = 0
    AND coalesce(data_clean_state, 'never_checked') IN
      ('never_checked', 'awaiting_review', 'failed', 'checked_no_change')
  ORDER BY name ASC, id ASC
  LIMIT 200
),
prepared AS (
  SELECT *,
    CASE
      WHEN clean_name || raw_category ~* '(dental|medical|medicine|nursing|pharmacy|health|ayur|physiotherapy|homoeopath|aiims)' THEN 'Medical'
      WHEN clean_name || raw_category ~* '(management|business|commerce|mba|finance|aicar|aims)' THEN 'Management'
      WHEN clean_name || raw_category ~* '(law|legal|judicial)' THEN 'Law'
      WHEN clean_name || raw_category ~* '(design|fashion|fine art|architecture)' THEN 'Design'
      WHEN clean_name || raw_category ~* '(engineering|technology|technical|polytechnic|\\miit\\M|\\mnit\\M|\\miiit\\M)' THEN 'Engineering'
      WHEN clean_name || raw_category ~* '(agriculture|horticulture|forestry|veterinary)' THEN 'Agriculture'
      WHEN clean_name || raw_category ~* '(science|research|iiser)' THEN 'Science'
      WHEN clean_name || raw_category ~* '(arts|humanities|language|social science)' THEN 'Arts & Humanities'
      WHEN clean_name || raw_category ~* '(education|teacher|training|b\\.ed)' THEN 'Education'
      WHEN clean_name || raw_category ~* '(hotel|hospitality|tourism|airborne|aviation)' THEN 'Hospitality'
      ELSE 'General'
    END AS clean_category
  FROM target
)
UPDATE public.colleges c
SET
  name = p.clean_name,
  short_name = CASE
    WHEN p.clean_short_name <> '' THEN p.clean_short_name
    WHEN p.clean_name ~ '\[([A-Za-z0-9 .&-]+)\]' THEN substring(p.clean_name from '\[([A-Za-z0-9 .&-]+)\]')
    ELSE left(p.clean_name, 32)
  END,
  category = p.clean_category,
  description = p.clean_name || ' is a ' ||
    lower(coalesce(nullif(p.college_type, ''), 'higher-education')) ||
    ' institution in ' ||
    coalesce(nullif(p.college_city, ''), nullif(p.college_location, ''), 'India') ||
    '. Use this profile to compare available courses, admission routes, eligibility, fee disclosures, facilities and outcomes in one place. Confirm year-specific notices before applying.',
  page_summary = 'Quick answer: compare ' || p.clean_name ||
    ' by courses, eligibility, admissions, fees, facilities, placements and the key checks students should complete before applying.',
  eligibility_criteria = '<h2>Who can apply?</h2><p>Eligibility changes by course and admission year. Before applying, check the required qualifying exam, subjects, minimum marks, entrance or counselling route, reservation rules and document list in the latest notice.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and intake year.</li><li>Check eligibility, recognition and required documents.</li><li>Confirm whether selection uses merit, entrance scores, counselling or institute-level review.</li><li>Apply only through an authorised portal and keep the receipt.</li><li>Complete verification and fee payment within the published schedule.</li></ol>',
  course_fee_content = CASE
    WHEN trim(coalesce(c.course_fee_content, '')) = '' THEN ''
    ELSE c.course_fee_content
  END,
  placement_content = CASE
    WHEN trim(coalesce(c.placement_content, '')) <> '' THEN c.placement_content
    ELSE '<h2>Placements and career support</h2><p>Compare placement reports by eligible students, participating students, median outcomes, internships, role quality and recruiter diversity. Avoid judging a programme only by the highest package.</p>'
  END,
  rankings_content = CASE
    WHEN trim(coalesce(c.rankings_content, '')) <> '' THEN c.rankings_content
    ELSE '<h2>Rankings and recognition</h2><p>Check the ranking publisher, year, category and campus before relying on a rank. Use accreditation, curriculum, faculty depth, learning resources and outcomes alongside rankings.</p>'
  END,
  facilities_content = CASE
    WHEN trim(coalesce(c.facilities_content, '')) <> '' THEN c.facilities_content
    ELSE '<h2>Campus facilities</h2><p>Facilities differ by campus and programme. Confirm laboratories, library access, hostels, accessibility, healthcare, sports, transport and safety arrangements directly with the institution.</p>'
  END,
  meta_title = left(p.clean_name || ': Courses, Admission, Fees and Placements', 70),
  meta_description = left('Explore ' || p.clean_name ||
    ' courses, eligibility, admissions, fees, facilities, placements and practical checks before applying.', 160),
  meta_keywords = p.clean_name ||
    ', courses, eligibility, admission, fees, placements, facilities, college',
  data_last_checked_at = now(),
  data_quality_score = 60,
  data_clean_attempts = greatest(coalesce(c.data_clean_attempts, 0) + 1, 1),
  data_clean_successes = greatest(coalesce(c.data_clean_successes, 0) + 1, 1),
  ai_clean_pass_count = greatest(coalesce(c.ai_clean_pass_count, 0) + 1, 1),
  data_clean_state = 'cleaned',
  updated_at = now()
FROM prepared p
WHERE c.id = p.id;

NOTIFY pgrst, 'reload schema';
