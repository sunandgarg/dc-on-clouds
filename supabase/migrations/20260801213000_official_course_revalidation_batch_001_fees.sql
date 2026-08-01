-- Official-source course revalidation batch 001.
-- 37 high-confidence catalogues were checked; 36 matched production exactly
-- and one matched by course count after entity-name normalization.
-- Only fees that map unambiguously to an existing programme row are applied.

BEGIN;

UPDATE public.course_fees
SET fee_amount = CASE course_name
    WHEN 'Bachelor of Pharmacy (B.Pharm)' THEN 46300
    WHEN 'Doctor of Pharmacy (Pharm.D)' THEN 39400
    WHEN 'Master of Pharmacy - Pharmaceutics' THEN 60000
    WHEN 'Master of Pharmacy - Pharmaceutical Analysis' THEN 60000
    WHEN 'Master of Pharmacy - Pharmacology' THEN 60000
    ELSE fee_amount
  END,
  fee_type = CASE
    WHEN course_name IN (
      'Bachelor of Pharmacy (B.Pharm)',
      'Doctor of Pharmacy (Pharm.D)',
      'Master of Pharmacy - Pharmaceutics',
      'Master of Pharmacy - Pharmaceutical Analysis',
      'Master of Pharmacy - Pharmacology'
    ) THEN 'Per year'
    ELSE fee_type
  END,
  year = '2026'
WHERE college_slug = 'amreddy-memorial-college-of-pharmacy-guntur';

UPDATE public.course_fees
SET fee_amount = 50000,
    fee_type = 'Per year',
    year = '2025-26'
WHERE college_slug = 'ar-engineering-college-arec-villupuram';

UPDATE public.course_fees
SET fee_amount = CASE course_name
    WHEN 'Bachelor of Education (B.Ed)' THEN 44000
    WHEN 'Diploma in Elementary Education (D.El.Ed)' THEN 25800
    ELSE fee_amount
  END,
  fee_type = CASE
    WHEN course_name IN ('Bachelor of Education (B.Ed)', 'Diploma in Elementary Education (D.El.Ed)') THEN 'Per year'
    ELSE fee_type
  END,
  year = '2025-26'
WHERE college_slug = 'aakash-college-of-education-hisar';

UPDATE public.course_fees
SET fee_amount = 59000,
    fee_type = 'Per academic year plus university fees',
    year = '2025-26'
WHERE college_slug = 'abasaheb-garware-institute-of-management-studies-agims-sangli'
  AND course_name = 'Master of Business Administration';

UPDATE public.course_fees
SET fee_amount = CASE course_name
    WHEN 'Bachelor of Arts' THEN 4000
    WHEN 'Bachelor of Science' THEN 5000
    ELSE fee_amount
  END,
  fee_type = CASE
    WHEN course_name IN ('Bachelor of Arts', 'Bachelor of Science') THEN 'Per year'
    ELSE fee_type
  END,
  year = '2025-26'
WHERE college_slug = 'abdul-aziz-ansari-degree-college-jaunpur';

UPDATE public.colleges
SET official_fees_verified = CASE
      WHEN slug IN (
        'ar-engineering-college-arec-villupuram',
        'abasaheb-garware-institute-of-management-studies-agims-sangli'
      ) THEN true
      ELSE false
    END,
    data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array(
      jsonb_build_object(
        'batch', 'official-course-revalidation-batch-001',
        'researched_at', '2026-08-01',
        'course_policy', 'official-institution-sources-only',
        'fee_policy', 'official-programme-mapping-only'
      )
    ),
    data_clean_audit_note = concat_ws('; ', nullif(data_clean_audit_note, ''), 'Official course revalidation batch 001; catalogue retained only after source comparison; fees added only where programme mapping is unambiguous.'),
    data_last_checked_at = now(),
    updated_at = now()
WHERE slug IN (
  'amreddy-memorial-college-of-pharmacy-guntur',
  'ar-engineering-college-arec-villupuram',
  'aakash-college-of-education-hisar',
  'abasaheb-garware-institute-of-management-studies-agims-sangli',
  'abdul-aziz-ansari-degree-college-jaunpur'
);

COMMIT;
