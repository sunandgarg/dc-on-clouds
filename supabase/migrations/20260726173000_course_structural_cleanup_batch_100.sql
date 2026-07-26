-- Second deterministic course cleanup: next 100 pending records.

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
  LIMIT 100
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
  description = p.clean_name || ' is a ' || lower(p.clean_level) || ' learning pathway in ' || lower(p.clean_category) ||
    '. Duration, curriculum, eligibility and assessment can vary by institution, so compare the exact programme structure before applying.',
  eligibility = coalesce(left(p.clean_eligibility, 1600), 'Eligibility depends on programme level and institution. Confirm qualifications, required subjects, marks, entrance tests and category rules in the current admission notice.'),
  page_summary = p.clean_name || ': structure, eligibility, subjects, admission routes, career scope and institution-specific details.',
  about_content = '<h2>About ' || p.clean_name || '</h2><p>' || p.clean_name || ' develops foundational and applied knowledge in ' || lower(p.clean_category) || '. Compare current curricula, learning format, assessment and recognition across institutions.</p>',
  scope_content = '<h2>Career and higher-study scope</h2><p>Outcomes depend on skills, projects, internships, location and institution. Compare realistic entry roles, required licences or certifications, postgraduate pathways and programme-level placement disclosures.</p>',
  subjects_content = '<h2>Subjects and learning structure</h2><p>The syllabus normally moves from foundations to applied subjects, electives, practical work and projects. Use the latest university syllabus for exact semester subjects and credits.</p>',
  admission_process = '<h2>Admission checklist</h2><ol><li>Confirm the exact programme and eligibility.</li><li>Check whether selection uses merit, an entrance test or both.</li><li>Compare recognised institutions and current curricula.</li><li>Submit documents and fees only through authorised channels.</li><li>Follow counselling or interview updates.</li></ol>',
  placements_content = '<h2>Placements and outcomes</h2><p>Compare median outcomes, participating students, role profiles, internships and recruiter diversity. The highest package alone does not describe the typical student outcome.</p>',
  meta_title = left(p.clean_name || ': Eligibility, Subjects, Scope and Admission', 70),
  meta_description = left('Explore ' || p.clean_name || ' eligibility, duration, subjects, admission routes, career scope and details to compare across institutions.', 160),
  meta_keywords = p.clean_name || ', eligibility, duration, subjects, syllabus, admission, career scope, colleges',
  data_last_checked_at = now(),
  data_quality_score = 65,
  data_clean_attempts = greatest(coalesce(c.data_clean_attempts, 0) + 1, 1),
  data_clean_successes = greatest(coalesce(c.data_clean_successes, 0) + 1, 1),
  data_clean_state = 'cleaned',
  updated_at = now()
FROM prepared p
WHERE c.id = p.id;
