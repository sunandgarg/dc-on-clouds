-- Continue first-pass structural cleanup for the next deterministic
-- 3000-college batch.
--
-- This is a presentation/SEO/AIO-oriented cleanup. It does not invent
-- fees, rankings, approvals or placement claims.

WITH target AS (
  SELECT
    id,
    trim(regexp_replace(public.dc_plain_label(name), '\s+', ' ', 'g')) AS clean_name,
    trim(regexp_replace(public.dc_plain_label(short_name), '\s+', ' ', 'g')) AS clean_short_name,
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
  LIMIT 3000
),
prepared AS (
  SELECT *,
    CASE
      WHEN clean_name || raw_category ~* '(dental|medical|medicine|nursing|pharmacy|health|ayur|physiotherapy|homoeopath|aiims|hospital|paramedical)' THEN 'Medical'
      WHEN clean_name || raw_category ~* '(management|business|commerce|mba|finance|banking|school of business|institute of management)' THEN 'Management'
      WHEN clean_name || raw_category ~* '(law|legal|judicial)' THEN 'Law'
      WHEN clean_name || raw_category ~* '(design|fashion|fine art|architecture|planning|photography)' THEN 'Design'
      WHEN clean_name || raw_category ~* '(engineering|technology|technical|polytechnic|\\miit\\M|\\mnit\\M|\\miiit\\M|bit|bits|cet|gec|iet|kit|nit|iit|iiit)' THEN 'Engineering'
      WHEN clean_name || raw_category ~* '(agriculture|horticulture|forestry|veterinary|fisheries)' THEN 'Agriculture'
      WHEN clean_name || raw_category ~* '(science|research|iiser|statistics|mathematics)' THEN 'Science'
      WHEN clean_name || raw_category ~* '(arts|humanities|language|social science|liberal)' THEN 'Arts & Humanities'
      WHEN clean_name || raw_category ~* '(education|teacher|training|b\\.ed|tt college|vidyapeeth)' THEN 'Education'
      WHEN clean_name || raw_category ~* '(hotel|hospitality|tourism|airborne|aviation|aeronautical)' THEN 'Hospitality'
      ELSE 'General'
    END AS clean_category
  FROM target
  WHERE clean_name <> ''
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
    '. Students can use this profile to compare courses, eligibility, admission routes, fee disclosures, facilities, placements and other decision points before applying.',
  page_summary = 'Quick answer: compare ' || p.clean_name ||
    ' by courses, eligibility, admission process, fees, facilities, placements and the checks that matter before shortlisting.',
  eligibility_criteria = '<h2>Eligibility snapshot</h2><p>Eligibility depends on the selected course and admission year. Check the qualifying exam, required subjects, minimum marks, entrance or counselling route, reservation rules and document list in the latest admission notice.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Choose the exact course, campus and intake year.</li><li>Review eligibility, recognition and required documents.</li><li>Confirm whether selection is through merit, entrance scores, counselling or institute-level review.</li><li>Apply through an authorised portal and keep the receipt.</li><li>Finish document verification and fee payment within the published timeline.</li></ol>',
  course_fee_content = CASE
    WHEN trim(coalesce(c.course_fee_content, '')) = '' THEN ''
    ELSE c.course_fee_content
  END,
  placement_content = CASE
    WHEN trim(coalesce(c.placement_content, '')) <> '' THEN c.placement_content
    ELSE '<h2>Placements and career support</h2><p>For placements, compare eligible students, participating students, median outcomes, internship support, role quality and recruiter diversity. Highest package alone is not enough to judge a programme.</p>'
  END,
  rankings_content = CASE
    WHEN trim(coalesce(c.rankings_content, '')) <> '' THEN c.rankings_content
    ELSE '<h2>Rankings and recognition</h2><p>Use rankings carefully. Check the publisher, year, category and campus, then compare accreditation, curriculum, faculty depth, learning resources and student outcomes alongside rank.</p>'
  END,
  facilities_content = CASE
    WHEN trim(coalesce(c.facilities_content, '')) <> '' THEN c.facilities_content
    ELSE '<h2>Campus facilities</h2><p>Facilities can vary by campus and programme. Confirm labs, library access, hostels, accessibility, healthcare, sports, transport and safety arrangements directly with the institution.</p>'
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
