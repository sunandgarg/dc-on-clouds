-- Resolve exact course mappings and remove one third-party course verification.
BEGIN;

DELETE FROM public.course_fees
WHERE college_slug IN (
  'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum',
  'adhiparasakthi-agricultural-college-vellore',
  'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy'
);

INSERT INTO public.course_fees (
  id,
  college_slug,
  course_slug,
  course_name,
  fee_amount,
  fee_type,
  year,
  created_at
)
SELECT
  gen_random_uuid(),
  mapping.college_slug,
  c.slug,
  c.name,
  NULL,
  NULL,
  '2026',
  now()
FROM (
  VALUES
    ('acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum', 'bachelor-of-ayurveda-medical-and-surgery-bams'),
    ('adhiparasakthi-agricultural-college-vellore', 'bsc-agriculture')
) AS mapping(college_slug, course_slug)
JOIN public.courses c ON c.slug = mapping.course_slug;

UPDATE public.colleges c
SET related_courses = CASE c.slug
      WHEN 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum' THEN ARRAY['bachelor-of-ayurveda-medical-and-surgery-bams']::text[]
      WHEN 'adhiparasakthi-agricultural-college-vellore' THEN ARRAY['bsc-agriculture']::text[]
    END,
    courses_count = 1,
    official_courses_verified = true,
    official_fees_verified = false,
    course_fee_content = CASE c.slug
      WHEN 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum' THEN 'The official college course page confirms the B.A.M.S. degree with a stated duration of four and a half academic years plus one year of internship. The fee is not shown because a current official programme-level fee schedule was not verified.'
      WHEN 'adhiparasakthi-agricultural-college-vellore' THEN 'The official Tamil Nadu Agricultural University affiliated-college material confirms the B.Sc. Agriculture programme at Adhiparasakthi Agricultural College. The fee is not shown because a current official programme-level fee schedule was not verified.'
    END,
    official_source_url = CASE c.slug
      WHEN 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum' THEN 'https://www.lesayurvediccollege.com/ug-bams'
      WHEN 'adhiparasakthi-agricultural-college-vellore' THEN 'https://ucanapply.s3.ap-southeast-1.amazonaws.com/TNAU-UG-4th.pdf'
    END,
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || jsonb_build_array(
      jsonb_build_object(
        'source', CASE c.slug
          WHEN 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum' THEN 'https://www.lesayurvediccollege.com/ug-bams'
          WHEN 'adhiparasakthi-agricultural-college-vellore' THEN 'https://ucanapply.s3.ap-southeast-1.amazonaws.com/TNAU-UG-4th.pdf'
        END,
        'type', 'official_courses'
      )
    ),
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug IN (
  'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum',
  'adhiparasakthi-agricultural-college-vellore'
);

UPDATE public.colleges
SET related_courses = ARRAY[]::text[],
    courses_count = 0,
    official_courses_verified = false,
    official_fees_verified = false,
    official_source_url = NULL,
    course_fee_content = 'Check the official college website for current courses and fees.',
    requires_official_source_refresh = true,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE slug = 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy';

UPDATE public.college_editorial_completion_queue
SET source_status = 'verified',
    course_status = 'verified',
    fee_status = 'pending',
    last_audited_at = now(),
    updated_at = now()
WHERE college_slug IN (
  'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum',
  'adhiparasakthi-agricultural-college-vellore'
);

UPDATE public.college_editorial_completion_queue
SET source_status = 'pending',
    course_status = 'pending',
    fee_status = 'pending',
    last_audited_at = now(),
    updated_at = now()
WHERE college_slug = 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy';

COMMIT;
