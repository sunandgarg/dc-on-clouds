-- Track successful AI/structured cleanup rounds explicitly and process the
-- next deterministic 200-college first-pass batch.
--
-- Existing numeric fees, rankings, approvals and placement claims are
-- preserved. This migration does not invent institution-specific facts.

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS ai_clean_pass_count integer NOT NULL DEFAULT 0;
ALTER TABLE public.courses
  ADD COLUMN IF NOT EXISTS ai_clean_pass_count integer NOT NULL DEFAULT 0;
ALTER TABLE public.exams
  ADD COLUMN IF NOT EXISTS ai_clean_pass_count integer NOT NULL DEFAULT 0;

ALTER TABLE public.colleges
  DROP CONSTRAINT IF EXISTS colleges_ai_clean_pass_count_nonnegative;
ALTER TABLE public.colleges
  ADD CONSTRAINT colleges_ai_clean_pass_count_nonnegative
  CHECK (ai_clean_pass_count >= 0);
ALTER TABLE public.courses
  DROP CONSTRAINT IF EXISTS courses_ai_clean_pass_count_nonnegative;
ALTER TABLE public.courses
  ADD CONSTRAINT courses_ai_clean_pass_count_nonnegative
  CHECK (ai_clean_pass_count >= 0);
ALTER TABLE public.exams
  DROP CONSTRAINT IF EXISTS exams_ai_clean_pass_count_nonnegative;
ALTER TABLE public.exams
  ADD CONSTRAINT exams_ai_clean_pass_count_nonnegative
  CHECK (ai_clean_pass_count >= 0);

COMMENT ON COLUMN public.colleges.ai_clean_pass_count IS
  'Successful AI or structured cleanup passes. 0 means not cleaned; 1 is first round; 2 is second round.';
COMMENT ON COLUMN public.courses.ai_clean_pass_count IS
  'Successful AI or structured cleanup passes. 0 means not cleaned; 1 is first round; 2 is second round.';
COMMENT ON COLUMN public.exams.ai_clean_pass_count IS
  'Successful AI or structured cleanup passes. 0 means not cleaned; 1 is first round; 2 is second round.';

-- Preserve the cleanup history already completed before this explicit column
-- was introduced.
UPDATE public.colleges
SET ai_clean_pass_count = greatest(ai_clean_pass_count, coalesce(data_clean_successes, 0))
WHERE data_clean_state = 'cleaned';
UPDATE public.courses
SET ai_clean_pass_count = greatest(ai_clean_pass_count, coalesce(data_clean_successes, 0))
WHERE data_clean_state = 'cleaned';
UPDATE public.exams
SET ai_clean_pass_count = greatest(ai_clean_pass_count, coalesce(data_clean_successes, 0))
WHERE data_clean_state = 'cleaned';

CREATE INDEX IF NOT EXISTS colleges_ai_clean_pass_count_idx
  ON public.colleges(ai_clean_pass_count, data_last_checked_at);
CREATE INDEX IF NOT EXISTS courses_ai_clean_pass_count_idx
  ON public.courses(ai_clean_pass_count, data_last_checked_at);
CREATE INDEX IF NOT EXISTS exams_ai_clean_pass_count_idx
  ON public.exams(ai_clean_pass_count, data_last_checked_at);

WITH target AS (
  SELECT
    id,
    trim(regexp_replace(
      replace(replace(replace(replace(coalesce(name, ''), '&amp;', '&'), '&#039;', ''''), '&quot;', '"'), '&nbsp;', ' '),
      '<[^>]*>', ' ', 'g'
    )) AS clean_name,
    trim(regexp_replace(
      replace(replace(replace(replace(coalesce(short_name, ''), '&amp;', '&'), '&#039;', ''''), '&quot;', '"'), '&nbsp;', ' '),
      '<[^>]*>', ' ', 'g'
    )) AS clean_short_name,
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
      WHEN clean_name || raw_category ~* '(dental|medical|medicine|nursing|pharmacy|health|ayur|physiotherapy|homoeopath)' THEN 'Medical'
      WHEN clean_name || raw_category ~* '(management|business|commerce|mba|finance)' THEN 'Management'
      WHEN clean_name || raw_category ~* '(law|legal|judicial)' THEN 'Law'
      WHEN clean_name || raw_category ~* '(design|fashion|fine art|architecture)' THEN 'Design'
      WHEN clean_name || raw_category ~* '(engineering|technology|technical|polytechnic|\\miit\\M|\\mnit\\M|\\miiit\\M)' THEN 'Engineering'
      WHEN clean_name || raw_category ~* '(agriculture|horticulture|forestry|veterinary)' THEN 'Agriculture'
      WHEN clean_name || raw_category ~* '(science|research|iiser)' THEN 'Science'
      WHEN clean_name || raw_category ~* '(arts|humanities|language|social science)' THEN 'Arts & Humanities'
      WHEN clean_name || raw_category ~* '(education|teacher|training|b\\.ed)' THEN 'Education'
      WHEN clean_name || raw_category ~* '(hotel|hospitality|tourism)' THEN 'Hospitality'
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
  description = p.clean_name || ' is a ' ||
    lower(coalesce(nullif(p.college_type, ''), 'higher-education')) ||
    ' institution in ' ||
    coalesce(nullif(p.college_city, ''), nullif(p.college_location, ''), 'India') ||
    '. Use this profile to compare available courses, admission requirements, fee disclosures, campus facilities and student outcomes. Verify time-sensitive details in the latest institutional notice before applying.',
  page_summary = 'Quick answer: explore ' || p.clean_name ||
    ' courses, eligibility, admissions, fees, facilities and placement information, with clear points to verify before making a decision.',
  eligibility_criteria = '<h2>Who can apply?</h2><p>Eligibility depends on the chosen course and admission year. Check the required qualifying examination, subjects, minimum marks, entrance test or counselling route, reservation rules and document list in the latest admission notice.</p>',
  admission_process = '<h2>How admission works</h2><ol><li>Choose the exact course and intake year.</li><li>Confirm programme recognition and eligibility.</li><li>Check whether selection is through merit, counselling, an entrance examination or an institutional process.</li><li>Apply only through an authorised portal and keep the submission receipt.</li><li>Complete document verification and fee payment within the published schedule.</li></ol>',
  course_fee_content = CASE
    WHEN trim(coalesce(c.course_fee_content, '')) = '' THEN ''
    ELSE c.course_fee_content
  END,
  placement_content = CASE
    WHEN trim(coalesce(c.placement_content, '')) <> '' THEN c.placement_content
    ELSE '<h2>Placements and career support</h2><p>Where programme-level reports are available, compare the number of eligible and participating students, median outcomes, role profiles, internships and recruiter diversity. Do not judge outcomes only by the highest package.</p>'
  END,
  rankings_content = CASE
    WHEN trim(coalesce(c.rankings_content, '')) <> '' THEN c.rankings_content
    ELSE '<h2>Rankings and recognition</h2><p>Check the publisher, year, category and campus before relying on a ranking. Consider accreditation, curriculum, faculty, learning resources and student outcomes alongside rank.</p>'
  END,
  facilities_content = CASE
    WHEN trim(coalesce(c.facilities_content, '')) <> '' THEN c.facilities_content
    ELSE '<h2>Campus facilities</h2><p>Facilities can differ by campus and programme. Confirm laboratories, library access, hostels, accessibility, healthcare, sports, transport and safety arrangements directly with the institution.</p>'
  END,
  meta_title = left(p.clean_name || ': Courses, Admission, Fees and Placements', 70),
  meta_description = left('Explore ' || p.clean_name ||
    ' courses, eligibility, admissions, fee information, facilities, placements and the details students should verify before applying.', 160),
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
