-- Correct the only remaining in-scope ranking claim without stored evidence.
-- Course and fee rows remain withheld until the official catalogue is mapped.

BEGIN;

UPDATE public.colleges c
SET
  official_website = 'https://www.annauniv.edu/',
  official_source_url = 'https://www.annauniv.edu/courses/',
  ranking = 'NIRF 2025: #2 State Public University, #20 University, #9 Innovation',
  rankings_content = 'Anna University is ranked 2nd among State Public Universities, 20th among Universities and 9th for Innovation in the Government of India NIRF 2025 tables. These are separate category-specific positions and should not be presented as one interchangeable overall rank.',
  tags = ARRAY['Engineering', 'Government', 'Higher Education', 'Chennai', 'Tamil Nadu', 'NIRF 2025 State Public University #2', 'NIRF 2025 University #20', 'NIRF 2025 Innovation #9']::text[],
  data_source_urls = CASE
    WHEN COALESCE(c.data_source_urls, '[]'::jsonb)::text LIKE '%STATEPUBLICUNIVERSITYRanking.html%'
      THEN COALESCE(c.data_source_urls, '[]'::jsonb)
    ELSE COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.annauniv.edu/courses/","type":"official_course_catalogue_pending_mapping"},{"source":"https://www.nirfindia.org/Rankings/2025/STATEPUBLICUNIVERSITYRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/InnovationRanking.html","type":"official_ranking"}]'::jsonb
  END,
  editorial_source_tier = 'official',
  requires_official_source_refresh = true,
  updated_at = now()
WHERE c.slug = 'anna-university';

UPDATE public.colleges c
SET
  editorial_last_evidence_check_at = now(),
  editorial_readiness_failures = array_remove(ARRAY[
    CASE WHEN COALESCE(c.editorial_word_count, 0) < 6000 THEN 'content_below_6000_words' END,
    CASE WHEN COALESCE(c.editorial_word_count, 0) > 9000 THEN 'content_above_9000_words' END,
    CASE WHEN COALESCE(c.editorial_module_count, 0) < 14 THEN 'fewer_than_14_editorial_modules' END,
    CASE WHEN COALESCE(c.official_source_url, '') = '' THEN 'official_source_research_pending' END,
    CASE WHEN COALESCE(array_length(c.related_courses, 1), 0)
      + COALESCE(array_length(c.related_exams, 1), 0) = 0
      THEN 'record_level_internal_links_pending' END,
    CASE WHEN NOT COALESCE(c.editorial_human_reviewed, false) THEN 'human_editor_review_pending' END
  ]::text[], NULL)
WHERE c.slug = 'anna-university';

UPDATE public.college_editorial_completion_queue q
SET
  source_status = 'official_source_linked',
  missing_requirements = c.editorial_readiness_failures,
  last_audited_at = now(),
  updated_at = now()
FROM public.colleges c
WHERE q.college_slug = c.slug
  AND c.slug = 'anna-university';

COMMIT;
