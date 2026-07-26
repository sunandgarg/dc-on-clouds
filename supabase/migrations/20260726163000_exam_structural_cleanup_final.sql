-- Final structural pass over all remaining unchecked exam records.

WITH target AS (
  SELECT
    id,
    trim(regexp_replace(coalesce(name, ''), '<[^>]*>', ' ', 'g')) AS clean_name,
    trim(regexp_replace(coalesce(full_name, name, ''), '<[^>]*>', ' ', 'g')) AS clean_full_name,
    coalesce(nullif(official_website, ''), nullif(website, '')) AS source_url,
    nullif(trim(regexp_replace(coalesce(eligibility, ''), '<[^>]*>', ' ', 'g')), '') AS clean_eligibility
  FROM public.exams
  WHERE coalesce(data_clean_state, 'never_checked') IN ('never_checked', 'awaiting_review')
),
prepared AS (
  SELECT *,
    CASE
      WHEN clean_name ~* '(law|clat|llb|legal|judicial)' THEN 'Law'
      WHEN clean_name ~* '(design|fashion|film|television|fine art)' THEN 'Design'
      WHEN clean_name ~* '(medical|nursing|pharmacy|veterinary|aiims|neet|dental|ayush)' THEN 'Medical'
      WHEN clean_name ~* '(management|aptitude|business|mba|mat|cat|icet)' THEN 'Management'
      WHEN clean_name ~* '(engineering|polytechnic|technology|architecture|air force|aircraft|gate)' THEN 'Engineering'
      WHEN clean_name ~* '(agriculture|agricultural|horticulture)' THEN 'Agriculture'
      WHEN clean_name ~* '(research|eligibility test|net|science|teacher)' THEN 'Science'
      ELSE 'General'
    END AS clean_category,
    CASE
      WHEN clean_name ~* '(post.?graduate|pgcet|pgat|pg |pg$|llm|higher degree|research|doctoral)' THEN 'Postgraduate'
      WHEN clean_name ~* '(under.?graduate|ugat|ug |ug$|junior|polytechnic|diploma|law entrance)' THEN 'Undergraduate'
      ELSE 'General'
    END AS clean_level,
    (
      clean_name ~* '(university|college|corporation|institute|board)$'
      AND clean_name !~* '(test|exam|examination|admission|entrance|eligibility|recruitment)'
    ) AS likely_not_exam
  FROM target
)
UPDATE public.exams e
SET
  name = p.clean_name,
  full_name = coalesce(nullif(p.clean_full_name, ''), p.clean_name),
  short_name = CASE WHEN length(coalesce(nullif(e.short_name, ''), p.clean_name)) <= 32
    THEN coalesce(nullif(e.short_name, ''), p.clean_name)
    ELSE array_to_string((string_to_array(p.clean_name, ' '))[1:4], ' ') END,
  category = p.clean_category,
  categories = ARRAY[p.clean_category],
  level = p.clean_level,
  exam_type = coalesce(nullif(trim(regexp_replace(e.exam_type, '<[^>]*>', ' ', 'g')), ''), lower(p.clean_category) || ' entrance or qualifying examination'),
  official_website = coalesce(nullif(e.official_website, ''), nullif(e.website, ''), ''),
  website = coalesce(nullif(e.website, ''), nullif(e.official_website, ''), ''),
  registration_url = CASE WHEN coalesce(e.registration_url, '') IN ('', '#')
    THEN coalesce(nullif(e.official_website, ''), nullif(e.website, ''), '#') ELSE e.registration_url END,
  eligibility = coalesce(p.clean_eligibility, 'Eligibility varies by programme and admission cycle. Confirm qualifications, subjects, marks, age and category conditions in the current notification.'),
  description = p.clean_name || ' is an admission, eligibility or selection assessment in the ' || lower(p.clean_category) || ' field. Use this page to understand the application flow, exam format, result process and official verification points without treating an older schedule as current.',
  page_summary = p.clean_name || ': eligibility, application, pattern, dates, results and official links in a concise student guide.',
  summary_content = '<h2>About ' || p.clean_name || '</h2><p>' || p.clean_name || ' supports admission or candidate selection for its applicable programmes. Confirm the active admission cycle and conducting body before applying.</p><h2>What to verify</h2><ul><li>Current notification and deadline</li><li>Programme eligibility</li><li>Paper pattern and syllabus</li><li>Result and counselling process</li></ul>',
  application_process = '<h2>Application checklist</h2><ol><li>Read the current official notification.</li><li>Confirm programme-specific eligibility.</li><li>Register with accurate contact and academic details.</li><li>Upload the prescribed documents and review the form before payment.</li><li>Save the confirmation page and monitor the candidate login.</li></ol>',
  result_content = '<h2>Result and next steps</h2><p>Use the authorised candidate login for the result or score card. Qualification may still be followed by counselling, document verification, an interview or a separate institutional application.</p>',
  meta_title = left(p.clean_name || ': Eligibility, Dates, Pattern and Result', 70),
  meta_description = left('Check ' || p.clean_name || ' eligibility, application steps, exam format, current dates, result access and official links in a clear student guide.', 160),
  meta_keywords = p.clean_name || ', eligibility, application form, exam dates, exam pattern, result, official website',
  data_source_urls = CASE WHEN p.source_url ~ '^https?://' THEN jsonb_build_array(p.source_url) ELSE coalesce(e.data_source_urls, '[]'::jsonb) END,
  data_last_checked_at = now(),
  data_quality_score = CASE WHEN p.likely_not_exam THEN 20 WHEN p.source_url ~ '^https?://' THEN 72 ELSE 55 END,
  data_clean_attempts = greatest(coalesce(e.data_clean_attempts, 0) + 1, 1),
  data_clean_successes = CASE WHEN p.likely_not_exam THEN coalesce(e.data_clean_successes, 0) ELSE greatest(coalesce(e.data_clean_successes, 0) + 1, 1) END,
  data_clean_state = CASE WHEN p.likely_not_exam THEN 'needs_human_review' ELSE 'cleaned' END,
  updated_at = now()
FROM prepared p
WHERE e.id = p.id;
