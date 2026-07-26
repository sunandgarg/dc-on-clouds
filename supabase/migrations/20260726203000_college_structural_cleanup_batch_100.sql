-- First deterministic 100-college structural cleanup.
-- Fees, rankings, approvals and placements are not invented.

WITH target AS (
  SELECT
    id,
    trim(regexp_replace(coalesce(name, ''), '<[^>]*>', ' ', 'g')) AS clean_name,
    trim(regexp_replace(coalesce(short_name, ''), '<[^>]*>', ' ', 'g')) AS clean_short_name,
    coalesce(category, '') AS raw_category,
    coalesce(type, '') AS college_type,
    coalesce(city, '') AS college_city,
    coalesce(state, '') AS college_state,
    coalesce(location, '') AS college_location
  FROM public.colleges
  WHERE coalesce(data_clean_state, 'never_checked') IN ('never_checked', 'awaiting_review', 'failed', 'checked_no_change')
  ORDER BY name ASC, id ASC
  LIMIT 100
),
prepared AS (
  SELECT *,
    CASE
      WHEN clean_name || raw_category ~* '(dental|medical|medicine|nursing|pharmacy|health|ayur)' THEN 'Medical'
      WHEN clean_name || raw_category ~* '(management|business|commerce|mba)' THEN 'Management'
      WHEN clean_name || raw_category ~* '(law|legal)' THEN 'Law'
      WHEN clean_name || raw_category ~* '(design|fashion|fine art)' THEN 'Design'
      WHEN clean_name || raw_category ~* '(engineering|technology|technical|iit|nit|iiit)' THEN 'Engineering'
      WHEN clean_name || raw_category ~* '(agriculture|horticulture|forestry)' THEN 'Agriculture'
      WHEN clean_name || raw_category ~* '(science|research|iiser)' THEN 'Science'
      WHEN clean_name || raw_category ~* '(arts|humanities|language)' THEN 'Arts & Humanities'
      WHEN clean_name || raw_category ~* '(education|teacher|training)' THEN 'Education'
      ELSE 'General'
    END AS clean_category
  FROM target
)
UPDATE public.colleges c
SET
  name = p.clean_name,
  short_name = CASE
    WHEN p.clean_short_name <> '' THEN p.clean_short_name
    WHEN p.clean_name ~ '\[([A-Za-z0-9 .-]+)\]' THEN substring(p.clean_name from '\[([A-Za-z0-9 .-]+)\]')
    ELSE left(p.clean_name, 32)
  END,
  category = p.clean_category,
  description = p.clean_name || ' is a ' || lower(coalesce(nullif(p.college_type, ''), 'higher-education')) ||
    ' institution in ' || coalesce(nullif(p.college_city, ''), nullif(p.college_location, ''), 'India') ||
    '. Students should compare the current courses, recognition, admission rules, fees, facilities and verified outcome disclosures before applying.',
  page_summary = p.clean_name || ': courses, eligibility, admissions, fees, facilities, placements and official verification points in one concise guide.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Eligibility varies by course and admission year. Confirm the qualifying examination, required subjects, minimum marks, entrance test, reservation rules and document requirements in the institution’s current admission notice.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and intake year.</li><li>Confirm recognition and programme-specific eligibility.</li><li>Check whether admission uses merit, counselling, an entrance examination or an institutional process.</li><li>Apply through an authorised portal and retain payment and submission records.</li><li>Complete document verification within the notified schedule.</li></ol>',
  course_fee_content = CASE WHEN trim(coalesce(c.course_fee_content, '')) = '' THEN '' ELSE c.course_fee_content END,
  placement_content = '<h2>Placements and career support</h2><p>Use programme-level placement reports where available. Compare eligible and participating students, median outcomes, role profiles, internship access and recruiter diversity instead of relying only on the highest package.</p>',
  rankings_content = CASE
    WHEN trim(coalesce(c.rankings_content, '')) <> '' THEN c.rankings_content
    ELSE '<h2>Rankings and recognition</h2><p>Verify rankings against the publishing organisation and the correct year, category and campus. A ranking should be considered alongside accreditation, curriculum, faculty, outcomes and student support.</p>'
  END,
  facilities_content = '<h2>Campus facilities</h2><p>Facilities can differ by campus and programme. Confirm laboratories, library access, hostels, accessibility, healthcare, sports, transport and safety arrangements directly with the institution.</p>',
  meta_title = left(p.clean_name || ': Courses, Admission, Fees and Placements', 70),
  meta_description = left('Explore ' || p.clean_name || ' courses, eligibility, admissions, fee verification, facilities, placements and key details for informed comparison.', 160),
  meta_keywords = p.clean_name || ', courses, eligibility, admission, fees, placements, facilities, colleges',
  data_last_checked_at = now(),
  data_quality_score = 60,
  data_clean_attempts = greatest(coalesce(c.data_clean_attempts, 0) + 1, 1),
  data_clean_successes = greatest(coalesce(c.data_clean_successes, 0) + 1, 1),
  data_clean_state = 'cleaned',
  updated_at = now()
FROM prepared p
WHERE c.id = p.id;
