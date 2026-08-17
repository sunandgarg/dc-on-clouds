-- Generated from the three reviewed next-50 research manifests.
-- Images and logos are intentionally untouched.
-- Fees remain NULL in this pass.
BEGIN;

DO $preflight$
DECLARE
  requested_slug text;
  matches integer;
BEGIN
  FOREACH requested_slug IN ARRAY ARRAY[
    'a-b-shetty-memorial-institute-of-dental-sciences-absmids-mangalore',
    'a-radiant-institute-of-management-and-technology-arimt-meerut',
    'a-d-patel-institute-of-technology-adit-vallabh-vidyanagar',
    'a-k-choudhury-school-of-information-technology-kolkata',
    'a-p-shah-institute-of-technology-apsit-thane',
    'a-v-patil-degree-college-of-arts-science-and-commerce-gulbarga',
    'acpm-dental-college-dhule',
    'acs-medical-college-and-hospital-chennai',
    'adm-college-for-women-admc-nagapattinam',
    'ag-amp-sg-siddhartha-degree-college-of-arts-and-science-krishna',
    'ag-college-of-education-coimbatore',
    'aj-college-of-science-and-technology-thonnakkal-thiruvananthapuram',
    'aj-institute-of-dental-sciences-mangalore',
    'ajk-mass-communication-research-centre-new-delhi',
    'akd-dharmaraja-college-for-women-rajapalayam',
    'akg-memorial-co-operative-college-of-nursing-kannur',
    'akk-new-law-academy-pune',
    'akt-memorial-college-of-education-villupuram',
    'am-college-gaya',
    'am-shaikh-homoeopathic-medical-college-asmc-belgaum',
    'ame039s-dental-college-and-hospital-raichur',
    'amreddy-memorial-college-of-pharmacy-guntur',
    'apc-mahalaxmi-college-for-women-thoothukudi',
    'ar-college-of-engineering-and-technology-arcet-tirunelveli',
    'ar-engineering-college-arec-villupuram',
    'asl-pauls-college-of-engineering-amp-technology-kinathukkadavu-aslpcet-coimbatore',
    'av-college-of-arts-science-and-commerce-av-college-hyderabad',
    'avc-college-of-engineering-avcce-nagapattinam',
    'awh-college-of-education-calicut',
    'aadhi-bhagawan-college-of-pharmacy-chennai',
    'aadinath-mahila-teacher039s-training-college-udaipur',
    'aakash-college-of-education-fatehabad',
    'aakash-college-of-education-hisar',
    'aakash-institute-of-business-management-aibm-mallathalli-bangalore',
    'aakashline-institute-new-delhi',
    'aakson-institute-for-management-studies-aims-bangalore',
    'aalim-muhammed-salegh-academy-of-architecture-chennai',
    'aalim-muhammed-salegh-college-of-engineering-aalimec-chennai',
    'aarupadai-veedu-institute-of-technology-avit-chennai',
    'aarupadai-veedu-medical-college-avmc-pondicherry',
    'aasee-college-of-education-karur',
    'aashlar-business-school-abs-mathura',
    'aayojan-school-of-architecture-asa-jaipur',
    'abacus-institute-of-computer-applications-aica-hadapsar-pune',
    'abacus-institute-of-engineering-and-management-hooghly',
    'abasaheb-garware-institute-of-management-studies-agims-sangli',
    'abasaheb-marathe-arts-and-new-commerce-science-college-ratnagiri',
    'abasaheb-parvekar-mahavidyalaya-yavatmal',
    'abdul-aziz-ansari-degree-college-jaunpur',
    'abdul-razak-degree-college-ardc-jyotiba-phule-nagar'
  ]::text[]
  LOOP
    SELECT count(*) INTO matches
    FROM public.colleges
    WHERE slug = requested_slug;
    IF matches <> 1 THEN
      RAISE EXCEPTION 'Expected exactly one production college slug %, found %', requested_slug, matches;
    END IF;
  END LOOP;
END
$preflight$;


UPDATE public.colleges
SET
  official_website = 'https://nitte.edu.in/absmids/',
  official_source_url = 'https://nitte.edu.in/absmids/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://nitte.edu.in/absmids/","https://nitte.edu.in/absmids/admissions.php"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 11,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'a-b-shetty-memorial-institute-of-dental-sciences-absmids-mangalore';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'a-b-shetty-memorial-institute-of-dental-sciences-absmids-mangalore'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'a-b-shetty-memorial-institute-of-dental-sciences-absmids-mangalore'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bds-bachelor-of-dental-surgery', 'BDS - Bachelor of Dental Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-conservative-dentistry-and-endodontics', 'MDS Conservative Dentistry and Endodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-oral-and-maxillofacial-pathology-and-oral-microbiology', 'MDS Oral and Maxillofacial Pathology and Oral Microbiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-oral-and-maxillofacial-surgery', 'MDS Oral and Maxillofacial Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-oral-medicine-and-radiology', 'MDS Oral Medicine and Radiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-orthodontics-and-dentofacial-orthopaedics', 'MDS Orthodontics and Dentofacial Orthopaedics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-paediatric-and-preventive-dentistry', 'MDS Paediatric and Preventive Dentistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-periodontology', 'MDS Periodontology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-prosthodontics-and-crown-and-bridge', 'MDS Prosthodontics and Crown and Bridge', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fellowship-programme-in-cleft-lip-and-palate', 'Fellowship Programme in Cleft Lip and Palate', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fellowship-programme-in-oral-implantology', 'Fellowship Programme in Oral Implantology', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://arimtmeerut.com/',
  official_source_url = 'https://arimtmeerut.com/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://arimtmeerut.com/","https://www.collegebatch.com/10601-a-radiant-institute-of-management-and-technology-in-meerut-fs05"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. The official domain does not return a crawlable course catalogue. The current secondary listing supports these four undergraduate programmes. Keep requires_official_source_refresh set to true.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'a-radiant-institute-of-management-and-technology-arimt-meerut';


UPDATE public.colleges
SET
  official_website = 'https://adit.ac.in/',
  official_source_url = 'https://adit.ac.in/programs.php',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://adit.ac.in/programs.php"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 14,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'a-d-patel-institute-of-technology-adit-vallabh-vidyanagar';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'a-d-patel-institute-of-technology-adit-vallabh-vidyanagar'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'a-d-patel-institute-of-technology-adit-vallabh-vidyanagar'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-tech-artificial-intelligence-and-data-science', 'B.Tech Artificial Intelligence and Data Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-automobile-engineering', 'B.Tech Automobile Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-computer-engineering', 'B.Tech Computer Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-computer-science-and-design', 'B.Tech Computer Science and Design', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-dairy-technology', 'B.Tech Dairy Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-electrical-engineering', 'B.Tech Electrical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-food-processing-technology', 'B.Tech Food Processing Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-information-technology', 'B.Tech Information Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-tech-food-technology', 'M.Tech Food Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-tech-artificial-intelligence', 'M.Tech Artificial Intelligence', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-tech-mechanical-engineering', 'M.Tech Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.caluniv.ac.in/',
  official_source_url = 'https://www.caluniv.ac.in/admission/FourYearBTech.pdf',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.caluniv.ac.in/admission/FourYearBTech.pdf","https://www.caluniv.ac.in/news/MTech28-5-19.pdf","https://www.caluniv.ac.in/admission/phd_akc_31_3_21.pdf"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. All programmes are documented by the University of Calcutta, but the indexed notices span multiple admission years. Current intake should be checked before clearing the official refresh flag.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'a-k-choudhury-school-of-information-technology-kolkata';


UPDATE public.colleges
SET
  official_website = 'https://www.apsit.edu.in/',
  official_source_url = 'https://www.apsit.edu.in/index.php/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.apsit.edu.in/index.php/","https://www.apsit.edu.in/sites/default/files/2025-02/Application%20Report%20PART1.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 6,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'a-p-shah-institute-of-technology-apsit-thane';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'a-p-shah-institute-of-technology-apsit-thane'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'a-p-shah-institute-of-technology-apsit-thane'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-e-civil-engineering', 'B.E. Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-mechanical-engineering', 'B.E. Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-engineering', 'B.E. Computer Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-information-technology', 'B.E. Information Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering-artificial-intelligence-and-machine-learning', 'B.E. Computer Science and Engineering (Artificial Intelligence and Machine Learning)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering-data-science', 'B.E. Computer Science and Engineering (Data Science)', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  
  official_source_url = 'https://universitykart.com/university/universitydetails/av-patil-degree-college-of-arts-science-and-commerce-gulbarga',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://universitykart.com/university/universitydetails/av-patil-degree-college-of-arts-science-and-commerce-gulbarga"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. No official institute course page was found. Treat this as a candidate catalogue and keep requires_official_source_refresh set to true.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'a-v-patil-degree-college-of-arts-science-and-commerce-gulbarga';


UPDATE public.colleges
SET
  official_website = 'https://acpmdental.com/',
  official_source_url = 'https://acpmdental.com/college/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://acpmdental.com/college/","https://acpmdental.com/wp-content/uploads/2023/08/MDS-2023-24.pdf","https://acpmdental.com/wp-content/uploads/2024/07/MDS.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 9,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'acpm-dental-college-dhule';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'acpm-dental-college-dhule'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'acpm-dental-college-dhule'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-dental-surgery-bds', 'Bachelor of Dental Surgery (BDS)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-prosthodontics', 'MDS Prosthodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-periodontology', 'MDS Periodontology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-oral-and-maxillofacial-surgery', 'MDS Oral and Maxillofacial Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-conservative-dentistry-and-endodontics', 'MDS Conservative Dentistry and Endodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-orthodontics', 'MDS Orthodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-pediatric-dentistry', 'MDS Pediatric Dentistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-public-health-dentistry', 'MDS Public Health Dentistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-dentistry', 'Ph.D Dentistry', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://acsmch.ac.in/',
  official_source_url = 'https://acsmch.ac.in/admissions/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://acsmch.ac.in/admissions/","https://acsmch.ac.in/pg-md-ms/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 22,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'acs-medical-college-and-hospital-chennai';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'acs-medical-college-and-hospital-chennai'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'acs-medical-college-and-hospital-chennai'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'mbbs', 'MBBS', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-anaesthesiology', 'MD Anaesthesiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-general-medicine', 'MD General Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ms-otorhinolaryngology-ent', 'MS Otorhinolaryngology (ENT)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ms-ophthalmology', 'MS Ophthalmology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-paediatrics', 'MD Paediatrics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-radiodiagnosis', 'MD Radiodiagnosis', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-dermatology', 'MD Dermatology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ms-general-surgery', 'MS General Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ms-obstetrics-and-gynaecology', 'MS Obstetrics and Gynaecology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ms-orthopaedics', 'MS Orthopaedics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-psychiatry', 'MD Psychiatry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-respiratory-medicine', 'MD Respiratory Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-emergency-medicine', 'MD Emergency Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-anatomy', 'MD Anatomy', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-biochemistry', 'MD Biochemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-forensic-medicine', 'MD Forensic Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-microbiology', 'MD Microbiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-pathology', 'MD Pathology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-pharmacology', 'MD Pharmacology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-physiology', 'MD Physiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'md-community-medicine', 'MD Community Medicine', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://adjadmc.ac.in/',
  official_source_url = 'https://adjadmc.ac.in/syllabi.php',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://adjadmc.ac.in/syllabi.php"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 24,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'adm-college-for-women-admc-nagapattinam';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'adm-college-for-women-admc-nagapattinam'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'adm-college-for-women-admc-nagapattinam'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-a-tamil', 'B.A. Tamil', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-economics', 'B.A. Economics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-english', 'B.A. English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-history', 'B.A. History', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com', 'B.Com', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bba', 'BBA', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bca', 'BCA', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-biochemistry', 'B.Sc Biochemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-botany', 'B.Sc Botany', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-geology', 'B.Sc Geology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics', 'B.Sc Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-physics', 'B.Sc Physics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-zoology', 'B.Sc Zoology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-chemistry', 'B.Sc Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-computer-science', 'B.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-information-technology', 'B.Sc Information Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-mathematics', 'M.Sc Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-zoology', 'M.Sc Zoology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-economics', 'M.A. Economics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-history', 'M.A. History', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-com', 'M.Com', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-computer-science', 'M.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-chemistry', 'M.Sc Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-physics', 'M.Sc Physics', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.agsgsc.edu.in/',
  official_source_url = 'https://www.agsgsc.edu.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.agsgsc.edu.in/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 13,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'ag-amp-sg-siddhartha-degree-college-of-arts-and-science-krishna';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'ag-amp-sg-siddhartha-degree-college-of-arts-and-science-krishna'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'ag-amp-sg-siddhartha-degree-college-of-arts-and-science-krishna'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-a-honours-political-science', 'B.A. Honours Political Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com-honours-general', 'B.Com Honours General', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com-honours-computer-applications', 'B.Com Honours Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-honours-mathematics', 'B.Sc Honours Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-honours-physics', 'B.Sc Honours Physics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-honours-chemistry', 'B.Sc Honours Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-honours-botany', 'B.Sc Honours Botany', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-honours-artificial-intelligence', 'B.Sc Honours Artificial Intelligence', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-honours-aquaculture', 'B.Sc Honours Aquaculture', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-honours-computer-science', 'B.Sc Honours Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bca-honours', 'BCA Honours', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-organic-chemistry', 'M.Sc Organic Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-computer-science', 'M.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://agbedcollege.com/',
  official_source_url = 'https://agbedcollege.com/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://agbedcollege.com/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 9,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'ag-college-of-education-coimbatore';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'ag-college-of-education-coimbatore'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'ag-college-of-education-coimbatore'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-ed-tamil', 'B.Ed Tamil', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-english', 'B.Ed English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-mathematics', 'B.Ed Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-physical-science', 'B.Ed Physical Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-biological-science', 'B.Ed Biological Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-computer-science', 'B.Ed Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-commerce', 'B.Ed Commerce', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-economics', 'B.Ed Economics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-history', 'B.Ed History', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://ajcollege.in/',
  official_source_url = 'https://ajcollege.in/category/ug-courses/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://ajcollege.in/category/ug-courses/","https://ajcollege.in/category/pg-courses/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 17,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aj-college-of-science-and-technology-thonnakkal-thiruvananthapuram';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aj-college-of-science-and-technology-thonnakkal-thiruvananthapuram'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aj-college-of-science-and-technology-thonnakkal-thiruvananthapuram'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'fyugp-journalism', 'FYUGP Journalism', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-communicative-english', 'FYUGP Communicative English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-economics', 'FYUGP Economics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-business-management', 'FYUGP Business Management', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-computer-science', 'FYUGP Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-botany-and-biotechnology', 'FYUGP Botany and Biotechnology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-biochemistry-and-industrial-microbiology', 'FYUGP Biochemistry and Industrial Microbiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-bms-hotel-management', 'FYUGP BMS Hotel Management', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-commerce-business-information-systems', 'FYUGP Commerce - Business Information Systems', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-commerce-finance', 'FYUGP Commerce - Finance', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'fyugp-commerce-taxation', 'FYUGP Commerce - Taxation', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-mass-communication-and-journalism-mmcj', 'Master of Mass Communication and Journalism (MMCJ)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-english-language-and-literature', 'M.A. English Language and Literature', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-computer-science', 'M.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-biotechnology', 'M.Sc Biotechnology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-biochemistry', 'M.Sc Biochemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-microbiology', 'M.Sc Microbiology', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://ajids.edu.in/',
  official_source_url = 'https://ajids.edu.in/Webpages/AcdmcPgmstrdntlsurgery.aspx',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://ajids.edu.in/Webpages/AcdmcPgmstrdntlsurgery.aspx","https://ajids.edu.in/pdf/A%20J%20PROSPECTUS.pdf","https://ajids.edu.in/Webpages/PHD.aspx"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 23,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aj-institute-of-dental-sciences-mangalore';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aj-institute-of-dental-sciences-mangalore'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aj-institute-of-dental-sciences-mangalore'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-dental-surgery-bds', 'Bachelor of Dental Surgery (BDS)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-conservative-dentistry-and-endodontics', 'MDS Conservative Dentistry and Endodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-prosthodontics-and-crown-and-bridge', 'MDS Prosthodontics and Crown and Bridge', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-pedodontics-and-preventive-dentistry', 'MDS Pedodontics and Preventive Dentistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-periodontology', 'MDS Periodontology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-orthodontics-and-dentofacial-orthopedics', 'MDS Orthodontics and Dentofacial Orthopedics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-oral-and-maxillofacial-surgery', 'MDS Oral and Maxillofacial Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-oral-medicine-and-radiology', 'MDS Oral Medicine and Radiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-oral-pathology-and-microbiology', 'MDS Oral Pathology and Microbiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'mds-public-health-dentistry', 'MDS Public Health Dentistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'pg-diploma-conservative-dentistry-and-endodontics', 'PG Diploma Conservative Dentistry and Endodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'pg-diploma-prosthodontics-and-crown-and-bridge', 'PG Diploma Prosthodontics and Crown and Bridge', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'pg-diploma-pedodontics-and-preventive-dentistry', 'PG Diploma Pedodontics and Preventive Dentistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'pg-diploma-orthodontics-and-dentofacial-orthopedics', 'PG Diploma Orthodontics and Dentofacial Orthopedics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-orthodontics-and-dentofacial-orthopedics', 'Ph.D Orthodontics and Dentofacial Orthopedics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-oral-medicine-and-radiology', 'Ph.D Oral Medicine and Radiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-oral-pathology-and-oral-microbiology', 'Ph.D Oral Pathology and Oral Microbiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-oral-and-maxillofacial-surgery', 'Ph.D Oral and Maxillofacial Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-prosthodontics-and-crown-bridge', 'Ph.D Prosthodontics and Crown Bridge', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-periodontology', 'Ph.D Periodontology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-conservative-dentistry-and-endodontics', 'Ph.D Conservative Dentistry and Endodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-pediatric-and-preventive-dentistry', 'Ph.D Pediatric and Preventive Dentistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-public-health-dentistry', 'Ph.D Public Health Dentistry', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://jmi.ac.in/A.J.K.-Mass-Communication-Research-Centre',
  official_source_url = 'https://jmi.ac.in/A.J.K.-Mass-Communication-Research-Centre/Programmes/Courses',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://jmi.ac.in/A.J.K.-Mass-Communication-Research-Centre/Programmes/Courses"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 9,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'ajk-mass-communication-research-centre-new-delhi';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'ajk-mass-communication-research-centre-new-delhi'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'ajk-mass-communication-research-centre-new-delhi'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'ph-d-mass-communication', 'Ph.D Mass Communication', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-convergent-journalism', 'M.A. Convergent Journalism', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-development-communication', 'M.A. Development Communication', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-mass-communication', 'M.A. Mass Communication', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-visual-effects-and-animation', 'M.A. Visual Effects and Animation', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-mathematics-education-meta-university-programme', 'M.Sc Mathematics Education (Meta University programme)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'pg-diploma-in-acting', 'PG Diploma in Acting', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'pg-diploma-in-broadcast-technology', 'PG Diploma in Broadcast Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'pg-diploma-in-still-photography-and-visual-communication', 'PG Diploma in Still Photography and Visual Communication', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://akddrwomenscollege.edu.in/',
  official_source_url = 'https://akddrwomenscollege.edu.in/programmes.html',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://akddrwomenscollege.edu.in/programmes.html"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 15,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'akd-dharmaraja-college-for-women-rajapalayam';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'akd-dharmaraja-college-for-women-rajapalayam'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'akd-dharmaraja-college-for-women-rajapalayam'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-a-english', 'B.A. English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-tamil', 'B.A. Tamil', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bba', 'BBA', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com', 'B.Com', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com-computer-applications', 'B.Com Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-computer-science', 'B.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics', 'B.Sc Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-physics', 'B.Sc Physics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-physical-education', 'B.Sc Physical Education', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-tamil', 'M.A. Tamil', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-com', 'M.Com', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-com-computer-applications', 'M.Com Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-computer-science', 'M.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-mathematics', 'M.Sc Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-physics', 'M.Sc Physics', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.akgnursingcollege.com/',
  official_source_url = 'https://www.akgnursingcollege.com/courses',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.akgnursingcollege.com/courses"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 1,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'akg-memorial-co-operative-college-of-nursing-kannur';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'akg-memorial-co-operative-college-of-nursing-kannur'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'akg-memorial-co-operative-college-of-nursing-kannur'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-sc-nursing', 'B.Sc Nursing', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://nlapune.org/',
  official_source_url = 'https://nlapune.org/wp-content/uploads/2025/01/AQAR-2021-22.pdf',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://nlapune.org/wp-content/uploads/2025/01/AQAR-2021-22.pdf","https://www.careers360.com/colleges/mce-societys-akk-new-law-academy-and-phd-research-centre-pune/courses/full-time-courses-mode"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. The official domain and AQAR confirm the institution and Ph.D centre but do not expose a crawlable current catalogue. The five-programme candidate list is supported by a current secondary catalogue. Keep requires_official_source_refresh set to true until the institute confirms it.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'akk-new-law-academy-pune';


UPDATE public.colleges
SET
  official_website = 'https://aktmce.in/',
  official_source_url = 'https://aktmce.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://aktmce.in/","https://aktmce.in/pdf/courses%20aktmce.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 2,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'akt-memorial-college-of-education-villupuram';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'akt-memorial-college-of-education-villupuram'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'akt-memorial-college-of-education-villupuram'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-education-b-ed', 'Bachelor of Education (B.Ed)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-education-m-ed', 'Master of Education (M.Ed)', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://amcollegegaya.ac.in/',
  official_source_url = 'https://amcollegegaya.ac.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://amcollegegaya.ac.in/","https://amcollegegaya.ac.in/userfiles/SSR.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 23,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'am-college-gaya';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'am-college-gaya'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'am-college-gaya'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-a-hindi', 'B.A. Hindi', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-english', 'B.A. English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-philosophy', 'B.A. Philosophy', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-urdu', 'B.A. Urdu', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-sanskrit', 'B.A. Sanskrit', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-pali', 'B.A. Pali', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-history', 'B.A. History', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-psychology', 'B.A. Psychology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-political-science', 'B.A. Political Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-economics', 'B.A. Economics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-sociology', 'B.A. Sociology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-physics', 'B.Sc. Physics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-chemistry', 'B.Sc. Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics', 'B.Sc. Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-botany', 'B.Sc. Botany', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-zoology', 'B.Sc. Zoology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-education-b-ed', 'Bachelor of Education (B.Ed)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-computer-applications-bca', 'Bachelor of Computer Applications (BCA)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-information-technology', 'B.Sc. Information Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-information-technology', 'M.Sc. Information Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-library-and-information-science-blis', 'Bachelor of Library and Information Science (BLIS)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-library-and-information-science-mlis', 'Master of Library and Information Science (MLIS)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-business-management-bbm', 'Bachelor of Business Management (BBM)', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  
  official_source_url = 'https://ayush.gov.in/resources/pdf/education/Homoeopathy_permitted.pdf',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://ayush.gov.in/resources/pdf/education/Homoeopathy_permitted.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 6,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'am-shaikh-homoeopathic-medical-college-asmc-belgaum';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'am-shaikh-homoeopathic-medical-college-asmc-belgaum'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'am-shaikh-homoeopathic-medical-college-asmc-belgaum'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-homoeopathic-medicine-and-surgery-bhms', 'Bachelor of Homoeopathic Medicine and Surgery (BHMS)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-homoeopathy-organon-of-medicine-and-homoeopathic-philosophy', 'M.D. Homoeopathy - Organon of Medicine and Homoeopathic Philosophy', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-homoeopathy-materia-medica', 'M.D. Homoeopathy - Materia Medica', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-homoeopathy-repertory', 'M.D. Homoeopathy - Repertory', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-homoeopathy-paediatrics', 'M.D. Homoeopathy - Paediatrics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-homoeopathy-practice-of-medicine', 'M.D. Homoeopathy - Practice of Medicine', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://amesdentalcollege.com/',
  official_source_url = 'https://amesdentalcollege.com/bds',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://amesdentalcollege.com/bds","https://amesdentalcollege.com/mds"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 7,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'ame039s-dental-college-and-hospital-raichur';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'ame039s-dental-college-and-hospital-raichur'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'ame039s-dental-college-and-hospital-raichur'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-dental-surgery-bds', 'Bachelor of Dental Surgery (BDS)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-dental-surgery-oral-medicine-and-radiology', 'Master of Dental Surgery - Oral Medicine and Radiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-dental-surgery-paedodontics', 'Master of Dental Surgery - Paedodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-dental-surgery-prosthodontics', 'Master of Dental Surgery - Prosthodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-dental-surgery-conservative-dentistry-and-endodontics', 'Master of Dental Surgery - Conservative Dentistry and Endodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-dental-surgery-orthodontics', 'Master of Dental Surgery - Orthodontics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-dental-surgery-periodontics', 'Master of Dental Surgery - Periodontics', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.amreddypharmacy.co.in/',
  official_source_url = 'https://www.amreddypharmacy.co.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.amreddypharmacy.co.in/","https://amreddypharmacy.co.in/admissions/fee-structure.php"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 6,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'amreddy-memorial-college-of-pharmacy-guntur';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'amreddy-memorial-college-of-pharmacy-guntur'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'amreddy-memorial-college-of-pharmacy-guntur'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-pharmacy-b-pharm', 'Bachelor of Pharmacy (B.Pharm)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'doctor-of-pharmacy-pharm-d', 'Doctor of Pharmacy (Pharm.D)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-pharmacy-pharmaceutics', 'Master of Pharmacy - Pharmaceutics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-pharmacy-pharmaceutical-analysis', 'Master of Pharmacy - Pharmaceutical Analysis', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-pharmacy-pharmacology', 'Master of Pharmacy - Pharmacology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-pharmacy-regulatory-affairs', 'Master of Pharmacy - Regulatory Affairs', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://apcmcollege.ac.in/',
  official_source_url = 'https://apcmcollege.ac.in/wp-content/uploads/2025/04/APCMC-Brochure.pdf',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://apcmcollege.ac.in/wp-content/uploads/2025/04/APCMC-Brochure.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 21,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'apc-mahalaxmi-college-for-women-thoothukudi';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'apc-mahalaxmi-college-for-women-thoothukudi'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'apc-mahalaxmi-college-for-women-thoothukudi'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-a-history', 'B.A. History', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-english', 'B.A. English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-tamil', 'B.A. Tamil', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics', 'B.Sc. Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-chemistry', 'B.Sc. Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-zoology', 'B.Sc. Zoology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com', 'B.Com.', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-tamil', 'M.A. Tamil', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-mathematics', 'M.Sc. Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-tamil', 'Ph.D. Tamil', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-mathematics', 'Ph.D. Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-english', 'Ph.D. English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-chemistry', 'Ph.D. Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-commerce', 'Ph.D. Commerce', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-computer-science', 'B.Sc. Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-physics', 'B.Sc. Physics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-computer-applications-bca', 'Bachelor of Computer Applications (BCA)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-english', 'M.A. English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-chemistry', 'M.Sc. Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-computer-science', 'M.Sc. Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-com', 'M.Com.', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://argrp.in/',
  official_source_url = 'https://argrp.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://argrp.in/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 5,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'ar-college-of-engineering-and-technology-arcet-tirunelveli';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'ar-college-of-engineering-and-technology-arcet-tirunelveli'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'ar-college-of-engineering-and-technology-arcet-tirunelveli'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-tech-computer-science-engineering', 'B.Tech. Computer Science Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-electronics-and-communication-engineering', 'B.Tech. Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-electrical-and-electronics-engineering', 'B.Tech. Electrical and Electronics Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-mechatronics-engineering', 'B.Tech. Mechatronics Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-mechanical-engineering', 'B.Tech. Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.arenggc.com/',
  official_source_url = 'https://www.arenggc.com/Admission.php',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.arenggc.com/Admission.php"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 6,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'ar-engineering-college-arec-villupuram';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'ar-engineering-college-arec-villupuram'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'ar-engineering-college-arec-villupuram'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-e-electronics-and-communication-engineering', 'B.E. Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering', 'B.E. Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electrical-and-electronics-engineering', 'B.E. Electrical and Electronics Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-mechanical-engineering', 'B.E. Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-civil-engineering', 'B.E. Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-artificial-intelligence-and-data-science', 'B.Tech. Artificial Intelligence and Data Science', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  
  official_source_url = 'https://www.careers360.com/colleges/asl-pauls-college-of-engineering-and-technology-coimbatore',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.careers360.com/colleges/asl-pauls-college-of-engineering-and-technology-coimbatore","https://aicte-qa.aicte-india.org/sites/default/files/Shortlisted%20institutes%20for%20Website.pdf"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. No functioning current official institution website or catalogue was found. The five-course set is consistently reported by Careers360 and historical AICTE references. Do not mark official_courses_verified true until current affiliation is confirmed.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'asl-pauls-college-of-engineering-amp-technology-kinathukkadavu-aslpcet-coimbatore';


UPDATE public.colleges
SET
  official_website = 'https://www.avcollege.in/',
  official_source_url = 'https://www.avcollege.in/programs.html',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.avcollege.in/programs.html"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 21,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'av-college-of-arts-science-and-commerce-av-college-hyderabad';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'av-college-of-arts-science-and-commerce-av-college-hyderabad'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'av-college-of-arts-science-and-commerce-av-college-hyderabad'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-a-economics-political-science-and-public-administration', 'B.A. Economics, Political Science and Public Administration', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-a-psychology-political-science-and-public-administration', 'B.A. Psychology, Political Science and Public Administration', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-business-administration-bba', 'Bachelor of Business Administration (BBA)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com-general', 'B.Com. General', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-com-computer-applications', 'B.Com. Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-botany-zoology-and-chemistry', 'B.Sc. Botany, Zoology and Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics-physics-and-chemistry', 'B.Sc. Mathematics, Physics and Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics-physics-and-computer-science', 'B.Sc. Mathematics, Physics and Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics-electronics-and-computer-science', 'B.Sc. Mathematics, Electronics and Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-mathematics-statistics-and-computer-science', 'B.Sc. Mathematics, Statistics and Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-sc-clinical-nutrition-and-dietetics-botany-and-chemistry', 'B.Sc. Clinical Nutrition and Dietetics, Botany and Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-business-administration-mba', 'Master of Business Administration (MBA)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-computer-applications-mca', 'Master of Computer Applications (MCA)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-mathematics', 'M.Sc. Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-applied-mathematics', 'M.Sc. Applied Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-physics', 'M.Sc. Physics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-chemistry', 'M.Sc. Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-computer-science', 'M.Sc. Computer Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-com', 'M.Com.', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-a-telugu', 'M.A. Telugu', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-sc-biotechnology', 'M.Sc. Biotechnology', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.avccengg.net/',
  official_source_url = 'https://www.avccengg.net/Academic/Programmes',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.avccengg.net/Academic/Programmes"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 16,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'avc-college-of-engineering-avcce-nagapattinam';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'avc-college-of-engineering-avcce-nagapattinam'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'avc-college-of-engineering-avcce-nagapattinam'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-e-mechanical-engineering', 'B.E. Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electronics-and-communication-engineering', 'B.E. Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering', 'B.E. Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-instrumentation-and-control-engineering', 'B.E. Instrumentation and Control Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-civil-engineering', 'B.E. Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electrical-and-electronics-engineering', 'B.E. Electrical and Electronics Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-information-technology', 'B.Tech. Information Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-artificial-intelligence-and-data-science', 'B.Tech. Artificial Intelligence and Data Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-computer-applications-mca', 'Master of Computer Applications (MCA)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-business-administration-mba', 'Master of Business Administration (MBA)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-by-research-mechanical-engineering', 'M.S. by Research - Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-mechanical-engineering', 'Ph.D. - Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-by-research-computer-applications', 'M.S. by Research - Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-computer-applications', 'Ph.D. - Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-by-research-chemistry', 'M.S. by Research - Chemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-chemistry', 'Ph.D. - Chemistry', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.awhcollegeofeducation.org/',
  official_source_url = 'https://www.awhcollegeofeducation.org/academic-program',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.awhcollegeofeducation.org/academic-program","https://www.awhcollegeofeducation.org/course-offered","https://www.awhcollegeofeducation.org/fee-structure"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 5,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'awh-college-of-education-calicut';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'awh-college-of-education-calicut'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'awh-college-of-education-calicut'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-ed-mathematics', 'B.Ed. Mathematics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-natural-science', 'B.Ed. Natural Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-social-science', 'B.Ed. Social Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-commerce', 'B.Ed. Commerce', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-ed-special-education-hearing-impairment', 'B.Ed. Special Education - Hearing Impairment', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  
  official_source_url = 'https://www.pci.nic.in/pdf/M.Pharm_9122020.pdf',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.pci.nic.in/pdf/M.Pharm_9122020.pdf","https://www.careers360.com/colleges/aadhi-bhagawan-college-of-pharmacy-tiruvannamalai"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. No current institutional website was found. B.Pharm and both M.Pharm specialisations are supported by PCI documents and recent institutional research affiliations. Aggregator fee figures were not imported.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aadhi-bhagawan-college-of-pharmacy-chennai';


UPDATE public.colleges
SET
  official_website = 'http://aadinath.org',
  official_source_url = 'https://mlsu.ac.in/notifications/15101_Centre%20List%20of%20B.Ed.%2C%20B.A.%20B.Ed%2C%20B.Sc.B.Ed%20%26%20M.Ed.%20Examination%202025%20%281%29.pdf',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://mlsu.ac.in/notifications/15101_Centre%20List%20of%20B.Ed.%2C%20B.A.%20B.Ed%2C%20B.Sc.B.Ed%20%26%20M.Ed.%20Examination%202025%20%281%29.pdf","https://www.careerindia.com/colleges/aadinath-mahila-teacher-s-training-college-udaipur-rajasthan-cp2562/"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. The listed official domain was not accessible. B.Ed is supported by Mohanlal Sukhadia University examination records and institutional directories. No fee was imported.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aadinath-mahila-teacher039s-training-college-udaipur';


UPDATE public.colleges
SET
  official_website = 'https://www.aakashcollege.org.in/',
  official_source_url = 'https://www.aakashcollege.org.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.aakashcollege.org.in/","https://cdlu.ac.in/assets/admin/miscellaneous/admission/final%20HBI%20B.Ed.%202025-26.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 3,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aakash-college-of-education-fatehabad';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aakash-college-of-education-fatehabad'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aakash-college-of-education-fatehabad'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-education-b-ed', 'Bachelor of Education (B.Ed)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'diploma-in-elementary-education-d-el-ed', 'Diploma in Elementary Education (D.El.Ed)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'integrated-b-a-b-ed', 'Integrated B.A. B.Ed.', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.aakashcollege.edu.in/',
  official_source_url = 'https://www.aakashcollege.edu.in/bed.php',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.aakashcollege.edu.in/bed.php","https://www.kccollegeofeducation.com/downloads/Prospectus-bed-24-25.pdf","https://www.aakashcollege.edu.in/FEE%20STRUCTURE.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 4,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aakash-college-of-education-hisar';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aakash-college-of-education-hisar'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aakash-college-of-education-hisar'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-education-b-ed', 'Bachelor of Education (B.Ed)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'diploma-in-elementary-education-d-el-ed', 'Diploma in Elementary Education (D.El.Ed)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'integrated-b-a-b-ed', 'Integrated B.A. B.Ed.', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'integrated-b-sc-b-ed', 'Integrated B.Sc. B.Ed.', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'http://www.aibm.in/',
  official_source_url = 'http://www.aibm.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["http://www.aibm.in/","https://targetstudy.com/institute/45188/aakash-institute-of-business-management/","https://www.shiksha.com/college/aakash-institute-of-business-management-mallathalli-bangalore-33098/courses"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. Resolved as the Mallathalli, Bengaluru institute. The official domain is not currently accessible and current aggregators conflict on BBM versus BBA and on the total programme count. Preserve these as provisional course names and do not mark official_courses_verified true without a current university or institute document.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aakash-institute-of-business-management-aibm-mallathalli-bangalore';


UPDATE public.colleges
SET
  
  official_source_url = 'https://targetstudy.com/institute/64460/aakashline-institute/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://targetstudy.com/institute/64460/aakashline-institute/"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. No live official institute website was located. The listed courses come from a third-party directory and require confirmation of current operation and affiliation before publication.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aakashline-institute-new-delhi';


UPDATE public.colleges
SET
  
  official_source_url = 'https://www.collegedekho.com/colleges/aakson-institute-for-management-studies-courses',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.collegedekho.com/colleges/aakson-institute-for-management-studies-courses"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. No reliable current official catalogue was found. Duplicate B.Sc. Biotechnology and B.Com entries in the source were removed.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aakson-institute-for-management-studies-aims-bangalore';


UPDATE public.colleges
SET
  official_website = 'https://www.amsarch.ac.in/',
  official_source_url = 'https://www.amsarch.ac.in/admission/eligibility-criteria/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.amsarch.ac.in/admission/eligibility-criteria/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 1,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aalim-muhammed-salegh-academy-of-architecture-chennai';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aalim-muhammed-salegh-academy-of-architecture-chennai'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aalim-muhammed-salegh-academy-of-architecture-chennai'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-architecture-b-arch', 'Bachelor of Architecture (B.Arch.)', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.aalimec.ac.in/',
  official_source_url = 'https://www.aalimec.ac.in/c-naac-accreditation-certificate/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.aalimec.ac.in/c-naac-accreditation-certificate/","https://www.aalimec.ac.in/wp-content/uploads/2025/01/AMSCE-Policies.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 10,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aalim-muhammed-salegh-college-of-engineering-aalimec-chennai';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aalim-muhammed-salegh-college-of-engineering-aalimec-chennai'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aalim-muhammed-salegh-college-of-engineering-aalimec-chennai'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-e-civil-engineering', 'B.E. Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering', 'B.E. Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electrical-and-electronics-engineering', 'B.E. Electrical and Electronics Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electronics-and-communication-engineering', 'B.E. Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-mechanical-engineering', 'B.E. Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-information-technology', 'B.Tech. Information Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-artificial-intelligence-and-data-science', 'B.Tech. Artificial Intelligence and Data Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-computer-science-and-business-systems', 'B.Tech. Computer Science and Business Systems', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering-cyber-security', 'B.E. Computer Science and Engineering (Cyber Security)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering-artificial-intelligence-and-machine-learning', 'B.E. Computer Science and Engineering (Artificial Intelligence and Machine Learning)', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://avit.ac.in/',
  official_source_url = 'https://avit.ac.in/programmes-offered/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://avit.ac.in/programmes-offered/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 19,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aarupadai-veedu-institute-of-technology-avit-chennai';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aarupadai-veedu-institute-of-technology-avit-chennai'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aarupadai-veedu-institute-of-technology-avit-chennai'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-e-computer-science-and-engineering', 'B.E. Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering-artificial-intelligence-and-machine-learning', 'B.E. Computer Science and Engineering (Artificial Intelligence and Machine Learning)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering-cyber-security', 'B.E. Computer Science and Engineering (Cyber Security)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-computer-science-and-engineering-data-science', 'B.E. Computer Science and Engineering (Data Science)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-biomedical-engineering', 'B.E. Biomedical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-civil-engineering', 'B.E. Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electronics-and-communication-engineering', 'B.E. Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electrical-and-electronics-engineering', 'B.E. Electrical and Electronics Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-mechanical-engineering', 'B.E. Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-biotechnology', 'B.Tech. Biotechnology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-tech-biotechnology', 'M.Tech. Biotechnology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-e-computer-science-and-engineering', 'M.E. Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-e-construction-engineering-and-management', 'M.E. Construction Engineering and Management', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-e-embedded-systems-technologies', 'M.E. Embedded Systems Technologies', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-e-manufacturing-engineering', 'M.E. Manufacturing Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-e-power-systems-engineering', 'M.E. Power Systems Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electronics-and-communication-engineering-working-professionals', 'B.E. Electronics and Communication Engineering - Working Professionals', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-electrical-and-electronics-engineering-working-professionals', 'B.E. Electrical and Electronics Engineering - Working Professionals', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-e-mechanical-engineering-working-professionals', 'B.E. Mechanical Engineering - Working Professionals', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://avmc.edu.in/',
  official_source_url = 'https://avmc.edu.in/courses-offered/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://avmc.edu.in/courses-offered/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 28,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aarupadai-veedu-medical-college-avmc-pondicherry';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aarupadai-veedu-medical-college-avmc-pondicherry'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aarupadai-veedu-medical-college-avmc-pondicherry'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'mbbs', 'MBBS', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-anatomy', 'M.D. Anatomy', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-biochemistry', 'M.D. Biochemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-microbiology', 'M.D. Microbiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-community-medicine', 'M.D. Community Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-general-medicine', 'M.D. General Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-pediatrics', 'M.D. Pediatrics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-anesthesiology', 'M.D. Anesthesiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-dermatology-venereology-and-leprosy', 'M.D. Dermatology, Venereology and Leprosy', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-radiodiagnosis', 'M.D. Radiodiagnosis', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-psychiatry', 'M.D. Psychiatry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-emergency-medicine', 'M.D. Emergency Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-pathology', 'M.D. Pathology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-respiratory-medicine', 'M.D. Respiratory Medicine', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-d-pharmacology', 'M.D. Pharmacology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-general-surgery', 'M.S. General Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-otorhinolaryngology', 'M.S. Otorhinolaryngology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-orthopedics', 'M.S. Orthopedics', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-obstetrics-and-gynaecology', 'M.S. Obstetrics and Gynaecology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'm-s-ophthalmology', 'M.S. Ophthalmology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-anatomy', 'Ph.D. Anatomy', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-medical-microbiology', 'Ph.D. Medical Microbiology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-pharmacology', 'Ph.D. Pharmacology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-pathology', 'Ph.D. Pathology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-biochemistry', 'Ph.D. Biochemistry', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-general-surgery', 'Ph.D. General Surgery', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-obstetrics-and-gynecology', 'Ph.D. Obstetrics and Gynecology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'ph-d-interdisciplinary', 'Ph.D. Interdisciplinary', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  
  official_source_url = 'https://ncte.gov.in/WebAdmin/pdf/RCMeeting/4_09_01_2020_637141878886415363.pdf',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://ncte.gov.in/WebAdmin/pdf/RCMeeting/4_09_01_2020_637141878886415363.pdf"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. NCTE meeting minutes state that recognition for the B.Ed. course was withdrawn from the following academic session. Do not advertise an active course without a newer restoration order.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aasee-college-of-education-karur';


UPDATE public.colleges
SET
  official_website = 'http://www.aashlarbschool.com',
  official_source_url = 'https://www.careers360.com/colleges/aashlar-business-school-mathura/courses',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.careers360.com/colleges/aashlar-business-school-mathura/courses","https://www.gniotgroup.edu.in/circulars-pdf/1778070816-centre-list.pdf"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. The official website was unavailable. Current sources consistently support MBA. Examination records also mention MAM, but that programme requires human confirmation before publication.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aashlar-business-school-abs-mathura';


UPDATE public.colleges
SET
  official_website = 'https://www.aayojan.edu.in/',
  official_source_url = 'https://www.aayojan.edu.in/courses/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.aayojan.edu.in/courses/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 2,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'aayojan-school-of-architecture-asa-jaipur';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'aayojan-school-of-architecture-asa-jaipur'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'aayojan-school-of-architecture-asa-jaipur'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-architecture-b-arch', 'Bachelor of Architecture (B.Arch.)', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-architecture-urban-design', 'Master of Architecture (Urban Design)', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://www.jspm.edu.in/',
  official_source_url = 'https://www.shiksha.com/college/abacus-institute-of-computer-applications-hadapsar-pune-52723/courses/mca-bc/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.shiksha.com/college/abacus-institute-of-computer-applications-hadapsar-pune-52723/courses/mca-bc/","https://www.icbse.com/colleges/abacus-institute-of-computer-application-dy83pq"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. The official parent organisation was identified, but a current official institute catalogue was not found. Recent sources show MCA only. Older claims for MBA or Ph.D. require official confirmation.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'abacus-institute-of-computer-applications-aica-hadapsar-pune';


UPDATE public.colleges
SET
  official_website = 'https://www.abacusinstitute.org/',
  official_source_url = 'https://www.abacusinstitute.org/admission-procedures.php',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://www.abacusinstitute.org/admission-procedures.php","https://www.abacusinstitute.org/about.php"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 11,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'abacus-institute-of-engineering-and-management-hooghly';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'abacus-institute-of-engineering-and-management-hooghly'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'abacus-institute-of-engineering-and-management-hooghly'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'b-tech-computer-science-and-engineering', 'B.Tech. Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-electronics-and-communication-engineering', 'B.Tech. Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-electrical-engineering', 'B.Tech. Electrical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-civil-engineering', 'B.Tech. Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'b-tech-mechanical-engineering', 'B.Tech. Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'diploma-in-civil-engineering', 'Diploma in Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'diploma-in-mechanical-engineering', 'Diploma in Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'diploma-in-computer-science-and-technology', 'Diploma in Computer Science and Technology', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'diploma-in-electrical-engineering', 'Diploma in Electrical Engineering', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-business-administration', 'Bachelor of Business Administration', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-computer-applications', 'Bachelor of Computer Applications', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://agims.org.in/',
  official_source_url = 'https://agims.org.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://agims.org.in/","https://agims.org.in/pdf/Disclosure_of_AGIMS_2026_2027.pdf"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 1,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'abasaheb-garware-institute-of-management-studies-agims-sangli';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'abasaheb-garware-institute-of-management-studies-agims-sangli'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'abasaheb-garware-institute-of-management-studies-agims-sangli'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'master-of-business-administration', 'Master of Business Administration', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://amcrajapur.ac.in/',
  official_source_url = 'https://amcrajapur.ac.in/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://amcrajapur.ac.in/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 4,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'abasaheb-marathe-arts-and-new-commerce-science-college-ratnagiri';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'abasaheb-marathe-arts-and-new-commerce-science-college-ratnagiri'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'abasaheb-marathe-arts-and-new-commerce-science-college-ratnagiri'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-arts', 'Bachelor of Arts', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-commerce', 'Bachelor of Commerce', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-science', 'Bachelor of Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-commerce', 'Master of Commerce', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://apmvy.edu.in/',
  official_source_url = 'https://apmvy.edu.in/about/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://apmvy.edu.in/about/"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 8,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'abasaheb-parvekar-mahavidyalaya-yavatmal';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'abasaheb-parvekar-mahavidyalaya-yavatmal'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'abasaheb-parvekar-mahavidyalaya-yavatmal'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-arts', 'Bachelor of Arts', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-commerce', 'Bachelor of Commerce', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-library-and-information-science', 'Bachelor of Library and Information Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-commerce', 'Master of Commerce', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'certificate-or-diploma-in-hotel-management', 'Certificate or Diploma in Hotel Management', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'certificate-in-communication-skills-in-english', 'Certificate in Communication Skills in English', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'certificate-or-diploma-in-e-commerce', 'Certificate or Diploma in E-Commerce', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'certificate-or-diploma-in-library-and-office-automation', 'Certificate or Diploma in Library and Office Automation', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'https://abdulazizcollege.jnp.org.in/',
  official_source_url = 'https://abdulazizcollege.jnp.org.in/admission.php',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://abdulazizcollege.jnp.org.in/admission.php"],"course_catalogue_scope":"complete_advertised_catalogue","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  courses_count = 5,
  data_clean_audit_note = 'Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'abdul-aziz-ansari-degree-college-jaunpur';

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = 'abdul-aziz-ansari-degree-college-jaunpur'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = 'abdul-aziz-ansari-degree-college-jaunpur'
) AS college
CROSS JOIN LATERAL (
  VALUES
  (college.slug, 'bachelor-of-arts', 'Bachelor of Arts', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-science', 'Bachelor of Science', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'master-of-arts', 'Master of Arts', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'bachelor-of-education', 'Bachelor of Education', NULL::numeric, NULL::text, '2026'::text),
  (college.slug, 'basic-training-certificate', 'Basic Training Certificate', NULL::numeric, NULL::text, '2026'::text)
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);


UPDATE public.colleges
SET
  official_website = 'http://www.ardcjoya.com',
  official_source_url = 'https://amroha.nic.in/degree-college/',
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || '{"course_catalogue":["https://amroha.nic.in/degree-college/","https://www.collegedekho.com/colleges/abdul-razzak-degree-college-joya-courses"],"course_catalogue_scope":"provisional_requires_review","course_catalogue_checked_at":"2026-07-30","fee_verification":"fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed","batch":"college-official-course-refresh-next-50"}'::jsonb,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  
  data_clean_audit_note = 'Course catalogue researched but not published because primary-source verification is incomplete. The Amroha district government directory confirms the official domain, but the site was unreachable. Only degree families should be published until subject specialisations are verified by the college or affiliating university.',
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = 'abdul-razak-degree-college-ardc-jyotiba-phule-nagar';

NOTIFY pgrst, 'reload schema';
COMMIT;
