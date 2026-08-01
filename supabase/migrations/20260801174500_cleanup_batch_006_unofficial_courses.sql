-- Cleanup course surfaces for college-humanized-content-batch-006.
-- Rule: college courses must come only from an official/institution source.
-- If official course catalogue is not verified, keep college courses blank.
BEGIN;

WITH targets AS (
  SELECT slug
  FROM public.colleges
  WHERE data_source_urls @> '[{"batch":"college-humanized-content-batch-006"}]'::jsonb
    AND COALESCE(official_courses_verified, false) = false
)
DELETE FROM public.course_fees cf
USING targets t
WHERE cf.college_slug = t.slug;

WITH targets AS (
  SELECT id, slug
  FROM public.colleges
  WHERE data_source_urls @> '[{"batch":"college-humanized-content-batch-006"}]'::jsonb
    AND COALESCE(official_courses_verified, false) = false
)
UPDATE public.colleges c
SET
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  course_fee_content = c.name || ' course list is intentionally blank because a complete official course catalogue has not been verified yet. DekhoCampus will add courses only when they are confirmed from the institution website, official admission notice, statutory disclosure or another recognised official source. Fees are not shown until programme, year, quota and category are mapped clearly.',
  data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || jsonb_build_array(
    jsonb_build_object(
      'batch', 'college-humanized-content-batch-006-course-cleanup',
      'researched_at', '2026-08-01',
      'course_policy', 'blank_courses_unless_official_catalogue_verified',
      'fee_policy', 'no_fee_row_without_official_course_mapping'
    )
  ),
  data_clean_audit_note = 'college-humanized-content-batch-006-course-cleanup; cleared unofficial course links and course-fee rows; course list stays blank until official catalogue verification.',
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
FROM targets t
WHERE c.id = t.id
  AND c.slug = t.slug;

NOTIFY pgrst, 'reload schema';
COMMIT;
