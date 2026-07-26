-- First deterministic 50-course structural cleanup.
-- Existing fee figures are not expanded or promoted without authentic evidence.

WITH target AS (
  SELECT
    id,
    trim(regexp_replace(coalesce(name, ''), '<[^>]*>', ' ', 'g')) AS clean_name,
    trim(regexp_replace(coalesce(full_name, name, ''), '<[^>]*>', ' ', 'g')) AS clean_full_name,
    trim(regexp_replace(coalesce(category, ''), '<[^>]*>', ' ', 'g')) AS raw_category,
    trim(regexp_replace(coalesce(level, ''), '<[^>]*>', ' ', 'g')) AS raw_level,
    nullif(trim(regexp_replace(
      replace(replace(replace(replace(coalesce(eligibility, ''), '&nbsp;', ' '), '&amp;', '&'), '&lt;', '<'), '&gt;', '>'),
      '<[^>]*>', ' ', 'g'
    )), '') AS clean_eligibility,
    nullif(trim(regexp_replace(coalesce(duration, ''), '<[^>]*>', ' ', 'g')), '') AS clean_duration
  FROM public.courses
  WHERE coalesce(data_clean_state, 'never_checked') IN ('never_checked', 'awaiting_review')
  ORDER BY name ASC, id ASC
  LIMIT 50
),
prepared AS (
  SELECT *,
    CASE
      WHEN clean_name || ' ' || raw_category ~* '(law|llb|llm|legal)' THEN 'Law'
      WHEN clean_name || ' ' || raw_category ~* '(design|fashion|film|acting|animation|fine art|photography)' THEN 'Design'
      WHEN clean_name || ' ' || raw_category ~* '(medical|medicine|nursing|pharmacy|physio|dental|health|ayur)' THEN 'Medical'
      WHEN clean_name || ' ' || raw_category ~* '(management|business|mba|bba|commerce|advertising|marketing|finance)' THEN 'Management'
      WHEN clean_name || ' ' || raw_category ~* '(engineering|technology|b\.?tech|m\.?tech|computer|data science|architecture)' THEN 'Engineering'
      WHEN clean_name || ' ' || raw_category ~* '(agriculture|horticulture|forestry)' THEN 'Agriculture'
      WHEN clean_name || ' ' || raw_category ~* '(science|physics|chemistry|mathematics|biology|actuarial)' THEN 'Science'
      WHEN clean_name || ' ' || raw_category ~* '(arts|humanities|history|language|literature)' THEN 'Arts & Humanities'
      ELSE 'General'
    END AS clean_category,
    CASE
      WHEN clean_name || ' ' || raw_level ~* '(ph\.?d|doctor|doctoral)' THEN 'Doctoral'
      WHEN clean_name || ' ' || raw_level ~* '(master|m\.?tech|m\.?sc|mba|llm|post.?graduate|pg )' THEN 'Postgraduate'
      WHEN clean_name || ' ' || raw_level ~* '(bachelor|b\.?tech|b\.?sc|bba|llb|under.?graduate|ug |diploma)' THEN 'Undergraduate'
      ELSE 'General'
    END AS clean_level
  FROM target
)
UPDATE public.courses c
SET
  name = p.clean_name,
  full_name = coalesce(nullif(p.clean_full_name, ''), p.clean_name),
  category = p.clean_category,
  categories = ARRAY[p.clean_category],
  domain = p.clean_category,
  level = p.clean_level,
  duration = coalesce(p.clean_duration, c.duration, ''),
  short_description = p.clean_name || ' course overview, eligibility, subjects, career scope and admission guidance.',
  description = p.clean_name || ' is a ' || lower(p.clean_level) || ' learning pathway in ' ||
    lower(p.clean_category) || '. The course can differ by institution in duration, curriculum, eligibility and assessment, so students should compare the exact programme—not only the course title—before applying.',
  eligibility = coalesce(
    left(p.clean_eligibility, 1600),
    'Eligibility depends on the programme level and institution. Confirm the required qualification, subjects, marks, entrance examination and category rules in the institution’s current admission notice.'
  ),
  page_summary = p.clean_name || ': course structure, eligibility, subjects, admission routes, career scope and institution-specific details in one concise guide.',
  about_content =
    '<h2>About ' || p.clean_name || '</h2><p>' || p.clean_name ||
    ' introduces the core knowledge and practical abilities used in ' || lower(p.clean_category) ||
    '. Programme structure varies across universities, so compare curriculum, teaching format, assessment and recognition before choosing a college.</p>',
  scope_content =
    '<h2>Career and higher-study scope</h2><p>Career outcomes depend on the student’s skills, projects, internships, location and institution—not the degree title alone. Review entry-level roles, required licences or certifications, postgraduate options and actual placement disclosures before deciding.</p>',
  subjects_content =
    '<h2>What students typically study</h2><p>The exact syllabus is institution-specific. It generally progresses from foundational concepts to applied subjects, projects, electives and practical work. Use the latest university syllabus for semester-level subjects and credits.</p>',
  admission_process =
    '<h2>Admission checklist</h2><ol><li>Confirm the precise programme level and eligibility.</li><li>Check whether admission uses merit, an entrance test or both.</li><li>Compare recognised institutions and current curricula.</li><li>Submit documents and fees only through an authorised portal.</li><li>Keep the confirmation page and follow counselling or interview updates.</li></ol>',
  placements_content =
    '<h2>Placements and outcomes</h2><p>Use programme-specific placement reports where available. Compare the number of participating students, median outcomes, role profiles, internship access and recruiter diversity instead of relying only on the highest package.</p>',
  fees_content = CASE
    WHEN trim(coalesce(c.fees_content, '')) = '' THEN ''
    ELSE c.fees_content
  END,
  meta_title = left(p.clean_name || ': Eligibility, Subjects, Scope and Admission', 70),
  meta_description = left(
    'Explore ' || p.clean_name ||
    ' eligibility, duration, subjects, admission routes, career scope and the key details to compare across institutions.',
    160
  ),
  meta_keywords = p.clean_name || ', eligibility, duration, subjects, syllabus, admission, career scope, colleges',
  data_last_checked_at = now(),
  data_quality_score = 65,
  data_clean_attempts = greatest(coalesce(c.data_clean_attempts, 0) + 1, 1),
  data_clean_successes = greatest(coalesce(c.data_clean_successes, 0) + 1, 1),
  data_clean_state = 'cleaned',
  updated_at = now()
FROM prepared p
WHERE c.id = p.id;
