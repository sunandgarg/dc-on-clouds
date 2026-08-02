-- Deterministic 50-record structural exam cleanup.
--
-- This pass removes imported HTML/JSON noise, normalises classification and
-- creates concise reader-first metadata without inventing dates, fees or
-- eligibility. It deliberately keeps evidence quality below fully curated
-- records. Obvious non-exam imports are flagged for human review.

WITH target AS (
  SELECT
    id,
    trim(regexp_replace(coalesce(name, ''), '<[^>]*>', ' ', 'g')) AS clean_name,
    trim(regexp_replace(coalesce(full_name, name, ''), '<[^>]*>', ' ', 'g')) AS clean_full_name,
    coalesce(nullif(official_website, ''), nullif(website, '')) AS source_url,
    nullif(trim(regexp_replace(
      replace(replace(replace(replace(coalesce(eligibility, ''), '&nbsp;', ' '), '&amp;', '&'), '&lt;', '<'), '&gt;', '>'),
      '<[^>]*>', ' ', 'g'
    )), '') AS clean_eligibility,
    mode,
    duration,
    application_mode,
    data_verified_at
  FROM public.exams
  WHERE coalesce(data_clean_state, 'never_checked') IN ('never_checked', 'awaiting_review')
  ORDER BY name ASC, id ASC
  LIMIT 50
),
prepared AS (
  SELECT
    *,
    CASE
      WHEN clean_name ~* '(law|clat|llb|legal)' THEN 'Law'
      WHEN clean_name ~* '(design|fashion|film|television)' THEN 'Design'
      WHEN clean_name ~* '(medical|nursing|pharmacy|pharamcy|veterinary|aiims|neet)' THEN 'Medical'
      WHEN clean_name ~* '(management|aptitude test|cat|mat|business|icet)' THEN 'Management'
      WHEN clean_name ~* '(engineering|polytechnic|technology|air force|aircraft|architecture|gate)' THEN 'Engineering'
      WHEN clean_name ~* '(agriculture|agricultural)' THEN 'Agriculture'
      WHEN clean_name ~* '(research|eligibility test|net|science)' THEN 'Science'
      ELSE 'General'
    END AS clean_category,
    CASE
      WHEN clean_name ~* '(post.?graduate|pgcet|pgat|pg |pg$|llm|higher degree|research)' THEN 'Postgraduate'
      WHEN clean_name ~* '(under.?graduate|ugat|ug |ug$|junior college|polytechnic|law entrance)' THEN 'Undergraduate'
      ELSE 'General'
    END AS clean_level,
    clean_name IN (
      'Babasaheb Bhimrao Ambedkar University',
      'Banda University of Agriculture and Technology',
      'Andhra Pradesh Road Development Corporation',
      'Dr. B.R.Ambedkar Open University'
    ) AS likely_not_exam
  FROM target
)
UPDATE public.exams AS e
SET
  name = p.clean_name,
  full_name = coalesce(nullif(p.clean_full_name, ''), p.clean_name),
  short_name = CASE
    WHEN length(coalesce(nullif(e.short_name, ''), p.clean_name)) <= 32
      THEN coalesce(nullif(e.short_name, ''), p.clean_name)
    ELSE array_to_string((string_to_array(p.clean_name, ' '))[1:4], ' ')
  END,
  category = p.clean_category,
  categories = ARRAY[p.clean_category],
  level = p.clean_level,
  exam_type = coalesce(nullif(e.exam_type, ''), lower(p.clean_category) || ' entrance or qualifying examination'),
  official_website = coalesce(nullif(e.official_website, ''), nullif(e.website, ''), ''),
  website = coalesce(nullif(e.website, ''), nullif(e.official_website, ''), ''),
  registration_url = CASE
    WHEN coalesce(e.registration_url, '') IN ('', '#')
      THEN coalesce(nullif(e.official_website, ''), nullif(e.website, ''), '#')
    ELSE e.registration_url
  END,
  eligibility = coalesce(
    p.clean_eligibility,
    'Eligibility depends on the programme and admission cycle. Check the conducting body’s current notification before applying.'
  ),
  description = p.clean_name || ' is used for admission, eligibility or candidate selection in its applicable programmes. This page organises the key information students usually need-eligibility, application steps, exam format, dates and result access-without treating an old schedule as current. Always confirm cycle-specific details on the conducting body’s website.',
  page_summary = p.clean_name || ': a concise guide to eligibility, application, exam format, important dates, results and the official source.',
  summary_content =
    '<h2>About ' || p.clean_name || '</h2><p>' ||
    p.clean_name || ' is an admission or qualifying assessment for its relevant programme area. Start by checking whether the examination is active for the current admission cycle, because names, schedules and participating institutions can change.</p>' ||
    '<h2>What students should verify</h2><ul><li>Current notification and application window</li><li>Programme-specific eligibility and accepted qualifications</li><li>Exam mode, syllabus and marking rules</li><li>Admit-card, answer-key, result and counselling links</li></ul>',
  application_process = CASE
    WHEN length(trim(coalesce(e.application_process, ''))) >= 80
      THEN regexp_replace(e.application_process, '<script[^>]*>.*?</script>', '', 'gis')
    ELSE '<h2>Application checklist</h2><ol><li>Open the conducting body’s current notification.</li><li>Confirm eligibility for the intended programme.</li><li>Register with accurate contact and academic details.</li><li>Upload the prescribed documents and pay only through the authorised portal.</li><li>Save the confirmation page and monitor the official login for later updates.</li></ol>'
  END,
  result_content = CASE
    WHEN length(trim(coalesce(e.result_content, ''))) >= 60
      THEN regexp_replace(e.result_content, '<script[^>]*>.*?</script>', '', 'gis')
    ELSE '<h2>Result and next steps</h2><p>Use the official candidate login for the result or score card. A qualifying score may still require counselling, document verification, an interview or a separate institutional application.</p>'
  END,
  meta_title = left(p.clean_name || ': Eligibility, Dates, Application and Result', 70),
  meta_description = left(
    'Understand ' || p.clean_name ||
    ' eligibility, application steps, exam format, important dates, result access and the official source before applying.',
    160
  ),
  meta_keywords = p.clean_name || ', eligibility, application, exam dates, exam pattern, result, official website',
  data_source_urls = CASE
    WHEN p.source_url ~ '^https?://' THEN jsonb_build_array(p.source_url)
    ELSE coalesce(e.data_source_urls, '[]'::jsonb)
  END,
  data_last_checked_at = now(),
  data_quality_score = CASE
    WHEN p.likely_not_exam THEN 20
    WHEN p.source_url ~ '^https?://' THEN 72
    ELSE 55
  END,
  data_clean_attempts = greatest(coalesce(e.data_clean_attempts, 0) + 1, 1),
  data_clean_successes = CASE
    WHEN p.likely_not_exam THEN coalesce(e.data_clean_successes, 0)
    ELSE greatest(coalesce(e.data_clean_successes, 0) + 1, 1)
  END,
  data_clean_state = CASE
    WHEN p.likely_not_exam THEN 'needs_human_review'
    ELSE 'cleaned'
  END,
  updated_at = now()
FROM prepared AS p
WHERE e.id = p.id;
