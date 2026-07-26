-- Deterministic 100-record structural exam cleanup.
-- No dates, fees, rankings or eligibility facts are invented in this pass.

WITH target AS (
  SELECT
    id,
    trim(regexp_replace(coalesce(name, ''), '<[^>]*>', ' ', 'g')) AS clean_name,
    trim(regexp_replace(coalesce(full_name, name, ''), '<[^>]*>', ' ', 'g')) AS clean_full_name,
    coalesce(nullif(official_website, ''), nullif(website, '')) AS source_url,
    nullif(trim(regexp_replace(
      replace(replace(replace(replace(coalesce(eligibility, ''), '&nbsp;', ' '), '&amp;', '&'), '&lt;', '<'), '&gt;', '>'),
      '<[^>]*>', ' ', 'g'
    )), '') AS clean_eligibility
  FROM public.exams
  WHERE coalesce(data_clean_state, 'never_checked') IN ('never_checked', 'awaiting_review')
  ORDER BY name ASC, id ASC
  LIMIT 100
),
prepared AS (
  SELECT
    *,
    CASE
      WHEN clean_name ~* '(law|clat|llb|legal|judicial)' THEN 'Law'
      WHEN clean_name ~* '(design|fashion|film|television|fine art)' THEN 'Design'
      WHEN clean_name ~* '(medical|nursing|pharmacy|pharamcy|veterinary|aiims|neet|dental|ayush)' THEN 'Medical'
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
  exam_type = coalesce(nullif(trim(regexp_replace(e.exam_type, '<[^>]*>', ' ', 'g')), ''), lower(p.clean_category) || ' entrance or qualifying examination'),
  official_website = coalesce(nullif(e.official_website, ''), nullif(e.website, ''), ''),
  website = coalesce(nullif(e.website, ''), nullif(e.official_website, ''), ''),
  registration_url = CASE
    WHEN coalesce(e.registration_url, '') IN ('', '#')
      THEN coalesce(nullif(e.official_website, ''), nullif(e.website, ''), '#')
    ELSE e.registration_url
  END,
  eligibility = coalesce(
    p.clean_eligibility,
    'Eligibility varies by programme and admission cycle. Confirm the required qualification, subjects, marks, age rules and category conditions in the current notification.'
  ),
  description = p.clean_name || ' is an admission, eligibility or selection assessment in the ' ||
    lower(p.clean_category) || ' field. This guide keeps the practical information together: who can apply, how registration works, what the examination covers, where results appear and which official page should be checked for the current cycle.',
  page_summary = p.clean_name || ': eligibility, application steps, exam format, current dates, result access and official links in one concise guide.',
  summary_content =
    '<h2>Understanding ' || p.clean_name || '</h2><p>' || p.clean_name ||
    ' supports admission or candidate selection in its applicable programmes. Before relying on an older date, confirm that the conducting body has published a notification for the cycle you plan to enter.</p>' ||
    '<h2>Quick verification checklist</h2><ul><li>Official notification and conducting authority</li><li>Programme and category-specific eligibility</li><li>Application deadline and accepted payment method</li><li>Paper pattern, syllabus and marking rules</li><li>Admit card, result and counselling process</li></ul>',
  application_process =
    '<h2>How to approach the application</h2><ol><li>Read the current notification on the authorised website.</li><li>Match your qualification and documents with the programme-specific eligibility.</li><li>Register using a mobile number and email you can continue to access.</li><li>Review every field before payment and final submission.</li><li>Save the confirmation page and monitor the candidate login for updates.</li></ol>',
  result_content =
    '<h2>Result and admission follow-up</h2><p>Check the result only through the conducting body’s website or candidate login. A score or rank may be followed by counselling, document verification, an interview, a fitness test or a separate institutional application.</p>',
  meta_title = left(p.clean_name || ': Eligibility, Dates, Pattern and Result', 70),
  meta_description = left(
    'Explore ' || p.clean_name ||
    ' eligibility, application steps, exam pattern, important dates, result access and official links in a clear student-focused guide.',
    160
  ),
  meta_keywords = p.clean_name || ', eligibility, application form, exam dates, exam pattern, result, official website',
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
  data_clean_state = CASE WHEN p.likely_not_exam THEN 'needs_human_review' ELSE 'cleaned' END,
  updated_at = now()
FROM prepared AS p
WHERE e.id = p.id;
