-- Remove every course and fee surface from cleaned colleges that has not been
-- verified against an official institutional source. The frontend uses the
-- same flag as a hard display gate.

WITH unverified_cleaned AS (
  SELECT slug
  FROM public.colleges
  WHERE data_clean_method IN ('source_review_humanized', 'official_source_content')
    AND COALESCE(official_courses_verified, false) = false
)
DELETE FROM public.course_fees AS cf
USING unverified_cleaned AS uc
WHERE cf.college_slug = uc.slug;

UPDATE public.colleges
SET
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  fees = '',
  course_fee_content = 'Check the official college website for current courses and fees.',
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE data_clean_method IN ('source_review_humanized', 'official_source_content')
  AND COALESCE(official_courses_verified, false) = false;
