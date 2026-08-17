-- College official-source and full-content batch 002.
-- Existing images and logos are intentionally untouched.
-- Numeric fees, recruiters, salaries, rankings and hostel claims are not invented.
BEGIN;

DO $preflight$
DECLARE requested_slug text; matches integer;
BEGIN
  FOREACH requested_slug IN ARRAY ARRAY[
    'abdulkalam-institute-of-technological-sciences-akit-khammam',
    'abeda-inamdar-senior-college-pune',
    'abes-engineering-college-ghaziabad',
    'abes-institute-of-technology-abesit-ghaziabad',
    'abha-gaikwadpatil-college-of-engineering-nagpur',
    'abhay-yuva-kalyan-kendra-sanchalit-college-of-education-dhule',
    'abhaya-college-of-nursing-bangalore',
    'abhayapuri-college-bongaigaon',
    'abhi-institute-of-hotel-management-aihm-new-delhi',
    'abhijit-kadam-institute-of-management-and-social-sciences-akimss-solapur',
    'abhilashi-college-of-pharmacy-mandi',
    'abhilashi-institute-of-life-sciences-ails-mandi',
    'abhilashi-institute-of-management-studies-aims-mandi',
    'abhilashi-post-graduate-college-of-education-mandi',
    'abhinav-education-society039s-college-of-computer-science-and-management-ambegaon',
    'abhinav-education-society039s-college-of-engineering-and-technology-wadwani',
    'abhinav-education-society039s-college-of-pharmacy-pune',
    'abhinav-education-society039s-dted-college-akole-ahmed-nagar',
    'abhinav-education-society039s-institute-of-management-and-research-aesimr-pune',
    'abhinav-education-society039s-law-college-pune',
    'abhinav-hi-tech-college-of-engineering-and-technology-ahcet-hyderabad',
    'abhinav-shetkari-shikshan-mandal-degree-college-thane',
    'abhishek-institute-of-professional-studies-aips-gwalior',
    'abmsp039s-anantrao-pawar-college-of-engineering-amp-research-apcoer-pune',
    'abr-college-of-engineering-and-technology-prakasam',
    'abs-academy-of-science-technology-and-management-bardhaman',
    'abss-institue-of-technology-meerut',
    'academy-allied-health-sciences-kolkata',
    'academy-for-technical-and-management-excellence-atme-mysore',
    'academy-of-applied-arts-aoaa-guwahati',
    'academy-of-applied-arts-north-campus-aoaa-new-delhi',
    'academy-of-applied-arts-south-campus-aoaa-new-delhi',
    'academy-of-architecture-aia-mumbai',
    'academy-of-business-administration-aba-balasore',
    'academy-of-business-management-tourism-and-research-abmtr-bangalore',
    'academy-of-carver-aviation-pvt-ltd-pune',
    'academy-of-fashion-and-textile-technology-aftt-chennai',
    'academy-of-hospital-administration-aha-noida',
    'academy-of-management-professional-development-ampd-thane',
    'academy-of-management-studies-ams-dehradun',
    'academy-of-maritime-education-and-training-university-amet-chennai',
    'academy-of-medical-science-pariyaram-kannur',
    'academy-of-pharmaceutical-sciences-pariyaram-kannur',
    'academy-of-technology-aot-hooghly',
    'acc-jain-college-of-education-birbhum',
    'access-atlantech-media-college-chennai',
    'accman-institute-of-management-accmanim-greater-noida',
    'accord-business-school-abs-tirupati',
    'accurate-institute-of-architecture-and-planning-aiap-greater-noida',
    'accurate-institute-of-management-and-technology-aimt-greater-noida'
  ]::text[]
  LOOP
    SELECT count(*) INTO matches FROM public.colleges WHERE slug = requested_slug;
    IF matches <> 1 THEN
      RAISE EXCEPTION 'Expected one production college for slug %, found %', requested_slug, matches;
    END IF;
  END LOOP;
END
$preflight$;


UPDATE public.colleges
SET
  official_website = 'https://akits.ac.in/admissions/',
  official_source_url = 'https://akits.ac.in/admissions/',
  description = '<h2>AbdulKalam Institute of Technological Sciences - [AKIT], Khammam overview</h2><p>AbdulKalam Institute of Technological Sciences - [AKIT], Khammam in Khammam, Telangana, is listed for multidisciplinary higher education. 11 programmes were mapped from reviewed sources: B.Tech Artificial Intelligence and Machine Learning, B.Tech Computer Science and Engineering, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, with further options shown in the course table.</p><p>A current institutional or regulator source was reviewed: The official admissions and department navigation identifies the engineering, management and postgraduate engineering areas offered by the institute.</p><h2>What applicants should verify</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>11 programmes were mapped from reviewed sources: B.Tech Artificial Intelligence and Machine Learning, B.Tech Computer Science and Engineering, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, with further options shown in the course table. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'AbdulKalam Institute of Technological Sciences - [AKIT], Khammam courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('AbdulKalam Institute of Technological Sciences - [AKIT], Khammam Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore AbdulKalam Institute of Technological Sciences - [AKIT], Khammam courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'AbdulKalam Institute of Technological Sciences - [AKIT], Khammam, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 11,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://akits.ac.in/admissions/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abdulkalam-institute-of-technological-sciences-akit-khammam';

DELETE FROM public.course_fees WHERE college_slug = 'abdulkalam-institute-of-technological-sciences-akit-khammam';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-mining-engineering', 'B.Tech Mining Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'mba', 'MBA', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'm-tech-electrical-power-systems', 'M.Tech Electrical Power Systems', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'm-tech-thermal-engineering', 'M.Tech Thermal Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abdulkalam-institute-of-technological-sciences-akit-khammam', 'b-tech-data-science', 'B.Tech Data Science', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://www.abedainamdarcollege.org.in/',
  official_source_url = 'https://www.abedainamdarcollege.org.in/',
  description = '<h2>Abeda Inamdar Senior College, Pune overview</h2><p>Abeda Inamdar Senior College, Pune in Pune, Maharashtra, is listed for multidisciplinary higher education. 8 programmes were mapped from reviewed sources: Bachelor of Arts, Bachelor of Commerce, Bachelor of Science, B.Sc Computer Applications, B.Sc Computer Science, with further options shown in the course table.</p><p>A current institutional or regulator source was reviewed: The official college site publishes current admission notices and identifies arts, commerce, science and computing programmes.</p><h2>What applicants should verify</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>8 programmes were mapped from reviewed sources: Bachelor of Arts, Bachelor of Commerce, Bachelor of Science, B.Sc Computer Applications, B.Sc Computer Science, with further options shown in the course table. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abeda Inamdar Senior College, Pune courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abeda Inamdar Senior College, Pune Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abeda Inamdar Senior College, Pune courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abeda Inamdar Senior College, Pune, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 8,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abedainamdarcollege.org.in/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abeda-inamdar-senior-college-pune';

DELETE FROM public.course_fees WHERE college_slug = 'abeda-inamdar-senior-college-pune';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abeda-inamdar-senior-college-pune', 'bachelor-of-arts', 'Bachelor of Arts', NULL::numeric, NULL::text, '2026'::text),
  ('abeda-inamdar-senior-college-pune', 'bachelor-of-commerce', 'Bachelor of Commerce', NULL::numeric, NULL::text, '2026'::text),
  ('abeda-inamdar-senior-college-pune', 'bachelor-of-science', 'Bachelor of Science', NULL::numeric, NULL::text, '2026'::text),
  ('abeda-inamdar-senior-college-pune', 'b-sc-computer-applications', 'B.Sc Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  ('abeda-inamdar-senior-college-pune', 'b-sc-computer-science', 'B.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text),
  ('abeda-inamdar-senior-college-pune', 'b-com-computer-applications', 'B.Com Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  ('abeda-inamdar-senior-college-pune', 'b-com-business-management', 'B.Com Business Management', NULL::numeric, NULL::text, '2026'::text),
  ('abeda-inamdar-senior-college-pune', 'master-of-commerce', 'Master of Commerce', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://abes.ac.in/courses-offered.html',
  official_source_url = 'https://abes.ac.in/courses-offered.html',
  description = '<h2>ABES Engineering College, Ghaziabad overview</h2><p>ABES Engineering College, Ghaziabad in Ghaziabad, Uttar Pradesh, is listed for engineering and technology. 9 programmes were mapped from reviewed sources: B.Tech Computer Science and Engineering, B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning, B.Tech Computer Science and Engineering - Data Science, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Computer Engineering, with further options shown in the course table.</p><p>A current institutional or regulator source was reviewed: The official course page was used for programme names. Applicants should confirm branch intake and the active admission route for their session.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>9 programmes were mapped from reviewed sources: B.Tech Computer Science and Engineering, B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning, B.Tech Computer Science and Engineering - Data Science, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Computer Engineering, with further options shown in the course table. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'ABES Engineering College, Ghaziabad courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ABES Engineering College, Ghaziabad Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ABES Engineering College, Ghaziabad courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ABES Engineering College, Ghaziabad, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 9,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abes.ac.in/courses-offered.html","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abes-engineering-college-ghaziabad';

DELETE FROM public.course_fees WHERE college_slug = 'abes-engineering-college-ghaziabad';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abes-engineering-college-ghaziabad', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'b-tech-computer-science-and-engineering-artificial-intelligence-and-machine-learning', 'B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'b-tech-computer-science-and-engineering-data-science', 'B.Tech Computer Science and Engineering - Data Science', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'b-tech-electrical-and-computer-engineering', 'B.Tech Electrical and Computer Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'master-of-computer-applications', 'Master of Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'm-tech-computer-science-and-engineering', 'M.Tech Computer Science and Engineering', NULL::numeric, NULL::text, '2026'::text),
  ('abes-engineering-college-ghaziabad', 'm-tech-electronics-and-communication-engineering', 'M.Tech Electronics and Communication Engineering', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://www.abesit.in/admission/',
  official_source_url = 'https://www.abesit.in/admission/',
  description = '<h2>ABES Institute of Technology - [ABESIT], Ghaziabad overview</h2><p>ABES Institute of Technology - [ABESIT], Ghaziabad in Ghaziabad, Uttar Pradesh, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The institute admission portal and its 2026 brochure were located, but this pass does not replace the catalogue until every branch is mapped from the brochure.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'ABES Institute of Technology - [ABESIT], Ghaziabad courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ABES Institute of Technology - [ABESIT], Ghaziabad Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ABES Institute of Technology - [ABESIT], Ghaziabad courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ABES Institute of Technology - [ABESIT], Ghaziabad, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abesit.in/admission/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abes-institute-of-technology-abesit-ghaziabad';

UPDATE public.colleges
SET
  
  
  description = '<h2>Abha GaikwadPatil College of Engineering, Nagpur overview</h2><p>Abha GaikwadPatil College of Engineering, Nagpur in Nagpur, Maharashtra, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abha GaikwadPatil College of Engineering, Nagpur courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abha GaikwadPatil College of Engineering, Nagpur Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abha GaikwadPatil College of Engineering, Nagpur courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abha GaikwadPatil College of Engineering, Nagpur, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abha-gaikwadpatil-college-of-engineering-nagpur';

UPDATE public.colleges
SET
  
  
  description = '<h2>Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule overview</h2><p>Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule in Dhule, Maharashtra, is listed for teacher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhay-yuva-kalyan-kendra-sanchalit-college-of-education-dhule';

UPDATE public.colleges
SET
  official_website = 'https://www.abhayainstitutions.com/',
  official_source_url = 'https://www.abhayainstitutions.com/',
  description = '<h2>Abhaya College of Nursing, Bangalore overview</h2><p>Abhaya College of Nursing, Bangalore in Bangalore, Karnataka, is listed for health sciences. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The institution site describes nursing education and clinical training. The exact current campus-level catalogue still needs a dedicated verification pass.</p><h2>What applicants should verify</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhaya College of Nursing, Bangalore courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhaya College of Nursing, Bangalore Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhaya College of Nursing, Bangalore courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhaya College of Nursing, Bangalore, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abhayainstitutions.com/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhaya-college-of-nursing-bangalore';

UPDATE public.colleges
SET
  official_website = 'https://abhayapuricollege.ac.in/coursesprogrammes.php',
  official_source_url = 'https://abhayapuricollege.ac.in/coursesprogrammes.php',
  description = '<h2>Abhayapuri College, Bongaigaon overview</h2><p>Abhayapuri College, Bongaigaon in Bongaigaon, Assam, is listed for multidisciplinary higher education. 5 programmes were mapped from reviewed sources: Bachelor of Arts, Bachelor of Science, B.Voc Information Technology, B.Voc Tourism and Travel Management, B.Voc Banking Financial Services and Insurance.</p><p>A current institutional or regulator source was reviewed: The official programme page and current college notices were reviewed for this catalogue.</p><h2>What applicants should verify</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>5 programmes were mapped from reviewed sources: Bachelor of Arts, Bachelor of Science, B.Voc Information Technology, B.Voc Tourism and Travel Management, B.Voc Banking Financial Services and Insurance. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhayapuri College, Bongaigaon courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhayapuri College, Bongaigaon Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhayapuri College, Bongaigaon courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhayapuri College, Bongaigaon, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 5,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abhayapuricollege.ac.in/coursesprogrammes.php","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhayapuri-college-bongaigaon';

DELETE FROM public.course_fees WHERE college_slug = 'abhayapuri-college-bongaigaon';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhayapuri-college-bongaigaon', 'bachelor-of-arts', 'Bachelor of Arts', NULL::numeric, NULL::text, '2026'::text),
  ('abhayapuri-college-bongaigaon', 'bachelor-of-science', 'Bachelor of Science', NULL::numeric, NULL::text, '2026'::text),
  ('abhayapuri-college-bongaigaon', 'b-voc-information-technology', 'B.Voc Information Technology', NULL::numeric, NULL::text, '2026'::text),
  ('abhayapuri-college-bongaigaon', 'b-voc-tourism-and-travel-management', 'B.Voc Tourism and Travel Management', NULL::numeric, NULL::text, '2026'::text),
  ('abhayapuri-college-bongaigaon', 'b-voc-banking-financial-services-and-insurance', 'B.Voc Banking Financial Services and Insurance', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://abhiinstitute.com/admission-2026/',
  official_source_url = 'https://abhiinstitute.com/admission-2026/',
  description = '<h2>Abhi Institute of Hotel Management- [AIHM], New Delhi overview</h2><p>Abhi Institute of Hotel Management- [AIHM], New Delhi in New Delhi, Delhi Ncr, is listed for management. 6 programmes were mapped from reviewed sources: B.Sc Hotel Management, Bachelor of Hotel Management and Catering Technology, Diploma in Hotel Management, Diploma in Food Production, Diploma in Food and Beverage Service, with further options shown in the course table.</p><p>A current institutional or regulator source was reviewed: The official 2026 admission page identifies degree, diploma and short-duration hospitality options. Numeric fees are not copied without programme and fee-head mapping.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>6 programmes were mapped from reviewed sources: B.Sc Hotel Management, Bachelor of Hotel Management and Catering Technology, Diploma in Hotel Management, Diploma in Food Production, Diploma in Food and Beverage Service, with further options shown in the course table. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhi Institute of Hotel Management- [AIHM], New Delhi courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhi Institute of Hotel Management- [AIHM], New Delhi Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhi Institute of Hotel Management- [AIHM], New Delhi courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhi Institute of Hotel Management- [AIHM], New Delhi, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 6,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abhiinstitute.com/admission-2026/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhi-institute-of-hotel-management-aihm-new-delhi';

DELETE FROM public.course_fees WHERE college_slug = 'abhi-institute-of-hotel-management-aihm-new-delhi';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhi-institute-of-hotel-management-aihm-new-delhi', 'b-sc-hotel-management', 'B.Sc Hotel Management', NULL::numeric, NULL::text, '2026'::text),
  ('abhi-institute-of-hotel-management-aihm-new-delhi', 'bachelor-of-hotel-management-and-catering-technology', 'Bachelor of Hotel Management and Catering Technology', NULL::numeric, NULL::text, '2026'::text),
  ('abhi-institute-of-hotel-management-aihm-new-delhi', 'diploma-in-hotel-management', 'Diploma in Hotel Management', NULL::numeric, NULL::text, '2026'::text),
  ('abhi-institute-of-hotel-management-aihm-new-delhi', 'diploma-in-food-production', 'Diploma in Food Production', NULL::numeric, NULL::text, '2026'::text),
  ('abhi-institute-of-hotel-management-aihm-new-delhi', 'diploma-in-food-and-beverage-service', 'Diploma in Food and Beverage Service', NULL::numeric, NULL::text, '2026'::text),
  ('abhi-institute-of-hotel-management-aihm-new-delhi', 'certificate-in-food-production', 'Certificate in Food Production', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://www.bvuniversity.edu.in/akim/',
  official_source_url = 'https://www.bvuniversity.edu.in/akim/',
  description = '<h2>Abhijit Kadam Institute of Management and Social Sciences - [AKIMSS], Solapur overview</h2><p>Abhijit Kadam Institute of Management and Social Sciences - [AKIMSS], Solapur in Solapur, Maharashtra, is listed for management. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The controlling university institute page, placement overview and institutional feature pages were reviewed. The course table remains unchanged pending a complete current prospectus mapping.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhijit Kadam Institute of Management and Social Sciences - [AKIMSS], Solapur courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhijit Kadam Institute of Management and Social Sciences - [AKIMSS], Solapur Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhijit Kadam Institute of Management and Social Sciences - [AKIMSS], Solapur courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhijit Kadam Institute of Management and Social Sciences - [AKIMSS], Solapur, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.bvuniversity.edu.in/akim/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhijit-kadam-institute-of-management-and-social-sciences-akimss-solapur';

UPDATE public.colleges
SET
  official_website = 'https://www.abhilashi-edu.in/acp.php',
  official_source_url = 'https://www.abhilashi-edu.in/acp.php',
  description = '<h2>Abhilashi College of Pharmacy, Mandi overview</h2><p>Abhilashi College of Pharmacy, Mandi in Mandi, Himachal Pradesh, is listed for pharmacy. 1 programme were mapped from reviewed sources: Bachelor of Pharmacy.</p><p>A current institutional or regulator source was reviewed: The official group page identifies the B.Pharm programme and its regulatory and university context.</p><h2>What applicants should verify</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>1 programme were mapped from reviewed sources: Bachelor of Pharmacy. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhilashi College of Pharmacy, Mandi courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhilashi College of Pharmacy, Mandi Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhilashi College of Pharmacy, Mandi courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhilashi College of Pharmacy, Mandi, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 1,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abhilashi-edu.in/acp.php","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhilashi-college-of-pharmacy-mandi';

DELETE FROM public.course_fees WHERE college_slug = 'abhilashi-college-of-pharmacy-mandi';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhilashi-college-of-pharmacy-mandi', 'bachelor-of-pharmacy', 'Bachelor of Pharmacy', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  
  
  description = '<h2>Abhilashi Institute of Life Sciences - [AILS], Mandi overview</h2><p>Abhilashi Institute of Life Sciences - [AILS], Mandi in Mandi, Himachal Pradesh, is listed for multidisciplinary higher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhilashi Institute of Life Sciences - [AILS], Mandi courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhilashi Institute of Life Sciences - [AILS], Mandi Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhilashi Institute of Life Sciences - [AILS], Mandi courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhilashi Institute of Life Sciences - [AILS], Mandi, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhilashi-institute-of-life-sciences-ails-mandi';

UPDATE public.colleges
SET
  official_website = 'https://www.abhilashi-edu.in/aims.php',
  official_source_url = 'https://www.abhilashi-edu.in/aims.php',
  description = '<h2>Abhilashi Institute of Management Studies - [AIMS], Mandi overview</h2><p>Abhilashi Institute of Management Studies - [AIMS], Mandi in Mandi, Himachal Pradesh, is listed for management. 3 programmes were mapped from reviewed sources: Bachelor of Business Administration, Bachelor of Computer Applications, Master of Business Administration.</p><p>A current institutional or regulator source was reviewed: The official institute page identifies BBA, BCA and MBA. Fees remain blank because a complete current fee-head mapping was not established.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>3 programmes were mapped from reviewed sources: Bachelor of Business Administration, Bachelor of Computer Applications, Master of Business Administration. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhilashi Institute of Management Studies - [AIMS], Mandi courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhilashi Institute of Management Studies - [AIMS], Mandi Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhilashi Institute of Management Studies - [AIMS], Mandi courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhilashi Institute of Management Studies - [AIMS], Mandi, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 3,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abhilashi-edu.in/aims.php","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhilashi-institute-of-management-studies-aims-mandi';

DELETE FROM public.course_fees WHERE college_slug = 'abhilashi-institute-of-management-studies-aims-mandi';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhilashi-institute-of-management-studies-aims-mandi', 'bachelor-of-business-administration', 'Bachelor of Business Administration', NULL::numeric, NULL::text, '2026'::text),
  ('abhilashi-institute-of-management-studies-aims-mandi', 'bachelor-of-computer-applications', 'Bachelor of Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  ('abhilashi-institute-of-management-studies-aims-mandi', 'master-of-business-administration', 'Master of Business Administration', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://abhilashicollegeofeducation.in/',
  official_source_url = 'https://abhilashicollegeofeducation.in/',
  description = '<h2>Abhilashi Post Graduate College of Education, Mandi overview</h2><p>Abhilashi Post Graduate College of Education, Mandi in Mandi, Himachal Pradesh, is listed for teacher education. 2 programmes were mapped from reviewed sources: Bachelor of Education, Diploma in Elementary Education.</p><p>A current institutional or regulator source was reviewed: The college and controlling group pages identify its teacher-education programmes.</p><h2>What applicants should verify</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>2 programmes were mapped from reviewed sources: Bachelor of Education, Diploma in Elementary Education. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhilashi Post Graduate College of Education, Mandi courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhilashi Post Graduate College of Education, Mandi Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhilashi Post Graduate College of Education, Mandi courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhilashi Post Graduate College of Education, Mandi, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 2,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abhilashicollegeofeducation.in/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhilashi-post-graduate-college-of-education-mandi';

DELETE FROM public.course_fees WHERE college_slug = 'abhilashi-post-graduate-college-of-education-mandi';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhilashi-post-graduate-college-of-education-mandi', 'bachelor-of-education', 'Bachelor of Education', NULL::numeric, NULL::text, '2026'::text),
  ('abhilashi-post-graduate-college-of-education-mandi', 'diploma-in-elementary-education', 'Diploma in Elementary Education', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://abhinavcomputerscience.org/',
  official_source_url = 'https://abhinavcomputerscience.org/',
  description = '<h2>Abhinav Education Society''s College of Computer Science and Management, Ambegaon overview</h2><p>Abhinav Education Society''s College of Computer Science and Management, Ambegaon in Ambegaon, Maharashtra, is listed for teacher education. 3 programmes were mapped from reviewed sources: B.Sc Computer Science, Bachelor of Computer Applications, Bachelor of Business Administration.</p><p>A current institutional or regulator source was reviewed: The official college site identifies its computing and management undergraduate programmes.</p><h2>What applicants should verify</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>3 programmes were mapped from reviewed sources: B.Sc Computer Science, Bachelor of Computer Applications, Bachelor of Business Administration. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhinav Education Society''s College of Computer Science and Management, Ambegaon courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Education Society''s College of Computer Science and Management, Ambegaon Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Education Society''s College of Computer Science and Management, Ambegaon courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Education Society''s College of Computer Science and Management, Ambegaon, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 3,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abhinavcomputerscience.org/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-education-society039s-college-of-computer-science-and-management-ambegaon';

DELETE FROM public.course_fees WHERE college_slug = 'abhinav-education-society039s-college-of-computer-science-and-management-ambegaon';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhinav-education-society039s-college-of-computer-science-and-management-ambegaon', 'b-sc-computer-science', 'B.Sc Computer Science', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-college-of-computer-science-and-management-ambegaon', 'bachelor-of-computer-applications', 'Bachelor of Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-college-of-computer-science-and-management-ambegaon', 'bachelor-of-business-administration', 'Bachelor of Business Administration', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  
  
  description = '<h2>Abhinav Education Society''s College of Engineering and Technology, Wadwani overview</h2><p>Abhinav Education Society''s College of Engineering and Technology, Wadwani in Wadwani, Maharashtra, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Education Society''s College of Engineering and Technology, Wadwani Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Education Society''s College of Engineering and Technology, Wadwani courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-education-society039s-college-of-engineering-and-technology-wadwani';

UPDATE public.colleges
SET
  official_website = 'https://abhinavpharmacycollege.org/',
  official_source_url = 'https://abhinavpharmacycollege.org/',
  description = '<h2>Abhinav Education Society''s College of Pharmacy, Pune overview</h2><p>Abhinav Education Society''s College of Pharmacy, Pune in Pune, Maharashtra, is listed for pharmacy. 6 programmes were mapped from reviewed sources: Bachelor of Pharmacy, Direct Second Year Bachelor of Pharmacy, Doctor of Pharmacy, Post Baccalaureate Doctor of Pharmacy, M.Pharm Quality Assurance, with further options shown in the course table.</p><p>A current institutional or regulator source was reviewed: The official college catalogue was used. Applicants should confirm current intake and approval for the selected programme.</p><h2>What applicants should verify</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>6 programmes were mapped from reviewed sources: Bachelor of Pharmacy, Direct Second Year Bachelor of Pharmacy, Doctor of Pharmacy, Post Baccalaureate Doctor of Pharmacy, M.Pharm Quality Assurance, with further options shown in the course table. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhinav Education Society''s College of Pharmacy, Pune courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Education Society''s College of Pharmacy, Pune Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Education Society''s College of Pharmacy, Pune courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Education Society''s College of Pharmacy, Pune, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 6,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abhinavpharmacycollege.org/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-education-society039s-college-of-pharmacy-pune';

DELETE FROM public.course_fees WHERE college_slug = 'abhinav-education-society039s-college-of-pharmacy-pune';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhinav-education-society039s-college-of-pharmacy-pune', 'bachelor-of-pharmacy', 'Bachelor of Pharmacy', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-college-of-pharmacy-pune', 'direct-second-year-bachelor-of-pharmacy', 'Direct Second Year Bachelor of Pharmacy', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-college-of-pharmacy-pune', 'doctor-of-pharmacy', 'Doctor of Pharmacy', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-college-of-pharmacy-pune', 'post-baccalaureate-doctor-of-pharmacy', 'Post Baccalaureate Doctor of Pharmacy', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-college-of-pharmacy-pune', 'm-pharm-quality-assurance', 'M.Pharm Quality Assurance', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-college-of-pharmacy-pune', 'bachelor-of-pharmacy-practice', 'Bachelor of Pharmacy Practice', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  
  
  description = '<h2>Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar overview</h2><p>Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar in Ahmed Nagar, Maharashtra, is listed for teacher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-education-society039s-dted-college-akole-ahmed-nagar';

UPDATE public.colleges
SET
  official_website = 'https://aesimr.org/admission/',
  official_source_url = 'https://aesimr.org/admission/',
  description = '<h2>Abhinav Education Society''s Institute of Management and Research - [AESIMR], Pune overview</h2><p>Abhinav Education Society''s Institute of Management and Research - [AESIMR], Pune in Pune, Maharashtra, is listed for teacher education. 2 programmes were mapped from reviewed sources: Master of Business Administration, Master of Computer Applications.</p><p>A current institutional or regulator source was reviewed: The official admission page identifies MBA and MCA as the institute''s principal postgraduate programmes.</p><h2>What applicants should verify</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>2 programmes were mapped from reviewed sources: Master of Business Administration, Master of Computer Applications. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Abhinav Education Society''s Institute of Management and Research - [AESIMR], Pune courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Education Society''s Institute of Management and Research - [AESIMR], Pune Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Education Society''s Institute of Management and Research - [AESIMR], Pune courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Education Society''s Institute of Management and Research - [AESIMR], Pune, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 2,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://aesimr.org/admission/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-education-society039s-institute-of-management-and-research-aesimr-pune';

DELETE FROM public.course_fees WHERE college_slug = 'abhinav-education-society039s-institute-of-management-and-research-aesimr-pune';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abhinav-education-society039s-institute-of-management-and-research-aesimr-pune', 'master-of-business-administration', 'Master of Business Administration', NULL::numeric, NULL::text, '2026'::text),
  ('abhinav-education-society039s-institute-of-management-and-research-aesimr-pune', 'master-of-computer-applications', 'Master of Computer Applications', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://abhinavlaw.org/about-college/',
  official_source_url = 'https://abhinavlaw.org/about-college/',
  description = '<h2>Abhinav Education Society''s Law College, Pune overview</h2><p>Abhinav Education Society''s Law College, Pune in Pune, Maharashtra, is listed for teacher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official college page and mandatory disclosure were reviewed. The programme table is held until the current intake disclosure is mapped.</p><h2>What applicants should verify</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhinav Education Society''s Law College, Pune courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Education Society''s Law College, Pune Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Education Society''s Law College, Pune courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Education Society''s Law College, Pune, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abhinavlaw.org/about-college/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-education-society039s-law-college-pune';

UPDATE public.colleges
SET
  
  
  description = '<h2>Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad overview</h2><p>Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad in Hyderabad, Telangana, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-hi-tech-college-of-engineering-and-technology-ahcet-hyderabad';

UPDATE public.colleges
SET
  official_website = 'https://www.abhinavcollege.org/about.php',
  official_source_url = 'https://www.abhinavcollege.org/about.php',
  description = '<h2>Abhinav Shetkari Shikshan Mandal Degree College, Thane overview</h2><p>Abhinav Shetkari Shikshan Mandal Degree College, Thane in Thane, Maharashtra, is listed for multidisciplinary higher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official college site supports the institution identity. Its current programme list still needs page-by-page verification.</p><h2>What applicants should verify</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhinav Shetkari Shikshan Mandal Degree College, Thane courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhinav Shetkari Shikshan Mandal Degree College, Thane Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhinav Shetkari Shikshan Mandal Degree College, Thane courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhinav Shetkari Shikshan Mandal Degree College, Thane, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abhinavcollege.org/about.php","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhinav-shetkari-shikshan-mandal-degree-college-thane';

UPDATE public.colleges
SET
  official_website = 'https://www.abhishekinstituteofprofessionalstudies.com/',
  official_source_url = 'https://www.abhishekinstituteofprofessionalstudies.com/',
  description = '<h2>Abhishek Institute of Professional Studies - [AIPS], Gwalior overview</h2><p>Abhishek Institute of Professional Studies - [AIPS], Gwalior in Gwalior, Madhya Pradesh, is listed for multidisciplinary higher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official institute site supports its paramedical education focus and campus facilities. The current course list remains pending.</p><h2>What applicants should verify</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Abhishek Institute of Professional Studies - [AIPS], Gwalior courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Abhishek Institute of Professional Studies - [AIPS], Gwalior Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Abhishek Institute of Professional Studies - [AIPS], Gwalior courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Abhishek Institute of Professional Studies - [AIPS], Gwalior, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abhishekinstituteofprofessionalstudies.com/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abhishek-institute-of-professional-studies-aips-gwalior';

UPDATE public.colleges
SET
  official_website = 'https://abmspcoerpune.org/',
  official_source_url = 'https://abmspcoerpune.org/',
  description = '<h2>ABMSP''s Anantrao Pawar College of Engineering & Research - [APCOER], Pune overview</h2><p>ABMSP''s Anantrao Pawar College of Engineering & Research - [APCOER], Pune in Pune, Maharashtra, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official college site and Maharashtra admission authority listing support the institution identity. Branch mapping remains pending.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'ABMSP''s Anantrao Pawar College of Engineering & Research - [APCOER], Pune courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ABMSP''s Anantrao Pawar College of Engineering & Research - [APCOER], Pune Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ABMSP''s Anantrao Pawar College of Engineering & Research - [APCOER], Pune courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ABMSP''s Anantrao Pawar College of Engineering & Research - [APCOER], Pune, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abmspcoerpune.org/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abmsp039s-anantrao-pawar-college-of-engineering-amp-research-apcoer-pune';

UPDATE public.colleges
SET
  official_website = 'https://abrcet.edu.in/',
  official_source_url = 'https://abrcet.edu.in/',
  description = '<h2>ABR College of Engineering and Technology, Prakasam overview</h2><p>ABR College of Engineering and Technology, Prakasam in Prakasam, Andhra Pradesh, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official college site and district listing were reviewed. The course table remains unchanged until a current approval or intake document is mapped.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'ABR College of Engineering and Technology, Prakasam courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ABR College of Engineering and Technology, Prakasam Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ABR College of Engineering and Technology, Prakasam courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ABR College of Engineering and Technology, Prakasam, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abrcet.edu.in/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abr-college-of-engineering-and-technology-prakasam';

UPDATE public.colleges
SET
  official_website = 'https://www.absacademy.com/',
  official_source_url = 'https://www.absacademy.com/',
  description = '<h2>ABS Academy of Science Technology and Management, Bardhaman overview</h2><p>ABS Academy of Science Technology and Management, Bardhaman in Bardhaman, West Bengal, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official academy site supports the institution identity. Its complete current catalogue remains pending.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'ABS Academy of Science Technology and Management, Bardhaman courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ABS Academy of Science Technology and Management, Bardhaman Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ABS Academy of Science Technology and Management, Bardhaman courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ABS Academy of Science Technology and Management, Bardhaman, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.absacademy.com/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abs-academy-of-science-technology-and-management-bardhaman';

UPDATE public.colleges
SET
  official_website = 'https://abss.edu.in/',
  official_source_url = 'https://abss.edu.in/',
  description = '<h2>ABSS Institue of Technology, Meerut overview</h2><p>ABSS Institue of Technology, Meerut in Meerut, Uttar Pradesh, is listed for engineering and technology. 5 programmes were mapped from reviewed sources: B.Tech, M.Tech, Master of Business Administration, Bachelor of Pharmacy, Diploma in Pharmacy.</p><p>A current institutional or regulator source was reviewed: The official institute site identifies engineering, management and pharmacy programmes. Branch-level verification remains necessary.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>5 programmes were mapped from reviewed sources: B.Tech, M.Tech, Master of Business Administration, Bachelor of Pharmacy, Diploma in Pharmacy. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'ABSS Institue of Technology, Meerut courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ABSS Institue of Technology, Meerut Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ABSS Institue of Technology, Meerut courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ABSS Institue of Technology, Meerut, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 5,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://abss.edu.in/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'abss-institue-of-technology-meerut';

DELETE FROM public.course_fees WHERE college_slug = 'abss-institue-of-technology-meerut';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('abss-institue-of-technology-meerut', 'b-tech', 'B.Tech', NULL::numeric, NULL::text, '2026'::text),
  ('abss-institue-of-technology-meerut', 'm-tech', 'M.Tech', NULL::numeric, NULL::text, '2026'::text),
  ('abss-institue-of-technology-meerut', 'master-of-business-administration', 'Master of Business Administration', NULL::numeric, NULL::text, '2026'::text),
  ('abss-institue-of-technology-meerut', 'bachelor-of-pharmacy', 'Bachelor of Pharmacy', NULL::numeric, NULL::text, '2026'::text),
  ('abss-institue-of-technology-meerut', 'diploma-in-pharmacy', 'Diploma in Pharmacy', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  
  
  description = '<h2>ACADEMY ALLIED HEALTH SCIENCES, Kolkata overview</h2><p>ACADEMY ALLIED HEALTH SCIENCES, Kolkata in Kolkata, West Bengal, is listed for health sciences. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ACADEMY ALLIED HEALTH SCIENCES, Kolkata Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ACADEMY ALLIED HEALTH SCIENCES, Kolkata courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-allied-health-sciences-kolkata';

UPDATE public.colleges
SET
  official_website = 'https://atme.edu.in/',
  official_source_url = 'https://atme.edu.in/',
  description = '<h2>Academy for Technical and Management Excellence - [ATME], Mysore overview</h2><p>Academy for Technical and Management Excellence - [ATME], Mysore in Mysore, Karnataka, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official college site publishes current institutional, approval and accreditation information. Exact programme and branch mapping remains pending.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy for Technical and Management Excellence - [ATME], Mysore courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy for Technical and Management Excellence - [ATME], Mysore Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy for Technical and Management Excellence - [ATME], Mysore courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy for Technical and Management Excellence - [ATME], Mysore, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://atme.edu.in/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-for-technical-and-management-excellence-atme-mysore';

UPDATE public.colleges
SET
  official_website = 'https://www.academyofappliedarts.com/our-campus/',
  official_source_url = 'https://www.academyofappliedarts.com/our-campus/',
  description = '<h2>Academy Of Applied Arts - [AOAA], Guwahati overview</h2><p>Academy Of Applied Arts - [AOAA], Guwahati in Guwahati, Assam, is listed for creative studies. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The Academy of Applied Arts site was reviewed, but the historical Guwahati campus identity is not clearly confirmed as currently operating.</p><h2>What applicants should verify</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy Of Applied Arts - [AOAA], Guwahati courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy Of Applied Arts - [AOAA], Guwahati Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy Of Applied Arts - [AOAA], Guwahati courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy Of Applied Arts - [AOAA], Guwahati, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.academyofappliedarts.com/our-campus/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-applied-arts-aoaa-guwahati';

UPDATE public.colleges
SET
  official_website = 'https://www.academyofappliedarts.com/our-campus/',
  official_source_url = 'https://www.academyofappliedarts.com/our-campus/',
  description = '<h2>Academy of Applied Arts North Campus - [AOAA], New Delhi overview</h2><p>Academy of Applied Arts North Campus - [AOAA], New Delhi in New Delhi, Delhi Ncr, is listed for creative studies. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The current academy site confirms Delhi operations, but it does not clearly preserve the legacy north-campus distinction in this database record.</p><h2>What applicants should verify</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Applied Arts North Campus - [AOAA], New Delhi courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Applied Arts North Campus - [AOAA], New Delhi Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Applied Arts North Campus - [AOAA], New Delhi courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Applied Arts North Campus - [AOAA], New Delhi, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.academyofappliedarts.com/our-campus/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-applied-arts-north-campus-aoaa-new-delhi';

UPDATE public.colleges
SET
  official_website = 'https://www.academyofappliedarts.com/our-campus/',
  official_source_url = 'https://www.academyofappliedarts.com/our-campus/',
  description = '<h2>Academy of Applied Arts South Campus - [AOAA], New Delhi overview</h2><p>Academy of Applied Arts South Campus - [AOAA], New Delhi in New Delhi, Delhi Ncr, is listed for creative studies. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The current academy site confirms Delhi operations, but it does not clearly preserve the legacy south-campus distinction in this database record.</p><h2>What applicants should verify</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Applied Arts South Campus - [AOAA], New Delhi courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Applied Arts South Campus - [AOAA], New Delhi Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Applied Arts South Campus - [AOAA], New Delhi courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Applied Arts South Campus - [AOAA], New Delhi, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.academyofappliedarts.com/our-campus/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-applied-arts-south-campus-aoaa-new-delhi';

UPDATE public.colleges
SET
  official_website = 'https://rachanasansad.edu.in/academy-of-architecture/',
  official_source_url = 'https://rachanasansad.edu.in/academy-of-architecture/',
  description = '<h2>Academy of Architecture - [AIA], Mumbai overview</h2><p>Academy of Architecture - [AIA], Mumbai in Mumbai, Maharashtra, is listed for architecture. 1 programme were mapped from reviewed sources: Bachelor of Architecture.</p><p>A current institutional or regulator source was reviewed: The official Rachana Sansad page identifies the five-year B.Arch programme affiliated with the University of Mumbai.</p><h2>What applicants should verify</h2><p>Confirm Council of Architecture status, aptitude-test requirements, studio access and the current university affiliation. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>1 programme were mapped from reviewed sources: Bachelor of Architecture. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Academy of Architecture - [AIA], Mumbai courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm Council of Architecture status, aptitude-test requirements, studio access and the current university affiliation.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm Council of Architecture status, aptitude-test requirements, studio access and the current university affiliation. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Architecture - [AIA], Mumbai Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Architecture - [AIA], Mumbai courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Architecture - [AIA], Mumbai, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 1,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://rachanasansad.edu.in/academy-of-architecture/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-architecture-aia-mumbai';

DELETE FROM public.course_fees WHERE college_slug = 'academy-of-architecture-aia-mumbai';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('academy-of-architecture-aia-mumbai', 'bachelor-of-architecture', 'Bachelor of Architecture', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://www.abaindia.com/',
  official_source_url = 'https://www.abaindia.com/',
  description = '<h2>Academy of Business Administration - [ABA], Balasore overview</h2><p>Academy of Business Administration - [ABA], Balasore in Balasore, Orissa, is listed for management. 4 programmes were mapped from reviewed sources: Bachelor of Business Administration, Bachelor of Computer Applications, Master of Business Administration, Master of Computer Applications.</p><p>A current institutional or regulator source was reviewed: The official site and 2026-27 AICTE approval references identify BBA, BCA, MBA and MCA.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>4 programmes were mapped from reviewed sources: Bachelor of Business Administration, Bachelor of Computer Applications, Master of Business Administration, Master of Computer Applications. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Academy of Business Administration - [ABA], Balasore courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Business Administration - [ABA], Balasore Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Business Administration - [ABA], Balasore courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Business Administration - [ABA], Balasore, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 4,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.abaindia.com/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-business-administration-aba-balasore';

DELETE FROM public.course_fees WHERE college_slug = 'academy-of-business-administration-aba-balasore';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('academy-of-business-administration-aba-balasore', 'bachelor-of-business-administration', 'Bachelor of Business Administration', NULL::numeric, NULL::text, '2026'::text),
  ('academy-of-business-administration-aba-balasore', 'bachelor-of-computer-applications', 'Bachelor of Computer Applications', NULL::numeric, NULL::text, '2026'::text),
  ('academy-of-business-administration-aba-balasore', 'master-of-business-administration', 'Master of Business Administration', NULL::numeric, NULL::text, '2026'::text),
  ('academy-of-business-administration-aba-balasore', 'master-of-computer-applications', 'Master of Computer Applications', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  
  
  description = '<h2>Academy of Business Management Tourism and Research- [ABMTR], Bangalore overview</h2><p>Academy of Business Management Tourism and Research- [ABMTR], Bangalore in Bangalore, Karnataka, is listed for management. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Business Management Tourism and Research- [ABMTR], Bangalore Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Business Management Tourism and Research- [ABMTR], Bangalore courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-business-management-tourism-and-research-abmtr-bangalore';

UPDATE public.colleges
SET
  official_website = 'https://carveraviation.com/',
  official_source_url = 'https://carveraviation.com/',
  description = '<h2>Academy of Carver Aviation Pvt Ltd, Pune overview</h2><p>Academy of Carver Aviation Pvt Ltd, Pune in Pune, Maharashtra, is listed for specialist professional. 1 programme were mapped from reviewed sources: Commercial Pilot Licence Training.</p><p>A current institutional or regulator source was reviewed: The official flying school site and DGCA listing support the commercial pilot training identity. Aircraft maintenance training is not merged into this row.</p><h2>What applicants should verify</h2><p>Confirm the regulator, licence or competency pathway, practical-training hours and the exact certification awarded. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>1 programme were mapped from reviewed sources: Commercial Pilot Licence Training. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Academy of Carver Aviation Pvt Ltd, Pune courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the regulator, licence or competency pathway, practical-training hours and the exact certification awarded.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the regulator, licence or competency pathway, practical-training hours and the exact certification awarded. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Carver Aviation Pvt Ltd, Pune Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Carver Aviation Pvt Ltd, Pune courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Carver Aviation Pvt Ltd, Pune, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 1,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://carveraviation.com/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-carver-aviation-pvt-ltd-pune';

DELETE FROM public.course_fees WHERE college_slug = 'academy-of-carver-aviation-pvt-ltd-pune';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('academy-of-carver-aviation-pvt-ltd-pune', 'commercial-pilot-licence-training', 'Commercial Pilot Licence Training', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  
  
  description = '<h2>Academy of Fashion and Textile Technology - [AFTT], Chennai overview</h2><p>Academy of Fashion and Textile Technology - [AFTT], Chennai in Chennai, Tamil Nadu, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Fashion and Textile Technology - [AFTT], Chennai courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Fashion and Textile Technology - [AFTT], Chennai Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Fashion and Textile Technology - [AFTT], Chennai courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Fashion and Textile Technology - [AFTT], Chennai, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-fashion-and-textile-technology-aftt-chennai';

UPDATE public.colleges
SET
  official_website = 'https://ahaindia.org/',
  official_source_url = 'https://ahaindia.org/',
  description = '<h2>Academy of Hospital Administration - [AHA], Noida overview</h2><p>Academy of Hospital Administration - [AHA], Noida in Noida, Uttar Pradesh, is listed for multidisciplinary higher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The Academy of Hospital Administration site and its Noida programme prospectus were reviewed. Short courses are not treated as a stable degree catalogue.</p><h2>What applicants should verify</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Hospital Administration - [AHA], Noida courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Hospital Administration - [AHA], Noida Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Hospital Administration - [AHA], Noida courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Hospital Administration - [AHA], Noida, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://ahaindia.org/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-hospital-administration-aha-noida';

UPDATE public.colleges
SET
  
  
  description = '<h2>Academy of Management Professional Development - [AMPD], Thane overview</h2><p>Academy of Management Professional Development - [AMPD], Thane in Thane, Maharashtra, is listed for management. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Management Professional Development - [AMPD], Thane courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Management Professional Development - [AMPD], Thane Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Management Professional Development - [AMPD], Thane courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Management Professional Development - [AMPD], Thane, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-management-professional-development-ampd-thane';

UPDATE public.colleges
SET
  
  
  description = '<h2>Academy of Management Studies - [AMS], Dehradun overview</h2><p>Academy of Management Studies - [AMS], Dehradun in Dehradun, Uttarakhand, is listed for management. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Management Studies - [AMS], Dehradun courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Management Studies - [AMS], Dehradun Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Management Studies - [AMS], Dehradun courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Management Studies - [AMS], Dehradun, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-management-studies-ams-dehradun';

UPDATE public.colleges
SET
  official_website = 'https://www.ametuniv.ac.in/admissions',
  official_source_url = 'https://www.ametuniv.ac.in/admissions',
  description = '<h2>Academy of Maritime Education and Training University - [AMET], Chennai overview</h2><p>Academy of Maritime Education and Training University - [AMET], Chennai in Chennai, Tamil Nadu, is listed for specialist professional. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official 2026 admissions portal confirms programmes across maritime studies, engineering, computing, management, commerce, life sciences and doctoral study. The large catalogue requires a dedicated faculty-level mapping.</p><h2>What applicants should verify</h2><p>Confirm the regulator, licence or competency pathway, practical-training hours and the exact certification awarded. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Maritime Education and Training University - [AMET], Chennai courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the regulator, licence or competency pathway, practical-training hours and the exact certification awarded.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the regulator, licence or competency pathway, practical-training hours and the exact certification awarded. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Maritime Education and Training University - [AMET], Chennai Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Maritime Education and Training University - [AMET], Chennai courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Maritime Education and Training University - [AMET], Chennai, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.ametuniv.ac.in/admissions","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-maritime-education-and-training-university-amet-chennai';

UPDATE public.colleges
SET
  
  
  description = '<h2>Academy of Medical Science Pariyaram , Kannur overview</h2><p>Academy of Medical Science Pariyaram , Kannur in Kannur, Kerala, is listed for health sciences. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Medical Science Pariyaram , Kannur courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Medical Science Pariyaram , Kannur Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Medical Science Pariyaram , Kannur courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Medical Science Pariyaram , Kannur, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-medical-science-pariyaram-kannur';

UPDATE public.colleges
SET
  official_website = 'https://www.pci.nic.in/pdf/322_web.pdf',
  official_source_url = 'https://www.pci.nic.in/pdf/322_web.pdf',
  description = '<h2>Academy of Pharmaceutical Sciences Pariyaram, Kannur overview</h2><p>Academy of Pharmaceutical Sciences Pariyaram, Kannur in Kannur, Kerala, is listed for pharmacy. 5 programmes were mapped from reviewed sources: Bachelor of Pharmacy, Doctor of Pharmacy, M.Pharm Pharmacognosy, M.Pharm Pharmaceutics, M.Pharm Pharmacology.</p><p>A current institutional or regulator source was reviewed: Pharmacy Council and Kerala entrance-authority records support the institution and current postgraduate specialisations. Fees remain blank.</p><h2>What applicants should verify</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>5 programmes were mapped from reviewed sources: Bachelor of Pharmacy, Doctor of Pharmacy, M.Pharm Pharmacognosy, M.Pharm Pharmaceutics, M.Pharm Pharmacology. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Academy of Pharmaceutical Sciences Pariyaram, Kannur courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Pharmaceutical Sciences Pariyaram, Kannur Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Pharmaceutical Sciences Pariyaram, Kannur courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Pharmaceutical Sciences Pariyaram, Kannur, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 5,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.pci.nic.in/pdf/322_web.pdf","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-pharmaceutical-sciences-pariyaram-kannur';

DELETE FROM public.course_fees WHERE college_slug = 'academy-of-pharmaceutical-sciences-pariyaram-kannur';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('academy-of-pharmaceutical-sciences-pariyaram-kannur', 'bachelor-of-pharmacy', 'Bachelor of Pharmacy', NULL::numeric, NULL::text, '2026'::text),
  ('academy-of-pharmaceutical-sciences-pariyaram-kannur', 'doctor-of-pharmacy', 'Doctor of Pharmacy', NULL::numeric, NULL::text, '2026'::text),
  ('academy-of-pharmaceutical-sciences-pariyaram-kannur', 'm-pharm-pharmacognosy', 'M.Pharm Pharmacognosy', NULL::numeric, NULL::text, '2026'::text),
  ('academy-of-pharmaceutical-sciences-pariyaram-kannur', 'm-pharm-pharmaceutics', 'M.Pharm Pharmaceutics', NULL::numeric, NULL::text, '2026'::text),
  ('academy-of-pharmaceutical-sciences-pariyaram-kannur', 'm-pharm-pharmacology', 'M.Pharm Pharmacology', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://aot.edu.in/',
  official_source_url = 'https://aot.edu.in/',
  description = '<h2>Academy of Technology - [AOT], Hooghly overview</h2><p>Academy of Technology - [AOT], Hooghly in Hooghly, West Bengal, is listed for engineering and technology. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A current institutional or regulator source was reviewed: The official college domain and its 2026 academic calendar support current operation. Branch-level catalogue mapping remains pending.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Academy of Technology - [AOT], Hooghly courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Academy of Technology - [AOT], Hooghly Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Academy of Technology - [AOT], Hooghly courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Academy of Technology - [AOT], Hooghly, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://aot.edu.in/","catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'academy-of-technology-aot-hooghly';

UPDATE public.colleges
SET
  
  
  description = '<h2>ACC Jain College of Education, Birbhum overview</h2><p>ACC Jain College of Education, Birbhum in Birbhum, West Bengal, is listed for teacher education. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'ACC Jain College of Education, Birbhum courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('ACC Jain College of Education, Birbhum Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore ACC Jain College of Education, Birbhum courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'ACC Jain College of Education, Birbhum, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'acc-jain-college-of-education-birbhum';

UPDATE public.colleges
SET
  
  
  description = '<h2>Access Atlantech Media College, Chennai overview</h2><p>Access Atlantech Media College, Chennai in Chennai, Tamil Nadu, is listed for creative studies. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Access Atlantech Media College, Chennai courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Access Atlantech Media College, Chennai Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Access Atlantech Media College, Chennai courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Access Atlantech Media College, Chennai, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'access-atlantech-media-college-chennai';

UPDATE public.colleges
SET
  
  
  description = '<h2>Accman Institute of Management - [ACCMANIM], Greater Noida overview</h2><p>Accman Institute of Management - [ACCMANIM], Greater Noida in Greater Noida, Uttar Pradesh, is listed for management. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Accman Institute of Management - [ACCMANIM], Greater Noida courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Accman Institute of Management - [ACCMANIM], Greater Noida Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Accman Institute of Management - [ACCMANIM], Greater Noida courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Accman Institute of Management - [ACCMANIM], Greater Noida, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'accman-institute-of-management-accmanim-greater-noida';

UPDATE public.colleges
SET
  
  
  description = '<h2>Accord Business School - [ABS], Tirupati overview</h2><p>Accord Business School - [ABS], Tirupati in Tirupati, Andhra Pradesh, is listed for management. The existing course list is not labelled official in this pass because a complete current catalogue was not established.</p><p>A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.</p><h2>What applicants should verify</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>The existing course list is not labelled official in this pass because a complete current catalogue was not established. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>Not yet. The existing list is preserved and the record remains queued for a full official catalogue review.</p>',
  page_summary = 'Accord Business School - [ABS], Tirupati courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Accord Business School - [ABS], Tirupati Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Accord Business School - [ABS], Tirupati courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Accord Business School - [ABS], Tirupati, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'source_review_partial',
  official_courses_verified = false,
  official_fees_verified = false,
  
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":null,"catalogue_status":"pending","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'accord-business-school-abs-tirupati';

UPDATE public.colleges
SET
  official_website = 'https://architecture.accurate.in/',
  official_source_url = 'https://architecture.accurate.in/',
  description = '<h2>Accurate Institute of Architecture and Planning - [AIAP], Greater Noida overview</h2><p>Accurate Institute of Architecture and Planning - [AIAP], Greater Noida in Greater Noida, Uttar Pradesh, is listed for architecture. 1 programme were mapped from reviewed sources: Bachelor of Architecture.</p><p>A current institutional or regulator source was reviewed: The official architecture school site identifies its five-year B.Arch programme and campus facilities.</p><h2>What applicants should verify</h2><p>Confirm Council of Architecture status, aptitude-test requirements, studio access and the current university affiliation. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>1 programme were mapped from reviewed sources: Bachelor of Architecture. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Accurate Institute of Architecture and Planning - [AIAP], Greater Noida courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm Council of Architecture status, aptitude-test requirements, studio access and the current university affiliation.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm Council of Architecture status, aptitude-test requirements, studio access and the current university affiliation. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Accurate Institute of Architecture and Planning - [AIAP], Greater Noida Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Accurate Institute of Architecture and Planning - [AIAP], Greater Noida courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Accurate Institute of Architecture and Planning - [AIAP], Greater Noida, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 1,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://architecture.accurate.in/","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'accurate-institute-of-architecture-and-planning-aiap-greater-noida';

DELETE FROM public.course_fees WHERE college_slug = 'accurate-institute-of-architecture-and-planning-aiap-greater-noida';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('accurate-institute-of-architecture-and-planning-aiap-greater-noida', 'bachelor-of-architecture', 'Bachelor of Architecture', NULL::numeric, NULL::text, '2026'::text);

UPDATE public.colleges
SET
  official_website = 'https://www.accurate.in/engg/about-aimt.php',
  official_source_url = 'https://www.accurate.in/engg/about-aimt.php',
  description = '<h2>Accurate Institute of Management and Technology - Greater Noida overview</h2><p>Accurate Institute of Management and Technology - Greater Noida in Greater Noida, Uttar Pradesh, is listed for engineering and technology. 2 programmes were mapped from reviewed sources: Bachelor of Technology, Master of Computer Applications.</p><p>A current institutional or regulator source was reviewed: The official AIMT page identifies B.Tech and MCA for this institute. Other Accurate Group programmes are not assigned to this college row.</p><h2>What applicants should verify</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p><h2>Courses and fees</h2><p>2 programmes were mapped from reviewed sources: Bachelor of Technology, Master of Computer Applications. No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p><h2>Admissions</h2><p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p><h2>Placements and careers</h2><p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p><h2>Facilities, hostel and scholarships</h2><p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p><h2>Quick answers</h2><h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p><h3>Is the course list complete?</h3><p>The listed programme names were mapped from the reviewed source, but intake and availability can change by session.</p>',
  page_summary = 'Accurate Institute of Management and Technology - Greater Noida courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.',
  eligibility_criteria = '<h2>Eligibility</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>',
  admission_process = '<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>',
  placement_content = '<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>',
  facilities_content = '<h2>Facilities to check</h2><p>Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year. Confirm that the selected department can use the advertised resources.</p>',
  hostel_life = '<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>',
  scholarship_details = '<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>',
  rankings_content = '<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>',
  meta_title = left('Accurate Institute of Management and Technology - Greater Noida Courses, Admission and Campus Guide', 70),
  meta_description = left('Explore Accurate Institute of Management and Technology - Greater Noida courses, admissions, facilities and career context, with source status and applicant checks clearly explained.', 160),
  meta_keywords = 'Accurate Institute of Management and Technology - Greater Noida, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals',
  data_clean_method = 'official_source_content',
  official_courses_verified = true,
  official_fees_verified = false,
  courses_count = 2,
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = 'Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified.',
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || '{"batch":"college-official-content-batch-002","checked_at":"2026-07-30","source":"https://www.accurate.in/engg/about-aimt.php","catalogue_status":"verified","fee_status":"not_verified","writing_policy":"original_source_grounded_ascii_hyphens"}'::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = 'accurate-institute-of-management-and-technology-aimt-greater-noida';

DELETE FROM public.course_fees WHERE college_slug = 'accurate-institute-of-management-and-technology-aimt-greater-noida';
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('accurate-institute-of-management-and-technology-aimt-greater-noida', 'bachelor-of-technology', 'Bachelor of Technology', NULL::numeric, NULL::text, '2026'::text),
  ('accurate-institute-of-management-and-technology-aimt-greater-noida', 'master-of-computer-applications', 'Master of Computer Applications', NULL::numeric, NULL::text, '2026'::text);

NOTIFY pgrst, 'reload schema';
COMMIT;
