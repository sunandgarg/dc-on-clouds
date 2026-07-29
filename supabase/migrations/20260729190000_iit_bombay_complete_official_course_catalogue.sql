-- Generated from data/college-official-enrichment/batch-002-course-catalogues.json
-- Replaces generic degree-family rows with a complete official course catalogue.
-- Images and logos are deliberately untouched. Unverified fees remain NULL.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE slug = 'iit-bombay') THEN
    RAISE EXCEPTION 'College slug not found: iit-bombay';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  related_courses = ARRAY['btech', 'bachelor-of-science-bsc', 'bdes', 'master-of-technology-mtech', 'msc', 'mba', 'ma', 'phd']::text[],
  courses_count = 84,
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://acad.iitb.ac.in/admissions/bachelors","https://acad.iitb.ac.in/admissions/masters/divisions","https://acad.iitb.ac.in/admissions/masters/msc","https://acad.iitb.ac.in/admissions/masters/mdes","https://acad.iitb.ac.in/admissions/masters/msbyresearch","https://acad.iitb.ac.in/admissions/research","https://acad.iitb.ac.in/admissions/fees-structure"],"course_catalogue_scope":"complete_advertised_programmes_and_specialisations","course_catalogue_checked_at":"2026-07-29","fee_verification":"official_2026_27_circular_found_but_amounts_not_mapped_by_programme_and_category","batch":"college-course-catalogue-002"}'::jsonb,
  data_clean_method = 'official_source',
  data_clean_state = 'verified',
  data_clean_audit_note = 'Complete advertised programme and specialisation catalogue verified from official 2026-27 academic pages in college-course-catalogue-002. Fees remain blank because the official circular varies by programme and student category.',
  data_quality_score = 92,
  data_verified_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = false,
  updated_at = now()
WHERE slug = 'iit-bombay';

DELETE FROM public.course_fees WHERE college_slug = 'iit-bombay';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('iit-bombay', 'btech-aerospace-engineering', 'BTech in Aerospace Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-chemical-engineering', 'BTech in Chemical Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-civil-engineering', 'BTech in Civil Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-computer-science-engineering', 'BTech in Computer Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-electrical-engineering', 'BTech in Electrical Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-environmental-science-engineering', 'BTech in Environmental Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-energy-science-engineering', 'BTech in Energy Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-industrial-engineering-operations-research', 'BTech in Industrial Engineering and Operations Research', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-mechanical-engineering', 'BTech in Mechanical Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-metallurgical-engineering-materials-science', 'BTech in Metallurgical Engineering and Materials Science', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-engineering-physics', 'BTech in Engineering Physics', NULL, NULL, '2026'),
  ('iit-bombay', 'btech-mtech-electrical-engineering', 'BTech and MTech Dual Degree in Electrical Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'bs-chemistry', 'BS in Chemistry', NULL, NULL, '2026'),
  ('iit-bombay', 'bs-economics', 'BS in Economics', NULL, NULL, '2026'),
  ('iit-bombay', 'bs-mathematics', 'BS in Mathematics', NULL, NULL, '2026'),
  ('iit-bombay', 'bs-applied-geophysics', 'BS in Applied Geophysics', NULL, NULL, '2026'),
  ('iit-bombay', 'bdes', 'Bachelor of Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-aerodynamics', 'MTech in Aerodynamics', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-dynamics-control', 'MTech in Dynamics and Control', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-aerospace-propulsion', 'MTech in Aerospace Propulsion', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-aerospace-structures', 'MTech in Aerospace Structures', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-biomedical-engineering', 'MTech in Biomedical Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-chemical-engineering', 'MTech in Chemical Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-transportation-systems-engineering', 'MTech in Transportation Systems Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-geotechnical-engineering', 'MTech in Geotechnical Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-water-resources-engineering', 'MTech in Water Resources Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-structural-engineering', 'MTech in Structural Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-ocean-engineering', 'MTech in Ocean Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-remote-sensing', 'MTech in Remote Sensing', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-construction-technology-management', 'MTech in Construction Technology and Management', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-computer-science-engineering', 'MTech in Computer Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-geoexploration', 'MTech in Geoexploration', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-petroleum-geoscience', 'MTech in Petroleum Geoscience', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-education-technology', 'MTech in Education Technology', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-communication-engineering', 'MTech in Communication Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-control-computing', 'MTech in Control and Computing', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-power-electronics-power-systems', 'MTech in Power Electronics and Power Systems', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-electronic-systems', 'MTech in Electronic Systems', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-integrated-circuit-systems', 'MTech in Integrated Circuit and Systems', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-solid-state-devices', 'MTech in Solid State Devices', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-energy-systems-engineering', 'MTech in Energy Systems Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-environmental-science-engineering', 'MTech in Environmental Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-geoinformatics-natural-resources-engineering', 'MTech in Geoinformatics and Natural Resources Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-industrial-engineering-operations-research', 'MTech in Industrial Engineering and Operations Research', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-thermal-fluids-engineering', 'MTech in Thermal and Fluids Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-design-engineering', 'MTech in Design Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-manufacturing-engineering', 'MTech in Manufacturing Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-materials-science', 'MTech in Materials Science', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-process-engineering', 'MTech in Process Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-steel-technology', 'MTech in Steel Technology', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-corrosion-science-engineering', 'MTech in Corrosion Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-materials-manufacturing-modeling', 'MTech in Materials, Manufacturing and Modeling', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-systems-control-engineering', 'MTech in Systems and Control Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'mtech-technology-development', 'MTech in Technology and Development', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-animation-design', 'MDes in Animation Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-communication-design', 'MDes in Communication Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-industrial-design', 'MDes in Industrial Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-interaction-design', 'MDes in Interaction Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-mobility-vehicle-design', 'MDes in Mobility and Vehicle Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-research-animation-design', 'MDes by Research in Animation Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-research-communication-design', 'MDes by Research in Communication Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-research-industrial-design', 'MDes by Research in Industrial Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-research-interaction-design', 'MDes by Research in Interaction Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mdes-research-mobility-vehicle-design', 'MDes by Research in Mobility and Vehicle Design', NULL, NULL, '2026'),
  ('iit-bombay', 'mba', 'Master of Business Administration', NULL, NULL, '2026'),
  ('iit-bombay', 'executive-mba', 'Executive Master of Business Administration', NULL, NULL, '2026'),
  ('iit-bombay', 'ma-phd-philosophy', 'MA and PhD Dual Degree in Philosophy', NULL, NULL, '2026'),
  ('iit-bombay', 'ma-by-research', 'Master of Arts by Research', NULL, NULL, '2026'),
  ('iit-bombay', 'master-public-policy', 'Master in Public Policy', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-applied-geology', 'MSc in Applied Geology', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-applied-geophysics', 'MSc in Applied Geophysics', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-applied-statistics-informatics', 'MSc in Applied Statistics and Informatics', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-biotechnology', 'MSc in Biotechnology', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-chemistry', 'MSc in Chemistry', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-operations-research', 'MSc in Operations Research', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-physics', 'MSc in Physics', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-phd-environmental-science-engineering', 'MSc and PhD Dual Degree in Environmental Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'msc-phd-energy-science-engineering', 'MSc and PhD Dual Degree in Energy Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'master-development-practice', 'Master in Development Practice', NULL, NULL, '2026'),
  ('iit-bombay', 'ms-research-computer-science-engineering', 'MS by Research in Computer Science and Engineering', NULL, NULL, '2026'),
  ('iit-bombay', 'ms-research-machine-intelligence-data-science', 'MS by Research in Machine Intelligence and Data Science', NULL, NULL, '2026'),
  ('iit-bombay', 'ms-research-digital-health', 'MS by Research in Digital Health', NULL, NULL, '2026'),
  ('iit-bombay', 'phd', 'Doctor of Philosophy', NULL, NULL, '2026'),
  ('iit-bombay', 'double-doctoral-degree', 'Double Doctoral Degree Programme', NULL, NULL, '2026');

NOTIFY pgrst, 'reload schema';
COMMIT;
