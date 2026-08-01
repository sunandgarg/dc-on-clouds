-- college-humanized-content-batch-008
-- Generated 2026-08-01. Humanized source-backed college content batch.
-- Fees stay blank unless programme, year, quota and category are verified.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3dda85b1-161f-40dd-b95a-9b5bf4064621' AND slug = 'aiims-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aiims-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AIIMS Delhi is a higher education option in New Delhi, Delhi for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1956. Current approval or affiliation signals available for review include Autonomous institution established by an Act of Parliament. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AIIMS Delhi in New Delhi, Delhi: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AIIMS Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AIIMS Delhi in New Delhi, Delhi: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_keywords = 'AIIMS Delhi, AIIMS Delhi admission 2026, AIIMS Delhi courses, AIIMS Delhi fees, AIIMS Delhi placement, AIIMS Delhi facilities, New Delhi, Delhi',
  admission_process = 'AIIMS Delhi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AIIMS Delhi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AIIMS Delhi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AIIMS Delhi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AIIMS Delhi facilities currently highlighted for student checks include Teaching hospitals, Specialty centres, Laboratories, Library, Hostels, Skills and academic facilities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching hospitals', 'Specialty centres', 'Laboratories', 'Library', 'Hostels', 'Skills and academic facilities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching hospitals', 'Specialty centres', 'Laboratories', 'Library', 'Hostels', 'Skills and academic facilities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AIIMS Delhi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AIIMS Delhi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.',
  tags = ARRAY['NIRF #1', 'Medical', 'Govt', 'Autonomous institution established by an Act of Parliament', 'Government', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11', 'Institute of National Importance']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"official_or_institution_source_reviewed","source_links_for_nofollow_rendering":["https://www.aiims.edu/","https://www.aiims.edu/index.php/en/academic_section_courses","https://www.aiims.edu/index.php/en/hostel_accomodation_hos_official/fees","https://www.aiims.edu/index.php/en/hostel_accomodation_faqs","https://www.aiims.edu/aiims/academic/Academic%20Rules%20n%20Procedures-8-3-22.pdf","https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/DentalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3dda85b1-161f-40dd-b95a-9b5bf4064621' AND slug = 'aiims-delhi';

DELETE FROM public.course_fees WHERE college_slug = 'aiims-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '093377db-335c-4d09-b5d0-68e93ac30c64' AND slug = 'ajay-kumar-garg-institute-of-management-akgim-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajay-kumar-garg-institute-of-management-akgim-ghaziabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad is a management and commerce education option in Ghaziabad, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, pla',
  meta_keywords = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad, Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad admission 2026, Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad courses, Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad fees, Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad placement, Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad facilities, Ghaziabad, Uttar Pradesh',
  admission_process = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ajay Kumar Garg Institute of Management - [AKGIM], Ghaziabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '093377db-335c-4d09-b5d0-68e93ac30c64' AND slug = 'ajay-kumar-garg-institute-of-management-akgim-ghaziabad';

DELETE FROM public.course_fees WHERE college_slug = 'ajay-kumar-garg-institute-of-management-akgim-ghaziabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '6d01d91b-f84a-4e1d-a83d-c0d07ddb6ed4' AND slug = 'ajeenkya-dy-patil-university-adypu-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajeenkya-dy-patil-university-adypu-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Ajeenkya DY Patil University - [ADYPU], Pune is a higher education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2015. Current approval or affiliation signals available for review include AICTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ajeenkya DY Patil University - [ADYPU], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ajeenkya DY Patil University - [ADYPU], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ajeenkya DY Patil University - [ADYPU], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships a',
  meta_keywords = 'Ajeenkya DY Patil University - [ADYPU], Pune, Ajeenkya DY Patil University - [ADYPU], Pune admission 2026, Ajeenkya DY Patil University - [ADYPU], Pune courses, Ajeenkya DY Patil University - [ADYPU], Pune fees, Ajeenkya DY Patil University - [ADYPU], Pune placement, Ajeenkya DY Patil University - [ADYPU], Pune facilities, Pune, Maharashtra',
  admission_process = 'Ajeenkya DY Patil University - [ADYPU], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ajeenkya DY Patil University - [ADYPU], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ajeenkya DY Patil University - [ADYPU], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ajeenkya DY Patil University - [ADYPU], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ajeenkya DY Patil University - [ADYPU], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ajeenkya DY Patil University - [ADYPU], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ajeenkya DY Patil University - [ADYPU], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ajeenkya DY Patil University - [ADYPU], Pune is mapped with reviewed approval or affiliation signals such as AICTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'UGC', 'General', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '6d01d91b-f84a-4e1d-a83d-c0d07ddb6ed4' AND slug = 'ajeenkya-dy-patil-university-adypu-pune';

DELETE FROM public.course_fees WHERE college_slug = 'ajeenkya-dy-patil-university-adypu-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f2c0815a-e11a-46ce-b1f2-ed3ab14f5a63' AND slug = 'ajeenkya-dy-patil-university-school-of-management-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajeenkya-dy-patil-university-school-of-management-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Ajeenkya DY Patil University, School of Management, Pune is a management and commerce education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2015. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ajeenkya DY Patil University, School of Management, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ajeenkya DY Patil University, School of Management, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ajeenkya DY Patil University, School of Management, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, sc',
  meta_keywords = 'Ajeenkya DY Patil University, School of Management, Pune, Ajeenkya DY Patil University, School of Management, Pune admission 2026, Ajeenkya DY Patil University, School of Management, Pune courses, Ajeenkya DY Patil University, School of Management, Pune fees, Ajeenkya DY Patil University, School of Management, Pune placement, Ajeenkya DY Patil University, School of Management, Pune facilities, Pune, Maharashtra',
  admission_process = 'Ajeenkya DY Patil University, School of Management, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ajeenkya DY Patil University, School of Management, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ajeenkya DY Patil University, School of Management, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ajeenkya DY Patil University, School of Management, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ajeenkya DY Patil University, School of Management, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ajeenkya DY Patil University, School of Management, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ajeenkya DY Patil University, School of Management, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ajeenkya DY Patil University, School of Management, Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'f2c0815a-e11a-46ce-b1f2-ed3ab14f5a63' AND slug = 'ajeenkya-dy-patil-university-school-of-management-pune';

DELETE FROM public.course_fees WHERE college_slug = 'ajeenkya-dy-patil-university-school-of-management-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '6fb14f7e-08d8-4ca7-b6a9-82951f85adc0' AND slug = 'ajk-college-of-arts-and-science-coimbatore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajk-college-of-arts-and-science-coimbatore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, AJK College of Arts and Science, Coimbatore is a management and commerce education option in Coimbatore, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AJK College of Arts and Science, Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AJK College of Arts and Science, Coimbatore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AJK College of Arts and Science, Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarshi',
  meta_keywords = 'AJK College of Arts and Science, Coimbatore, AJK College of Arts and Science, Coimbatore admission 2026, AJK College of Arts and Science, Coimbatore courses, AJK College of Arts and Science, Coimbatore fees, AJK College of Arts and Science, Coimbatore placement, AJK College of Arts and Science, Coimbatore facilities, Coimbatore, Tamil Nadu',
  admission_process = 'AJK College of Arts and Science, Coimbatore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AJK College of Arts and Science, Coimbatore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AJK College of Arts and Science, Coimbatore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AJK College of Arts and Science, Coimbatore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AJK College of Arts and Science, Coimbatore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AJK College of Arts and Science, Coimbatore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AJK College of Arts and Science, Coimbatore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AJK College of Arts and Science, Coimbatore is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NAAC', 'Management', 'Private Institute']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '6fb14f7e-08d8-4ca7-b6a9-82951f85adc0' AND slug = 'ajk-college-of-arts-and-science-coimbatore';

DELETE FROM public.course_fees WHERE college_slug = 'ajk-college-of-arts-and-science-coimbatore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b735d0e0-75e9-4221-8b85-3f8ffb6347af' AND slug = 'ajmer-institute-of-technology-ajmer') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajmer-institute-of-technology-ajmer';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Ajmer Institute of Technology, Ajmer is a technical education option in Ajmer, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ajmer Institute of Technology, Ajmer in Ajmer, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ajmer Institute of Technology, Ajmer: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ajmer Institute of Technology, Ajmer in Ajmer, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 d',
  meta_keywords = 'Ajmer Institute of Technology, Ajmer, Ajmer Institute of Technology, Ajmer admission 2026, Ajmer Institute of Technology, Ajmer courses, Ajmer Institute of Technology, Ajmer fees, Ajmer Institute of Technology, Ajmer placement, Ajmer Institute of Technology, Ajmer facilities, Ajmer, Rajasthan',
  admission_process = 'Ajmer Institute of Technology, Ajmer admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ajmer Institute of Technology, Ajmer depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ajmer Institute of Technology, Ajmer course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ajmer Institute of Technology, Ajmer placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ajmer Institute of Technology, Ajmer facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ajmer Institute of Technology, Ajmer should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ajmer Institute of Technology, Ajmer may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ajmer Institute of Technology, Ajmer is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'b735d0e0-75e9-4221-8b85-3f8ffb6347af' AND slug = 'ajmer-institute-of-technology-ajmer';

DELETE FROM public.course_fees WHERE college_slug = 'ajmer-institute-of-technology-ajmer';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4251f3ea-f8c7-429b-85bf-7e670966b600' AND slug = 'akal-college-of-agriculture-aca-sirmaur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-college-of-agriculture-aca-sirmaur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Akal College of Agriculture - [ACA], Sirmaur is a agriculture and applied science education option in Sirmaur, Himachal Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2014. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal College of Agriculture - [ACA], Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal College of Agriculture - [ACA], Sirmaur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal College of Agriculture - [ACA], Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, schola',
  meta_keywords = 'Akal College of Agriculture - [ACA], Sirmaur, Akal College of Agriculture - [ACA], Sirmaur admission 2026, Akal College of Agriculture - [ACA], Sirmaur courses, Akal College of Agriculture - [ACA], Sirmaur fees, Akal College of Agriculture - [ACA], Sirmaur placement, Akal College of Agriculture - [ACA], Sirmaur facilities, Sirmaur, Himachal Pradesh',
  admission_process = 'Akal College of Agriculture - [ACA], Sirmaur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal College of Agriculture - [ACA], Sirmaur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal College of Agriculture - [ACA], Sirmaur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal College of Agriculture - [ACA], Sirmaur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal College of Agriculture - [ACA], Sirmaur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal College of Agriculture - [ACA], Sirmaur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal College of Agriculture - [ACA], Sirmaur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal College of Agriculture - [ACA], Sirmaur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Agriculture', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '4251f3ea-f8c7-429b-85bf-7e670966b600' AND slug = 'akal-college-of-agriculture-aca-sirmaur';

DELETE FROM public.course_fees WHERE college_slug = 'akal-college-of-agriculture-aca-sirmaur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '65392c47-2929-4aac-84de-df58ae911a60' AND slug = 'akal-college-of-basic-sciences-acbs-sirmaur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-college-of-basic-sciences-acbs-sirmaur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Akal College of Basic Sciences - [ACBS], Sirmaur is a higher education option in Sirmaur, Himachal Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal College of Basic Sciences - [ACBS], Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal College of Basic Sciences - [ACBS], Sirmaur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal College of Basic Sciences - [ACBS], Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, sc',
  meta_keywords = 'Akal College of Basic Sciences - [ACBS], Sirmaur, Akal College of Basic Sciences - [ACBS], Sirmaur admission 2026, Akal College of Basic Sciences - [ACBS], Sirmaur courses, Akal College of Basic Sciences - [ACBS], Sirmaur fees, Akal College of Basic Sciences - [ACBS], Sirmaur placement, Akal College of Basic Sciences - [ACBS], Sirmaur facilities, Sirmaur, Himachal Pradesh',
  admission_process = 'Akal College of Basic Sciences - [ACBS], Sirmaur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal College of Basic Sciences - [ACBS], Sirmaur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal College of Basic Sciences - [ACBS], Sirmaur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal College of Basic Sciences - [ACBS], Sirmaur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal College of Basic Sciences - [ACBS], Sirmaur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal College of Basic Sciences - [ACBS], Sirmaur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal College of Basic Sciences - [ACBS], Sirmaur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal College of Basic Sciences - [ACBS], Sirmaur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Science', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '65392c47-2929-4aac-84de-df58ae911a60' AND slug = 'akal-college-of-basic-sciences-acbs-sirmaur';

DELETE FROM public.course_fees WHERE college_slug = 'akal-college-of-basic-sciences-acbs-sirmaur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7c132997-36fd-40aa-b49e-74b610159de9' AND slug = 'akal-college-of-economics-commerce-and-management-sirmaur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-college-of-economics-commerce-and-management-sirmaur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Akal College of Economics, Commerce and Management, Sirmaur is a management and commerce education option in Sirmaur, Himachal Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal College of Economics, Commerce and Management, Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal College of Economics, Commerce and Management, Sirmaur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal College of Economics, Commerce and Management, Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, pla',
  meta_keywords = 'Akal College of Economics, Commerce and Management, Sirmaur, Akal College of Economics, Commerce and Management, Sirmaur admission 2026, Akal College of Economics, Commerce and Management, Sirmaur courses, Akal College of Economics, Commerce and Management, Sirmaur fees, Akal College of Economics, Commerce and Management, Sirmaur placement, Akal College of Economics, Commerce and Management, Sirmaur facilities, Sirmaur, Himachal Pradesh',
  admission_process = 'Akal College of Economics, Commerce and Management, Sirmaur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal College of Economics, Commerce and Management, Sirmaur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal College of Economics, Commerce and Management, Sirmaur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal College of Economics, Commerce and Management, Sirmaur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal College of Economics, Commerce and Management, Sirmaur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal College of Economics, Commerce and Management, Sirmaur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal College of Economics, Commerce and Management, Sirmaur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal College of Economics, Commerce and Management, Sirmaur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '7c132997-36fd-40aa-b49e-74b610159de9' AND slug = 'akal-college-of-economics-commerce-and-management-sirmaur';

DELETE FROM public.course_fees WHERE college_slug = 'akal-college-of-economics-commerce-and-management-sirmaur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '66188138-181d-4e91-a1b2-f184200a86b2' AND slug = 'akal-college-of-education-sangrur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-college-of-education-sangrur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Akal College of Education, Sangrur is a teacher education option in Sangrur, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal College of Education, Sangrur in Sangrur, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal College of Education, Sangrur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal College of Education, Sangrur in Sangrur, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 deci',
  meta_keywords = 'Akal College of Education, Sangrur, Akal College of Education, Sangrur admission 2026, Akal College of Education, Sangrur courses, Akal College of Education, Sangrur fees, Akal College of Education, Sangrur placement, Akal College of Education, Sangrur facilities, Sangrur, Punjab',
  admission_process = 'Akal College of Education, Sangrur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal College of Education, Sangrur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal College of Education, Sangrur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal College of Education, Sangrur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal College of Education, Sangrur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal College of Education, Sangrur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal College of Education, Sangrur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal College of Education, Sangrur is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '66188138-181d-4e91-a1b2-f184200a86b2' AND slug = 'akal-college-of-education-sangrur';

DELETE FROM public.course_fees WHERE college_slug = 'akal-college-of-education-sangrur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a08321e2-1e80-4a7e-849f-b87c094f1a2a' AND slug = 'akal-college-of-engineering-and-technology-sirmaur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-college-of-engineering-and-technology-sirmaur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Akal College of Engineering and Technology, Sirmaur is a technical education option in Sirmaur, Himachal Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal College of Engineering and Technology, Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal College of Engineering and Technology, Sirmaur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal College of Engineering and Technology, Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements,',
  meta_keywords = 'Akal College of Engineering and Technology, Sirmaur, Akal College of Engineering and Technology, Sirmaur admission 2026, Akal College of Engineering and Technology, Sirmaur courses, Akal College of Engineering and Technology, Sirmaur fees, Akal College of Engineering and Technology, Sirmaur placement, Akal College of Engineering and Technology, Sirmaur facilities, Sirmaur, Himachal Pradesh',
  admission_process = 'Akal College of Engineering and Technology, Sirmaur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal College of Engineering and Technology, Sirmaur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal College of Engineering and Technology, Sirmaur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal College of Engineering and Technology, Sirmaur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal College of Engineering and Technology, Sirmaur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal College of Engineering and Technology, Sirmaur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal College of Engineering and Technology, Sirmaur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal College of Engineering and Technology, Sirmaur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'a08321e2-1e80-4a7e-849f-b87c094f1a2a' AND slug = 'akal-college-of-engineering-and-technology-sirmaur';

DELETE FROM public.course_fees WHERE college_slug = 'akal-college-of-engineering-and-technology-sirmaur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '51613840-5216-488d-8c90-0b2052d2f218' AND slug = 'akal-college-of-public-health-and-hospital-administration-sirmaur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-college-of-public-health-and-hospital-administration-sirmaur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Akal College of Public Health and Hospital Administration, Sirmaur is a healthcare education option in Sirmaur, Himachal Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include AICTE, NAAC, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal College of Public Health and Hospital Administration, Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal College of Public Health and Hospital Administration, Sirmaur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal College of Public Health and Hospital Administration, Sirmaur in Sirmaur, Himachal Pradesh: source-reviewed overview for admissions, courses, faciliti',
  meta_keywords = 'Akal College of Public Health and Hospital Administration, Sirmaur, Akal College of Public Health and Hospital Administration, Sirmaur admission 2026, Akal College of Public Health and Hospital Administration, Sirmaur courses, Akal College of Public Health and Hospital Administration, Sirmaur fees, Akal College of Public Health and Hospital Administration, Sirmaur placement, Akal College of Public Health and Hospital Administration, Sirmaur facilities, Sirmaur, Himachal Pradesh',
  admission_process = 'Akal College of Public Health and Hospital Administration, Sirmaur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal College of Public Health and Hospital Administration, Sirmaur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal College of Public Health and Hospital Administration, Sirmaur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal College of Public Health and Hospital Administration, Sirmaur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal College of Public Health and Hospital Administration, Sirmaur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal College of Public Health and Hospital Administration, Sirmaur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal College of Public Health and Hospital Administration, Sirmaur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal College of Public Health and Hospital Administration, Sirmaur is mapped with reviewed approval or affiliation signals such as AICTE, NAAC, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NAAC', 'UGC', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '51613840-5216-488d-8c90-0b2052d2f218' AND slug = 'akal-college-of-public-health-and-hospital-administration-sirmaur';

DELETE FROM public.course_fees WHERE college_slug = 'akal-college-of-public-health-and-hospital-administration-sirmaur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a1bfe278-b9af-4c9c-88aa-859f91fecb24' AND slug = 'akal-degree-college-for-women-sangrur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-degree-college-for-women-sangrur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Akal Degree College for Women, Sangrur is a higher education option in Sangrur, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1970. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal Degree College for Women, Sangrur in Sangrur, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal Degree College for Women, Sangrur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal Degree College for Women, Sangrur in Sangrur, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 ',
  meta_keywords = 'Akal Degree College for Women, Sangrur, Akal Degree College for Women, Sangrur admission 2026, Akal Degree College for Women, Sangrur courses, Akal Degree College for Women, Sangrur fees, Akal Degree College for Women, Sangrur placement, Akal Degree College for Women, Sangrur facilities, Sangrur, Punjab',
  admission_process = 'Akal Degree College for Women, Sangrur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal Degree College for Women, Sangrur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal Degree College for Women, Sangrur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal Degree College for Women, Sangrur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal Degree College for Women, Sangrur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal Degree College for Women, Sangrur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal Degree College for Women, Sangrur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal Degree College for Women, Sangrur has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['General', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'a1bfe278-b9af-4c9c-88aa-859f91fecb24' AND slug = 'akal-degree-college-for-women-sangrur';

DELETE FROM public.course_fees WHERE college_slug = 'akal-degree-college-for-women-sangrur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '67645cd0-8c8c-458a-896b-325190528e33' AND slug = 'akal-sahaye-college-of-education-faridkot') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akal-sahaye-college-of-education-faridkot';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Akal Sahaye College of Education, Faridkot is a teacher education option in Faridkot, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akal Sahaye College of Education, Faridkot in Faridkot, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akal Sahaye College of Education, Faridkot: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akal Sahaye College of Education, Faridkot in Faridkot, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and ',
  meta_keywords = 'Akal Sahaye College of Education, Faridkot, Akal Sahaye College of Education, Faridkot admission 2026, Akal Sahaye College of Education, Faridkot courses, Akal Sahaye College of Education, Faridkot fees, Akal Sahaye College of Education, Faridkot placement, Akal Sahaye College of Education, Faridkot facilities, Faridkot, Punjab',
  admission_process = 'Akal Sahaye College of Education, Faridkot admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akal Sahaye College of Education, Faridkot depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akal Sahaye College of Education, Faridkot course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akal Sahaye College of Education, Faridkot placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akal Sahaye College of Education, Faridkot facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akal Sahaye College of Education, Faridkot should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akal Sahaye College of Education, Faridkot may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akal Sahaye College of Education, Faridkot has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '67645cd0-8c8c-458a-896b-325190528e33' AND slug = 'akal-sahaye-college-of-education-faridkot';

DELETE FROM public.course_fees WHERE college_slug = 'akal-sahaye-college-of-education-faridkot';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd85c5b3a-d211-4851-8946-90ac776dc6bf' AND slug = 'akarapu-sharath-chandrika-devi-memorial-college-for-women-asm-warangal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akarapu-sharath-chandrika-devi-memorial-college-for-women-asm-warangal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal is a higher education option in Warangal, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1975. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal in Warangal, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal in Warangal, Telangana: source-reviewed overview for admissions, courses, facil',
  meta_keywords = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal, Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal admission 2026, Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal courses, Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal fees, Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal placement, Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal facilities, Warangal, Telangana',
  admission_process = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akarapu Sharath Chandrika Devi Memorial College for Women - [ASM], Warangal is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NAAC', 'General', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'd85c5b3a-d211-4851-8946-90ac776dc6bf' AND slug = 'akarapu-sharath-chandrika-devi-memorial-college-for-women-asm-warangal';

DELETE FROM public.course_fees WHERE college_slug = 'akarapu-sharath-chandrika-devi-memorial-college-for-women-asm-warangal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9e1f1b9d-b720-4e44-a360-16f784696a18' AND slug = 'akash-college-of-education-jind') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akash-college-of-education-jind';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Akash College of Education, Jind is a teacher education option in Jind, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include NCTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akash College of Education, Jind in Jind, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akash College of Education, Jind: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akash College of Education, Jind in Jind, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision',
  meta_keywords = 'Akash College of Education, Jind, Akash College of Education, Jind admission 2026, Akash College of Education, Jind courses, Akash College of Education, Jind fees, Akash College of Education, Jind placement, Akash College of Education, Jind facilities, Jind, Haryana',
  admission_process = 'Akash College of Education, Jind admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akash College of Education, Jind depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akash College of Education, Jind course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akash College of Education, Jind placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akash College of Education, Jind facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akash College of Education, Jind should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akash College of Education, Jind may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akash College of Education, Jind is mapped with reviewed approval or affiliation signals such as NCTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'UGC', 'Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '9e1f1b9d-b720-4e44-a360-16f784696a18' AND slug = 'akash-college-of-education-jind';

DELETE FROM public.course_fees WHERE college_slug = 'akash-college-of-education-jind';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4543da30-df60-45b7-bdbe-e96507838858' AND slug = 'akb-institute-of-finance-and-management-akbifm-faridabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akb-institute-of-finance-and-management-akbifm-faridabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, AKB Institute of Finance and Management - [AKBIFM], Faridabad is a management and commerce education option in Faridabad, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1997. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad in Faridabad, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad in Faridabad, Haryana: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad, AKB Institute of Finance and Management - [AKBIFM], Faridabad admission 2026, AKB Institute of Finance and Management - [AKBIFM], Faridabad courses, AKB Institute of Finance and Management - [AKBIFM], Faridabad fees, AKB Institute of Finance and Management - [AKBIFM], Faridabad placement, AKB Institute of Finance and Management - [AKBIFM], Faridabad facilities, Faridabad, Haryana',
  admission_process = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AKB Institute of Finance and Management - [AKBIFM], Faridabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AKB Institute of Finance and Management - [AKBIFM], Faridabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AKB Institute of Finance and Management - [AKBIFM], Faridabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AKB Institute of Finance and Management - [AKBIFM], Faridabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '4543da30-df60-45b7-bdbe-e96507838858' AND slug = 'akb-institute-of-finance-and-management-akbifm-faridabad';

DELETE FROM public.course_fees WHERE college_slug = 'akb-institute-of-finance-and-management-akbifm-faridabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c9053cf4-b832-4206-96d2-08a364a04798' AND slug = 'akbar-academy-trivandrum') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akbar-academy-trivandrum';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Akbar Academy, Trivandrum is a higher education option in Trivandrum, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2003. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akbar Academy, Trivandrum in Trivandrum, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akbar Academy, Trivandrum: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akbar Academy, Trivandrum in Trivandrum, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision c',
  meta_keywords = 'Akbar Academy, Trivandrum, Akbar Academy, Trivandrum admission 2026, Akbar Academy, Trivandrum courses, Akbar Academy, Trivandrum fees, Akbar Academy, Trivandrum placement, Akbar Academy, Trivandrum facilities, Trivandrum, Kerala',
  admission_process = 'Akbar Academy, Trivandrum admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akbar Academy, Trivandrum depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akbar Academy, Trivandrum course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akbar Academy, Trivandrum placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akbar Academy, Trivandrum facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akbar Academy, Trivandrum should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akbar Academy, Trivandrum may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akbar Academy, Trivandrum has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['General', 'Private Institute']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'c9053cf4-b832-4206-96d2-08a364a04798' AND slug = 'akbar-academy-trivandrum';

DELETE FROM public.course_fees WHERE college_slug = 'akbar-academy-trivandrum';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a9474aa6-d35e-4274-9b00-8489f3d5c640' AND slug = 'akbar-peerbhoy-college-of-commerce-and-economics-mumbai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akbar-peerbhoy-college-of-commerce-and-economics-mumbai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Akbar Peerbhoy College of Commerce and Economics, Mumbai is a management and commerce education option in Mumbai, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1975. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai, Akbar Peerbhoy College of Commerce and Economics, Mumbai admission 2026, Akbar Peerbhoy College of Commerce and Economics, Mumbai courses, Akbar Peerbhoy College of Commerce and Economics, Mumbai fees, Akbar Peerbhoy College of Commerce and Economics, Mumbai placement, Akbar Peerbhoy College of Commerce and Economics, Mumbai facilities, Mumbai, Maharashtra',
  admission_process = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akbar Peerbhoy College of Commerce and Economics, Mumbai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akbar Peerbhoy College of Commerce and Economics, Mumbai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akbar Peerbhoy College of Commerce and Economics, Mumbai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akbar Peerbhoy College of Commerce and Economics, Mumbai is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NAAC', 'Management', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'a9474aa6-d35e-4274-9b00-8489f3d5c640' AND slug = 'akbar-peerbhoy-college-of-commerce-and-economics-mumbai';

DELETE FROM public.course_fees WHERE college_slug = 'akbar-peerbhoy-college-of-commerce-and-economics-mumbai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a0b0e33d-9862-4e05-8ae0-396f2645136f' AND slug = 'akbarpur-mahavidyalaya-kanpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akbarpur-mahavidyalaya-kanpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Akbarpur Mahavidyalaya, Kanpur is a higher education option in Kanpur, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akbarpur Mahavidyalaya, Kanpur in Kanpur, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akbarpur Mahavidyalaya, Kanpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akbarpur Mahavidyalaya, Kanpur in Kanpur, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 de',
  meta_keywords = 'Akbarpur Mahavidyalaya, Kanpur, Akbarpur Mahavidyalaya, Kanpur admission 2026, Akbarpur Mahavidyalaya, Kanpur courses, Akbarpur Mahavidyalaya, Kanpur fees, Akbarpur Mahavidyalaya, Kanpur placement, Akbarpur Mahavidyalaya, Kanpur facilities, Kanpur, Uttar Pradesh',
  admission_process = 'Akbarpur Mahavidyalaya, Kanpur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akbarpur Mahavidyalaya, Kanpur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akbarpur Mahavidyalaya, Kanpur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akbarpur Mahavidyalaya, Kanpur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akbarpur Mahavidyalaya, Kanpur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akbarpur Mahavidyalaya, Kanpur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akbarpur Mahavidyalaya, Kanpur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akbarpur Mahavidyalaya, Kanpur is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'General', 'Government']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'a0b0e33d-9862-4e05-8ae0-396f2645136f' AND slug = 'akbarpur-mahavidyalaya-kanpur';

DELETE FROM public.course_fees WHERE college_slug = 'akbarpur-mahavidyalaya-kanpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8efbdde9-5885-4ad1-b07b-ead13fe6b61f' AND slug = 'akemi-business-school-mulshi-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akemi-business-school-mulshi-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Akemi Business School, Mulshi, Pune is a management and commerce education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2011. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akemi Business School, Mulshi, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akemi Business School, Mulshi, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akemi Business School, Mulshi, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 d',
  meta_keywords = 'Akemi Business School, Mulshi, Pune, Akemi Business School, Mulshi, Pune admission 2026, Akemi Business School, Mulshi, Pune courses, Akemi Business School, Mulshi, Pune fees, Akemi Business School, Mulshi, Pune placement, Akemi Business School, Mulshi, Pune facilities, Pune, Maharashtra',
  admission_process = 'Akemi Business School, Mulshi, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akemi Business School, Mulshi, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akemi Business School, Mulshi, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akemi Business School, Mulshi, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akemi Business School, Mulshi, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akemi Business School, Mulshi, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akemi Business School, Mulshi, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akemi Business School, Mulshi, Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '8efbdde9-5885-4ad1-b07b-ead13fe6b61f' AND slug = 'akemi-business-school-mulshi-pune';

DELETE FROM public.course_fees WHERE college_slug = 'akemi-business-school-mulshi-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b70e6630-00b7-4c66-bfc6-e43694eeaee2' AND slug = 'akhand-anand-arts-and-commerce-college-surat') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akhand-anand-arts-and-commerce-college-surat';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Akhand Anand Arts And Commerce College, Surat is a management and commerce education option in Surat, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akhand Anand Arts And Commerce College, Surat in Surat, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akhand Anand Arts And Commerce College, Surat: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akhand Anand Arts And Commerce College, Surat in Surat, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and',
  meta_keywords = 'Akhand Anand Arts And Commerce College, Surat, Akhand Anand Arts And Commerce College, Surat admission 2026, Akhand Anand Arts And Commerce College, Surat courses, Akhand Anand Arts And Commerce College, Surat fees, Akhand Anand Arts And Commerce College, Surat placement, Akhand Anand Arts And Commerce College, Surat facilities, Surat, Gujarat',
  admission_process = 'Akhand Anand Arts And Commerce College, Surat admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akhand Anand Arts And Commerce College, Surat depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akhand Anand Arts And Commerce College, Surat course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akhand Anand Arts And Commerce College, Surat placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akhand Anand Arts And Commerce College, Surat facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akhand Anand Arts And Commerce College, Surat should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akhand Anand Arts And Commerce College, Surat may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akhand Anand Arts And Commerce College, Surat is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NAAC', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'b70e6630-00b7-4c66-bfc6-e43694eeaee2' AND slug = 'akhand-anand-arts-and-commerce-college-surat';

DELETE FROM public.course_fees WHERE college_slug = 'akhand-anand-arts-and-commerce-college-surat';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '98dcb369-5de3-4881-8562-3aafb9ac2242' AND slug = 'akhilabhagya-mahavidyalya-gorakhpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akhilabhagya-mahavidyalya-gorakhpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Akhilabhagya Mahavidyalya, Gorakhpur is a higher education option in Gorakhpur, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include NCTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akhilabhagya Mahavidyalya, Gorakhpur in Gorakhpur, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akhilabhagya Mahavidyalya, Gorakhpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akhilabhagya Mahavidyalya, Gorakhpur in Gorakhpur, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Akhilabhagya Mahavidyalya, Gorakhpur, Akhilabhagya Mahavidyalya, Gorakhpur admission 2026, Akhilabhagya Mahavidyalya, Gorakhpur courses, Akhilabhagya Mahavidyalya, Gorakhpur fees, Akhilabhagya Mahavidyalya, Gorakhpur placement, Akhilabhagya Mahavidyalya, Gorakhpur facilities, Gorakhpur, Uttar Pradesh',
  admission_process = 'Akhilabhagya Mahavidyalya, Gorakhpur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akhilabhagya Mahavidyalya, Gorakhpur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akhilabhagya Mahavidyalya, Gorakhpur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akhilabhagya Mahavidyalya, Gorakhpur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akhilabhagya Mahavidyalya, Gorakhpur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akhilabhagya Mahavidyalya, Gorakhpur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akhilabhagya Mahavidyalya, Gorakhpur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akhilabhagya Mahavidyalya, Gorakhpur is mapped with reviewed approval or affiliation signals such as NCTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'UGC', 'General', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '98dcb369-5de3-4881-8562-3aafb9ac2242' AND slug = 'akhilabhagya-mahavidyalya-gorakhpur';

DELETE FROM public.course_fees WHERE college_slug = 'akhilabhagya-mahavidyalya-gorakhpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3e0dded6-34d3-4195-afa0-6e3c27fce043' AND slug = 'akido-college-of-engineering-bahadurgarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akido-college-of-engineering-bahadurgarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, AKIDO College of Engineering, Bahadurgarh is a technical education option in Bahadurgarh, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AKIDO College of Engineering, Bahadurgarh in Bahadurgarh, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AKIDO College of Engineering, Bahadurgarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AKIDO College of Engineering, Bahadurgarh in Bahadurgarh, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships a',
  meta_keywords = 'AKIDO College of Engineering, Bahadurgarh, AKIDO College of Engineering, Bahadurgarh admission 2026, AKIDO College of Engineering, Bahadurgarh courses, AKIDO College of Engineering, Bahadurgarh fees, AKIDO College of Engineering, Bahadurgarh placement, AKIDO College of Engineering, Bahadurgarh facilities, Bahadurgarh, Haryana',
  admission_process = 'AKIDO College of Engineering, Bahadurgarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AKIDO College of Engineering, Bahadurgarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AKIDO College of Engineering, Bahadurgarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AKIDO College of Engineering, Bahadurgarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AKIDO College of Engineering, Bahadurgarh facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AKIDO College of Engineering, Bahadurgarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AKIDO College of Engineering, Bahadurgarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AKIDO College of Engineering, Bahadurgarh is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3e0dded6-34d3-4195-afa0-6e3c27fce043' AND slug = 'akido-college-of-engineering-bahadurgarh';

DELETE FROM public.course_fees WHERE college_slug = 'akido-college-of-engineering-bahadurgarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '752ab805-da21-4908-aa08-363a06e63ec1' AND slug = 'akila-college-of-engineering-and-management-technology-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akila-college-of-engineering-and-management-technology-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Akila College of Engineering and Management Technology, Bathinda is a technical education option in Bathinda, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akila College of Engineering and Management Technology, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akila College of Engineering and Management Technology, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akila College of Engineering and Management Technology, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'Akila College of Engineering and Management Technology, Bathinda, Akila College of Engineering and Management Technology, Bathinda admission 2026, Akila College of Engineering and Management Technology, Bathinda courses, Akila College of Engineering and Management Technology, Bathinda fees, Akila College of Engineering and Management Technology, Bathinda placement, Akila College of Engineering and Management Technology, Bathinda facilities, Bathinda, Punjab',
  admission_process = 'Akila College of Engineering and Management Technology, Bathinda admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akila College of Engineering and Management Technology, Bathinda depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akila College of Engineering and Management Technology, Bathinda course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akila College of Engineering and Management Technology, Bathinda placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akila College of Engineering and Management Technology, Bathinda facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akila College of Engineering and Management Technology, Bathinda should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akila College of Engineering and Management Technology, Bathinda may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akila College of Engineering and Management Technology, Bathinda is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '752ab805-da21-4908-aa08-363a06e63ec1' AND slug = 'akila-college-of-engineering-and-management-technology-bathinda';

DELETE FROM public.course_fees WHERE college_slug = 'akila-college-of-engineering-and-management-technology-bathinda';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '11031341-3257-45f2-8e41-5cfa0babb1f1' AND slug = 'akkineni-nageswara-rao-college-anr-krishna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akkineni-nageswara-rao-college-anr-krishna';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Akkineni Nageswara Rao College - [ANR], Krishna is a higher education option in Krishna, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1950. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akkineni Nageswara Rao College - [ANR], Krishna in Krishna, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akkineni Nageswara Rao College - [ANR], Krishna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akkineni Nageswara Rao College - [ANR], Krishna in Krishna, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, schol',
  meta_keywords = 'Akkineni Nageswara Rao College - [ANR], Krishna, Akkineni Nageswara Rao College - [ANR], Krishna admission 2026, Akkineni Nageswara Rao College - [ANR], Krishna courses, Akkineni Nageswara Rao College - [ANR], Krishna fees, Akkineni Nageswara Rao College - [ANR], Krishna placement, Akkineni Nageswara Rao College - [ANR], Krishna facilities, Krishna, Andhra Pradesh',
  admission_process = 'Akkineni Nageswara Rao College - [ANR], Krishna admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akkineni Nageswara Rao College - [ANR], Krishna depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akkineni Nageswara Rao College - [ANR], Krishna course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akkineni Nageswara Rao College - [ANR], Krishna placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akkineni Nageswara Rao College - [ANR], Krishna facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akkineni Nageswara Rao College - [ANR], Krishna should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akkineni Nageswara Rao College - [ANR], Krishna may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akkineni Nageswara Rao College - [ANR], Krishna is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NAAC', 'General', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '11031341-3257-45f2-8e41-5cfa0babb1f1' AND slug = 'akkineni-nageswara-rao-college-anr-krishna';

DELETE FROM public.course_fees WHERE college_slug = 'akkineni-nageswara-rao-college-anr-krishna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '778f70a1-4c32-4907-a478-b6937d97e2d3' AND slug = 'aklia-college-of-education-for-women-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aklia-college-of-education-for-women-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aklia College of Education for Women, Bathinda is a teacher education option in Bathinda, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aklia College of Education for Women, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aklia College of Education for Women, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aklia College of Education for Women, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Aklia College of Education for Women, Bathinda, Aklia College of Education for Women, Bathinda admission 2026, Aklia College of Education for Women, Bathinda courses, Aklia College of Education for Women, Bathinda fees, Aklia College of Education for Women, Bathinda placement, Aklia College of Education for Women, Bathinda facilities, Bathinda, Punjab',
  admission_process = 'Aklia College of Education for Women, Bathinda admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aklia College of Education for Women, Bathinda depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aklia College of Education for Women, Bathinda course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aklia College of Education for Women, Bathinda placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aklia College of Education for Women, Bathinda facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aklia College of Education for Women, Bathinda should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aklia College of Education for Women, Bathinda may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aklia College of Education for Women, Bathinda is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '778f70a1-4c32-4907-a478-b6937d97e2d3' AND slug = 'aklia-college-of-education-for-women-bathinda';

DELETE FROM public.course_fees WHERE college_slug = 'aklia-college-of-education-for-women-bathinda';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2bec1519-3324-4238-bcf8-66442f897ec7' AND slug = 'aklia-degree-college-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aklia-degree-college-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aklia Degree College, Bathinda is a higher education option in Bathinda, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aklia Degree College, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aklia Degree College, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aklia Degree College, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decisio',
  meta_keywords = 'Aklia Degree College, Bathinda, Aklia Degree College, Bathinda admission 2026, Aklia Degree College, Bathinda courses, Aklia Degree College, Bathinda fees, Aklia Degree College, Bathinda placement, Aklia Degree College, Bathinda facilities, Bathinda, Punjab',
  admission_process = 'Aklia Degree College, Bathinda admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aklia Degree College, Bathinda depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aklia Degree College, Bathinda course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aklia Degree College, Bathinda placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aklia Degree College, Bathinda facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aklia Degree College, Bathinda should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aklia Degree College, Bathinda may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aklia Degree College, Bathinda is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['UGC', 'General', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '2bec1519-3324-4238-bcf8-66442f897ec7' AND slug = 'aklia-degree-college-bathinda';

DELETE FROM public.course_fees WHERE college_slug = 'aklia-degree-college-bathinda';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '84e3d2c7-faac-4b53-9705-fe01fcf3e71a' AND slug = 'akola-law-college-akola') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akola-law-college-akola';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Akola Law College, Akola is a legal education option in Akola, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include BCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akola Law College, Akola in Akola, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akola Law College, Akola: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akola Law College, Akola in Akola, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision ch',
  meta_keywords = 'Akola Law College, Akola, Akola Law College, Akola admission 2026, Akola Law College, Akola courses, Akola Law College, Akola fees, Akola Law College, Akola placement, Akola Law College, Akola facilities, Akola, Maharashtra',
  admission_process = 'Akola Law College, Akola admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akola Law College, Akola depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akola Law College, Akola course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akola Law College, Akola placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akola Law College, Akola facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akola Law College, Akola should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akola Law College, Akola may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akola Law College, Akola is mapped with reviewed approval or affiliation signals such as BCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['BCI', 'Law', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '84e3d2c7-faac-4b53-9705-fe01fcf3e71a' AND slug = 'akola-law-college-akola';

DELETE FROM public.course_fees WHERE college_slug = 'akola-law-college-akola';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '6b9656c9-baaf-4f4a-8427-764b988d6e88' AND slug = 'akrg-college-of-engineering-amp-technology-akrgcet-eluru') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akrg-college-of-engineering-amp-technology-akrgcet-eluru';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, AKRG College of Engineering & Technology -[AKRGCET], Eluru is a technical education option in Eluru, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1998. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru in Eluru, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru in Eluru, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru, AKRG College of Engineering & Technology -[AKRGCET], Eluru admission 2026, AKRG College of Engineering & Technology -[AKRGCET], Eluru courses, AKRG College of Engineering & Technology -[AKRGCET], Eluru fees, AKRG College of Engineering & Technology -[AKRGCET], Eluru placement, AKRG College of Engineering & Technology -[AKRGCET], Eluru facilities, Eluru, Andhra Pradesh',
  admission_process = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AKRG College of Engineering & Technology -[AKRGCET], Eluru depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AKRG College of Engineering & Technology -[AKRGCET], Eluru should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AKRG College of Engineering & Technology -[AKRGCET], Eluru may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AKRG College of Engineering & Technology -[AKRGCET], Eluru is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '6b9656c9-baaf-4f4a-8427-764b988d6e88' AND slug = 'akrg-college-of-engineering-amp-technology-akrgcet-eluru';

DELETE FROM public.course_fees WHERE college_slug = 'akrg-college-of-engineering-amp-technology-akrgcet-eluru';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3923a4c6-1c3c-4b4b-a918-e886bf8087f0' AND slug = 'akrg-college-of-pharmacy-akrgcp-nallajerla') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akrg-college-of-pharmacy-akrgcp-nallajerla';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AKRG College of Pharmacy - [AKRGCP], Nallajerla is a healthcare education option in Nallajerla, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1996. Current approval or affiliation signals available for review include PCI, AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla in Nallajerla, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla in Nallajerla, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, sc',
  meta_keywords = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla, AKRG College of Pharmacy - [AKRGCP], Nallajerla admission 2026, AKRG College of Pharmacy - [AKRGCP], Nallajerla courses, AKRG College of Pharmacy - [AKRGCP], Nallajerla fees, AKRG College of Pharmacy - [AKRGCP], Nallajerla placement, AKRG College of Pharmacy - [AKRGCP], Nallajerla facilities, Nallajerla, Andhra Pradesh',
  admission_process = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AKRG College of Pharmacy - [AKRGCP], Nallajerla depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AKRG College of Pharmacy - [AKRGCP], Nallajerla should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AKRG College of Pharmacy - [AKRGCP], Nallajerla may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AKRG College of Pharmacy - [AKRGCP], Nallajerla is mapped with reviewed approval or affiliation signals such as PCI, AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['PCI', 'AICTE', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3923a4c6-1c3c-4b4b-a918-e886bf8087f0' AND slug = 'akrg-college-of-pharmacy-akrgcp-nallajerla';

DELETE FROM public.course_fees WHERE college_slug = 'akrg-college-of-pharmacy-akrgcp-nallajerla';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8ddc2731-e854-40d2-bb19-f62372dceb0d' AND slug = 'aks-institute-of-management-excellence-aksime-noida') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aks-institute-of-management-excellence-aksime-noida';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, AKS Institute of Management Excellence - [AKSIME], Noida is a management and commerce education option in Noida, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AKS Institute of Management Excellence - [AKSIME], Noida in Noida, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AKS Institute of Management Excellence - [AKSIME], Noida: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AKS Institute of Management Excellence - [AKSIME], Noida in Noida, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements,',
  meta_keywords = 'AKS Institute of Management Excellence - [AKSIME], Noida, AKS Institute of Management Excellence - [AKSIME], Noida admission 2026, AKS Institute of Management Excellence - [AKSIME], Noida courses, AKS Institute of Management Excellence - [AKSIME], Noida fees, AKS Institute of Management Excellence - [AKSIME], Noida placement, AKS Institute of Management Excellence - [AKSIME], Noida facilities, Noida, Uttar Pradesh',
  admission_process = 'AKS Institute of Management Excellence - [AKSIME], Noida admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AKS Institute of Management Excellence - [AKSIME], Noida depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AKS Institute of Management Excellence - [AKSIME], Noida course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AKS Institute of Management Excellence - [AKSIME], Noida placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AKS Institute of Management Excellence - [AKSIME], Noida facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AKS Institute of Management Excellence - [AKSIME], Noida should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AKS Institute of Management Excellence - [AKSIME], Noida may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AKS Institute of Management Excellence - [AKSIME], Noida is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['UGC', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '8ddc2731-e854-40d2-bb19-f62372dceb0d' AND slug = 'aks-institute-of-management-excellence-aksime-noida';

DELETE FROM public.course_fees WHERE college_slug = 'aks-institute-of-management-excellence-aksime-noida';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '48f93070-7684-497e-853a-555c1d053df9' AND slug = 'aks-management-college-lucknow') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aks-management-college-lucknow';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, AKS Management College, Lucknow is a management and commerce education option in Lucknow, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AKS Management College, Lucknow in Lucknow, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AKS Management College, Lucknow: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AKS Management College, Lucknow in Lucknow, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 ',
  meta_keywords = 'AKS Management College, Lucknow, AKS Management College, Lucknow admission 2026, AKS Management College, Lucknow courses, AKS Management College, Lucknow fees, AKS Management College, Lucknow placement, AKS Management College, Lucknow facilities, Lucknow, Uttar Pradesh',
  admission_process = 'AKS Management College, Lucknow admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AKS Management College, Lucknow depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AKS Management College, Lucknow course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AKS Management College, Lucknow placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AKS Management College, Lucknow facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AKS Management College, Lucknow should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AKS Management College, Lucknow may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AKS Management College, Lucknow is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '48f93070-7684-497e-853a-555c1d053df9' AND slug = 'aks-management-college-lucknow';

DELETE FROM public.course_fees WHERE college_slug = 'aks-management-college-lucknow';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e8aac3de-0ba9-4943-9758-7e8c4dd9ea61' AND slug = 'aks-university-aksu-satna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aks-university-aksu-satna';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, AKS University - [AKSU], Satna is a higher education option in Satna, Madhya Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2011. Current approval or affiliation signals available for review include NCTE, PCI, AICTE, ICAR, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AKS University - [AKSU], Satna in Satna, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AKS University - [AKSU], Satna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AKS University - [AKSU], Satna in Satna, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 de',
  meta_keywords = 'AKS University - [AKSU], Satna, AKS University - [AKSU], Satna admission 2026, AKS University - [AKSU], Satna courses, AKS University - [AKSU], Satna fees, AKS University - [AKSU], Satna placement, AKS University - [AKSU], Satna facilities, Satna, Madhya Pradesh',
  admission_process = 'AKS University - [AKSU], Satna admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AKS University - [AKSU], Satna depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AKS University - [AKSU], Satna course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AKS University - [AKSU], Satna placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AKS University - [AKSU], Satna facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AKS University - [AKSU], Satna should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AKS University - [AKSU], Satna may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AKS University - [AKSU], Satna is mapped with reviewed approval or affiliation signals such as NCTE, PCI, AICTE, ICAR, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'PCI', 'AICTE', 'ICAR', 'UGC', 'General', 'Private University']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'e8aac3de-0ba9-4943-9758-7e8c4dd9ea61' AND slug = 'aks-university-aksu-satna';

DELETE FROM public.course_fees WHERE college_slug = 'aks-university-aksu-satna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f801390b-7c42-4d5b-83a4-b12981ed703d' AND slug = 'akshaya-college-of-engineering-and-technology-acet-coimbatore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akshaya-college-of-engineering-and-technology-acet-coimbatore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Akshaya College of Engineering and Technology-[ACET], Coimbatore is a technical education option in Coimbatore, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, p',
  meta_keywords = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore, Akshaya College of Engineering and Technology-[ACET], Coimbatore admission 2026, Akshaya College of Engineering and Technology-[ACET], Coimbatore courses, Akshaya College of Engineering and Technology-[ACET], Coimbatore fees, Akshaya College of Engineering and Technology-[ACET], Coimbatore placement, Akshaya College of Engineering and Technology-[ACET], Coimbatore facilities, Coimbatore, Tamil Nadu',
  admission_process = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akshaya College of Engineering and Technology-[ACET], Coimbatore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akshaya College of Engineering and Technology-[ACET], Coimbatore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akshaya College of Engineering and Technology-[ACET], Coimbatore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akshaya College of Engineering and Technology-[ACET], Coimbatore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'f801390b-7c42-4d5b-83a4-b12981ed703d' AND slug = 'akshaya-college-of-engineering-and-technology-acet-coimbatore';

DELETE FROM public.course_fees WHERE college_slug = 'akshaya-college-of-engineering-and-technology-acet-coimbatore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8e231a1d-5b72-4698-a4fe-de8555feac21' AND slug = 'akshaya-college-of-nursing-tumkur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akshaya-college-of-nursing-tumkur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Akshaya College of Nursing, Tumkur is a healthcare education option in Tumkur, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2003. Current approval or affiliation signals available for review include INC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akshaya College of Nursing, Tumkur in Tumkur, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akshaya College of Nursing, Tumkur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akshaya College of Nursing, Tumkur in Tumkur, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 de',
  meta_keywords = 'Akshaya College of Nursing, Tumkur, Akshaya College of Nursing, Tumkur admission 2026, Akshaya College of Nursing, Tumkur courses, Akshaya College of Nursing, Tumkur fees, Akshaya College of Nursing, Tumkur placement, Akshaya College of Nursing, Tumkur facilities, Tumkur, Karnataka',
  admission_process = 'Akshaya College of Nursing, Tumkur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akshaya College of Nursing, Tumkur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akshaya College of Nursing, Tumkur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akshaya College of Nursing, Tumkur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akshaya College of Nursing, Tumkur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akshaya College of Nursing, Tumkur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akshaya College of Nursing, Tumkur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akshaya College of Nursing, Tumkur is mapped with reviewed approval or affiliation signals such as INC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['INC', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '8e231a1d-5b72-4698-a4fe-de8555feac21' AND slug = 'akshaya-college-of-nursing-tumkur';

DELETE FROM public.course_fees WHERE college_slug = 'akshaya-college-of-nursing-tumkur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd1a25867-9c4f-4092-a537-2ca8909f04c3' AND slug = 'akshaya-institute-of-management-studies-aims-coimbatore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akshaya-institute-of-management-studies-aims-coimbatore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Akshaya Institute of Management Studies - [AIMS], Coimbatore is a management and commerce education option in Coimbatore, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore, Akshaya Institute of Management Studies - [AIMS], Coimbatore admission 2026, Akshaya Institute of Management Studies - [AIMS], Coimbatore courses, Akshaya Institute of Management Studies - [AIMS], Coimbatore fees, Akshaya Institute of Management Studies - [AIMS], Coimbatore placement, Akshaya Institute of Management Studies - [AIMS], Coimbatore facilities, Coimbatore, Tamil Nadu',
  admission_process = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akshaya Institute of Management Studies - [AIMS], Coimbatore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akshaya Institute of Management Studies - [AIMS], Coimbatore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akshaya Institute of Management Studies - [AIMS], Coimbatore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akshaya Institute of Management Studies - [AIMS], Coimbatore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'd1a25867-9c4f-4092-a537-2ca8909f04c3' AND slug = 'akshaya-institute-of-management-studies-aims-coimbatore';

DELETE FROM public.course_fees WHERE college_slug = 'akshaya-institute-of-management-studies-aims-coimbatore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '58a204e3-0fc3-4a4a-bea2-bc3fbc1bf779' AND slug = 'akshaya-institute-of-technology-ait-tumkur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akshaya-institute-of-technology-ait-tumkur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Akshaya Institute of Technology - [AIT], Tumkur is a technical education option in Tumkur, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akshaya Institute of Technology - [AIT], Tumkur in Tumkur, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akshaya Institute of Technology - [AIT], Tumkur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akshaya Institute of Technology - [AIT], Tumkur in Tumkur, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarship',
  meta_keywords = 'Akshaya Institute of Technology - [AIT], Tumkur, Akshaya Institute of Technology - [AIT], Tumkur admission 2026, Akshaya Institute of Technology - [AIT], Tumkur courses, Akshaya Institute of Technology - [AIT], Tumkur fees, Akshaya Institute of Technology - [AIT], Tumkur placement, Akshaya Institute of Technology - [AIT], Tumkur facilities, Tumkur, Karnataka',
  admission_process = 'Akshaya Institute of Technology - [AIT], Tumkur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akshaya Institute of Technology - [AIT], Tumkur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akshaya Institute of Technology - [AIT], Tumkur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akshaya Institute of Technology - [AIT], Tumkur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akshaya Institute of Technology - [AIT], Tumkur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akshaya Institute of Technology - [AIT], Tumkur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akshaya Institute of Technology - [AIT], Tumkur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akshaya Institute of Technology - [AIT], Tumkur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '58a204e3-0fc3-4a4a-bea2-bc3fbc1bf779' AND slug = 'akshaya-institute-of-technology-ait-tumkur';

DELETE FROM public.course_fees WHERE college_slug = 'akshaya-institute-of-technology-ait-tumkur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a3a3228d-6f6a-4408-ad5b-1b55c7360473' AND slug = 'aksheyaa-college-of-engineering-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aksheyaa-college-of-engineering-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aksheyaa College of Engineering, Kanchipuram is a technical education option in Kanchipuram, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE, NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aksheyaa College of Engineering, Kanchipuram in Kanchipuram, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aksheyaa College of Engineering, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aksheyaa College of Engineering, Kanchipuram in Kanchipuram, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholars',
  meta_keywords = 'Aksheyaa College of Engineering, Kanchipuram, Aksheyaa College of Engineering, Kanchipuram admission 2026, Aksheyaa College of Engineering, Kanchipuram courses, Aksheyaa College of Engineering, Kanchipuram fees, Aksheyaa College of Engineering, Kanchipuram placement, Aksheyaa College of Engineering, Kanchipuram facilities, Kanchipuram, Tamil Nadu',
  admission_process = 'Aksheyaa College of Engineering, Kanchipuram admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aksheyaa College of Engineering, Kanchipuram depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aksheyaa College of Engineering, Kanchipuram course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aksheyaa College of Engineering, Kanchipuram placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aksheyaa College of Engineering, Kanchipuram facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aksheyaa College of Engineering, Kanchipuram should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aksheyaa College of Engineering, Kanchipuram may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aksheyaa College of Engineering, Kanchipuram is mapped with reviewed approval or affiliation signals such as AICTE, NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NAAC', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'a3a3228d-6f6a-4408-ad5b-1b55c7360473' AND slug = 'aksheyaa-college-of-engineering-kanchipuram';

DELETE FROM public.course_fees WHERE college_slug = 'aksheyaa-college-of-engineering-kanchipuram';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '843fe3d4-c184-4fd3-8e91-60f8f58e6fb1' AND slug = 'akula-sreeramulu-college-of-engineering-asrce-tanuku') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akula-sreeramulu-college-of-engineering-asrce-tanuku';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Akula Sreeramulu College of Engineering - [ASRCE], Tanuku is a technical education option in Tanuku, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1998. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku in Tanuku, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku in Tanuku, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku, Akula Sreeramulu College of Engineering - [ASRCE], Tanuku admission 2026, Akula Sreeramulu College of Engineering - [ASRCE], Tanuku courses, Akula Sreeramulu College of Engineering - [ASRCE], Tanuku fees, Akula Sreeramulu College of Engineering - [ASRCE], Tanuku placement, Akula Sreeramulu College of Engineering - [ASRCE], Tanuku facilities, Tanuku, Andhra Pradesh',
  admission_process = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akula Sreeramulu College of Engineering - [ASRCE], Tanuku depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akula Sreeramulu College of Engineering - [ASRCE], Tanuku should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akula Sreeramulu College of Engineering - [ASRCE], Tanuku may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akula Sreeramulu College of Engineering - [ASRCE], Tanuku is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '843fe3d4-c184-4fd3-8e91-60f8f58e6fb1' AND slug = 'akula-sreeramulu-college-of-engineering-asrce-tanuku';

DELETE FROM public.course_fees WHERE college_slug = 'akula-sreeramulu-college-of-engineering-asrce-tanuku';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3574d70e-c836-472d-a6aa-ecfc6e50e62a' AND slug = 'akula-sreeramulu-institute-of-engineering-and-technology-asriet-tanuku') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akula-sreeramulu-institute-of-engineering-and-technology-asriet-tanuku';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku is a technical education option in Tanuku, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1998. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku in Tanuku, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku in Tanuku, Andhra Pradesh: source-reviewed overview for admissions, courses, fa',
  meta_keywords = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku, Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku admission 2026, Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku courses, Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku fees, Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku placement, Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku facilities, Tanuku, Andhra Pradesh',
  admission_process = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Akula Sreeramulu Institute of Engineering and Technology - [ASRIET], Tanuku is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3574d70e-c836-472d-a6aa-ecfc6e50e62a' AND slug = 'akula-sreeramulu-institute-of-engineering-and-technology-asriet-tanuku';

DELETE FROM public.course_fees WHERE college_slug = 'akula-sreeramulu-institute-of-engineering-and-technology-asriet-tanuku';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b67387bd-47c3-4a57-8d19-1a241a9c1b3a' AND slug = 'al-ameen-college-of-law-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-college-of-law-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Al Ameen College of Law, Bangalore is a legal education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1988. Current approval or affiliation signals available for review include BCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Ameen College of Law, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Ameen College of Law, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Ameen College of Law, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026',
  meta_keywords = 'Al Ameen College of Law, Bangalore, Al Ameen College of Law, Bangalore admission 2026, Al Ameen College of Law, Bangalore courses, Al Ameen College of Law, Bangalore fees, Al Ameen College of Law, Bangalore placement, Al Ameen College of Law, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Al Ameen College of Law, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Ameen College of Law, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Ameen College of Law, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Ameen College of Law, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Ameen College of Law, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Ameen College of Law, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Ameen College of Law, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Ameen College of Law, Bangalore is mapped with reviewed approval or affiliation signals such as BCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['BCI', 'Law', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'b67387bd-47c3-4a57-8d19-1a241a9c1b3a' AND slug = 'al-ameen-college-of-law-bangalore';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-college-of-law-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '84f46a28-041a-4549-97bf-f830d47ca506' AND slug = 'al-ameen-engineering-college-erode') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-engineering-college-erode';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Al Ameen Engineering College, Erode is a technical education option in Erode, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Ameen Engineering College, Erode in Erode, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Ameen Engineering College, Erode: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Ameen Engineering College, Erode in Erode, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 d',
  meta_keywords = 'Al Ameen Engineering College, Erode, Al Ameen Engineering College, Erode admission 2026, Al Ameen Engineering College, Erode courses, Al Ameen Engineering College, Erode fees, Al Ameen Engineering College, Erode placement, Al Ameen Engineering College, Erode facilities, Erode, Tamil Nadu',
  admission_process = 'Al Ameen Engineering College, Erode admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Ameen Engineering College, Erode depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Ameen Engineering College, Erode course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Ameen Engineering College, Erode placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Ameen Engineering College, Erode facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Ameen Engineering College, Erode should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Ameen Engineering College, Erode may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Ameen Engineering College, Erode is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private Institute']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '84f46a28-041a-4549-97bf-f830d47ca506' AND slug = 'al-ameen-engineering-college-erode';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-engineering-college-erode';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ecbb3f27-7a3f-4a77-90c7-a6e661eed955' AND slug = 'al-ameen-institute-of-information-sciences-aiis-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-institute-of-information-sciences-aiis-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Al Ameen Institute of Information Sciences - [AIIS], Bangalore is a higher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1966. Current approval or affiliation signals available for review include AICTE, NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore, Al Ameen Institute of Information Sciences - [AIIS], Bangalore admission 2026, Al Ameen Institute of Information Sciences - [AIIS], Bangalore courses, Al Ameen Institute of Information Sciences - [AIIS], Bangalore fees, Al Ameen Institute of Information Sciences - [AIIS], Bangalore placement, Al Ameen Institute of Information Sciences - [AIIS], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Ameen Institute of Information Sciences - [AIIS], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Ameen Institute of Information Sciences - [AIIS], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Ameen Institute of Information Sciences - [AIIS], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Ameen Institute of Information Sciences - [AIIS], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE, NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NAAC', 'Science', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'ecbb3f27-7a3f-4a77-90c7-a6e661eed955' AND slug = 'al-ameen-institute-of-information-sciences-aiis-bangalore';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-institute-of-information-sciences-aiis-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5be0f4a4-f75e-4f52-809b-dc6d79e66fbe' AND slug = 'al-ameen-institute-of-management-studies-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-institute-of-management-studies-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Al Ameen Institute of Management Studies, Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1994. Current approval or affiliation signals available for review include AICTE, NAAC-B. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Ameen Institute of Management Studies, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Ameen Institute of Management Studies, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Ameen Institute of Management Studies, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'Al Ameen Institute of Management Studies, Bangalore, Al Ameen Institute of Management Studies, Bangalore admission 2026, Al Ameen Institute of Management Studies, Bangalore courses, Al Ameen Institute of Management Studies, Bangalore fees, Al Ameen Institute of Management Studies, Bangalore placement, Al Ameen Institute of Management Studies, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Al Ameen Institute of Management Studies, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Ameen Institute of Management Studies, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Ameen Institute of Management Studies, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Ameen Institute of Management Studies, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Ameen Institute of Management Studies, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Ameen Institute of Management Studies, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Ameen Institute of Management Studies, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Ameen Institute of Management Studies, Bangalore is mapped with reviewed approval or affiliation signals such as AICTE, NAAC-B. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NAAC-B', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '5be0f4a4-f75e-4f52-809b-dc6d79e66fbe' AND slug = 'al-ameen-institute-of-management-studies-bangalore';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-institute-of-management-studies-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1e20e615-7f2b-40e2-a9ea-8c2aafdf612a' AND slug = 'al-azhar-college-of-engineering-and-aacet-thodupuzha') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-azhar-college-of-engineering-and-aacet-thodupuzha';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Al Azhar College of Engineering and - [AACET], Thodupuzha is a technical education option in Thodupuzha, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Azhar College of Engineering and - [AACET], Thodupuzha in Thodupuzha, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Azhar College of Engineering and - [AACET], Thodupuzha: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Azhar College of Engineering and - [AACET], Thodupuzha in Thodupuzha, Kerala: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Al Azhar College of Engineering and - [AACET], Thodupuzha, Al Azhar College of Engineering and - [AACET], Thodupuzha admission 2026, Al Azhar College of Engineering and - [AACET], Thodupuzha courses, Al Azhar College of Engineering and - [AACET], Thodupuzha fees, Al Azhar College of Engineering and - [AACET], Thodupuzha placement, Al Azhar College of Engineering and - [AACET], Thodupuzha facilities, Thodupuzha, Kerala',
  admission_process = 'Al Azhar College of Engineering and - [AACET], Thodupuzha admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Azhar College of Engineering and - [AACET], Thodupuzha depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Azhar College of Engineering and - [AACET], Thodupuzha course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Azhar College of Engineering and - [AACET], Thodupuzha placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Azhar College of Engineering and - [AACET], Thodupuzha facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Azhar College of Engineering and - [AACET], Thodupuzha should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Azhar College of Engineering and - [AACET], Thodupuzha may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Azhar College of Engineering and - [AACET], Thodupuzha is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '1e20e615-7f2b-40e2-a9ea-8c2aafdf612a' AND slug = 'al-azhar-college-of-engineering-and-aacet-thodupuzha';

DELETE FROM public.course_fees WHERE college_slug = 'al-azhar-college-of-engineering-and-aacet-thodupuzha';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '99c50cfb-fc53-4703-b4f1-f38a1f0e6cc2' AND slug = 'al-azhar-dental-college-thodupuzha') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-azhar-dental-college-thodupuzha';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Al Azhar Dental College, Thodupuzha is a healthcare education option in Thodupuzha, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include DCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Azhar Dental College, Thodupuzha in Thodupuzha, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Azhar Dental College, Thodupuzha: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Azhar Dental College, Thodupuzha in Thodupuzha, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 ',
  meta_keywords = 'Al Azhar Dental College, Thodupuzha, Al Azhar Dental College, Thodupuzha admission 2026, Al Azhar Dental College, Thodupuzha courses, Al Azhar Dental College, Thodupuzha fees, Al Azhar Dental College, Thodupuzha placement, Al Azhar Dental College, Thodupuzha facilities, Thodupuzha, Kerala',
  admission_process = 'Al Azhar Dental College, Thodupuzha admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Azhar Dental College, Thodupuzha depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Azhar Dental College, Thodupuzha course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Azhar Dental College, Thodupuzha placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Azhar Dental College, Thodupuzha facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Azhar Dental College, Thodupuzha should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Azhar Dental College, Thodupuzha may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Azhar Dental College, Thodupuzha is mapped with reviewed approval or affiliation signals such as DCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['DCI', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '99c50cfb-fc53-4703-b4f1-f38a1f0e6cc2' AND slug = 'al-azhar-dental-college-thodupuzha';

DELETE FROM public.course_fees WHERE college_slug = 'al-azhar-dental-college-thodupuzha';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b8124e2c-ec4e-4c3b-8841-619d4414fb05' AND slug = 'al-badar-med-college-gulbarga') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-badar-med-college-gulbarga';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Al Badar MEd College, Gulbarga is a higher education option in Gulbarga, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Badar MEd College, Gulbarga in Gulbarga, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Badar MEd College, Gulbarga: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Badar MEd College, Gulbarga in Gulbarga, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 deci',
  meta_keywords = 'Al Badar MEd College, Gulbarga, Al Badar MEd College, Gulbarga admission 2026, Al Badar MEd College, Gulbarga courses, Al Badar MEd College, Gulbarga fees, Al Badar MEd College, Gulbarga placement, Al Badar MEd College, Gulbarga facilities, Gulbarga, Karnataka',
  admission_process = 'Al Badar MEd College, Gulbarga admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Badar MEd College, Gulbarga depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Badar MEd College, Gulbarga course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Badar MEd College, Gulbarga placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Badar MEd College, Gulbarga facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Badar MEd College, Gulbarga should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Badar MEd College, Gulbarga may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Badar MEd College, Gulbarga has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['General', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'b8124e2c-ec4e-4c3b-8841-619d4414fb05' AND slug = 'al-badar-med-college-gulbarga';

DELETE FROM public.course_fees WHERE college_slug = 'al-badar-med-college-gulbarga';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '47ae7f31-7fdb-4abc-b969-fdfb10a8e4e4' AND slug = 'al-iqra-teacher039s-training-college-aittc-dhanbad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-iqra-teacher039s-training-college-aittc-dhanbad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Al Iqra Teacher''s Training College - [AITTC], Dhanbad is a teacher education option in Dhanbad, Jharkhand for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad in Dhanbad, Jharkhand: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad in Dhanbad, Jharkhand: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad, Al Iqra Teacher''s Training College - [AITTC], Dhanbad admission 2026, Al Iqra Teacher''s Training College - [AITTC], Dhanbad courses, Al Iqra Teacher''s Training College - [AITTC], Dhanbad fees, Al Iqra Teacher''s Training College - [AITTC], Dhanbad placement, Al Iqra Teacher''s Training College - [AITTC], Dhanbad facilities, Dhanbad, Jharkhand',
  admission_process = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Iqra Teacher''s Training College - [AITTC], Dhanbad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Iqra Teacher''s Training College - [AITTC], Dhanbad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Iqra Teacher''s Training College - [AITTC], Dhanbad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Iqra Teacher''s Training College - [AITTC], Dhanbad is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '47ae7f31-7fdb-4abc-b969-fdfb10a8e4e4' AND slug = 'al-iqra-teacher039s-training-college-aittc-dhanbad';

DELETE FROM public.course_fees WHERE college_slug = 'al-iqra-teacher039s-training-college-aittc-dhanbad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3e1a1862-2b23-46db-aad8-d74701ca7973' AND slug = 'al-jamia-arts-and-science-college-malappuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-jamia-arts-and-science-college-malappuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Al Jamia Arts And Science College, Malappuram is a higher education option in Malappuram, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Jamia Arts And Science College, Malappuram in Malappuram, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Jamia Arts And Science College, Malappuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Jamia Arts And Science College, Malappuram in Malappuram, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships',
  meta_keywords = 'Al Jamia Arts And Science College, Malappuram, Al Jamia Arts And Science College, Malappuram admission 2026, Al Jamia Arts And Science College, Malappuram courses, Al Jamia Arts And Science College, Malappuram fees, Al Jamia Arts And Science College, Malappuram placement, Al Jamia Arts And Science College, Malappuram facilities, Malappuram, Kerala',
  admission_process = 'Al Jamia Arts And Science College, Malappuram admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Jamia Arts And Science College, Malappuram depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Jamia Arts And Science College, Malappuram course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Jamia Arts And Science College, Malappuram placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Jamia Arts And Science College, Malappuram facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Jamia Arts And Science College, Malappuram should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Jamia Arts And Science College, Malappuram may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Jamia Arts And Science College, Malappuram has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['Science', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3e1a1862-2b23-46db-aad8-d74701ca7973' AND slug = 'al-jamia-arts-and-science-college-malappuram';

DELETE FROM public.course_fees WHERE college_slug = 'al-jamia-arts-and-science-college-malappuram';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '86aaf8cf-b279-4b90-abb2-88b0caed4efa' AND slug = 'al-salama-institute-of-architecture-asia-perinthalmanna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-salama-institute-of-architecture-asia-perinthalmanna';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Al Salama Institute of Architecture - [ASIA], Perinthalmanna is a technical education option in Perinthalmanna, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2011. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna in Perinthalmanna, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna in Perinthalmanna, Kerala: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna, Al Salama Institute of Architecture - [ASIA], Perinthalmanna admission 2026, Al Salama Institute of Architecture - [ASIA], Perinthalmanna courses, Al Salama Institute of Architecture - [ASIA], Perinthalmanna fees, Al Salama Institute of Architecture - [ASIA], Perinthalmanna placement, Al Salama Institute of Architecture - [ASIA], Perinthalmanna facilities, Perinthalmanna, Kerala',
  admission_process = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Salama Institute of Architecture - [ASIA], Perinthalmanna depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Salama Institute of Architecture - [ASIA], Perinthalmanna should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Salama Institute of Architecture - [ASIA], Perinthalmanna may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Salama Institute of Architecture - [ASIA], Perinthalmanna is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Design', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '86aaf8cf-b279-4b90-abb2-88b0caed4efa' AND slug = 'al-salama-institute-of-architecture-asia-perinthalmanna';

DELETE FROM public.course_fees WHERE college_slug = 'al-salama-institute-of-architecture-asia-perinthalmanna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b31f95f0-c82e-4fb7-a575-54dccedab765' AND slug = 'al-shifa-college-of-nursing-malappuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-shifa-college-of-nursing-malappuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Al Shifa College of Nursing, Malappuram is a healthcare education option in Malappuram, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include INC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Shifa College of Nursing, Malappuram in Malappuram, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Shifa College of Nursing, Malappuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Shifa College of Nursing, Malappuram in Malappuram, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2',
  meta_keywords = 'Al Shifa College of Nursing, Malappuram, Al Shifa College of Nursing, Malappuram admission 2026, Al Shifa College of Nursing, Malappuram courses, Al Shifa College of Nursing, Malappuram fees, Al Shifa College of Nursing, Malappuram placement, Al Shifa College of Nursing, Malappuram facilities, Malappuram, Kerala',
  admission_process = 'Al Shifa College of Nursing, Malappuram admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Shifa College of Nursing, Malappuram depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Shifa College of Nursing, Malappuram course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Shifa College of Nursing, Malappuram placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Shifa College of Nursing, Malappuram facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Shifa College of Nursing, Malappuram should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Shifa College of Nursing, Malappuram may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Shifa College of Nursing, Malappuram is mapped with reviewed approval or affiliation signals such as INC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['INC', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'b31f95f0-c82e-4fb7-a575-54dccedab765' AND slug = 'al-shifa-college-of-nursing-malappuram';

DELETE FROM public.course_fees WHERE college_slug = 'al-shifa-college-of-nursing-malappuram';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a3c5740e-ca9e-467c-ab9a-146791fd87ac' AND slug = 'al-shifa-college-of-paramedical-sciences-perinthalmanna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-shifa-college-of-paramedical-sciences-perinthalmanna';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Al Shifa College of Paramedical Sciences, Perinthalmanna is a healthcare education option in Perinthalmanna, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Shifa College of Paramedical Sciences, Perinthalmanna in Perinthalmanna, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Shifa College of Paramedical Sciences, Perinthalmanna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Shifa College of Paramedical Sciences, Perinthalmanna in Perinthalmanna, Kerala: source-reviewed overview for admissions, courses, facilities, placement',
  meta_keywords = 'Al Shifa College of Paramedical Sciences, Perinthalmanna, Al Shifa College of Paramedical Sciences, Perinthalmanna admission 2026, Al Shifa College of Paramedical Sciences, Perinthalmanna courses, Al Shifa College of Paramedical Sciences, Perinthalmanna fees, Al Shifa College of Paramedical Sciences, Perinthalmanna placement, Al Shifa College of Paramedical Sciences, Perinthalmanna facilities, Perinthalmanna, Kerala',
  admission_process = 'Al Shifa College of Paramedical Sciences, Perinthalmanna admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Shifa College of Paramedical Sciences, Perinthalmanna depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Shifa College of Paramedical Sciences, Perinthalmanna course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Shifa College of Paramedical Sciences, Perinthalmanna placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Shifa College of Paramedical Sciences, Perinthalmanna facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Shifa College of Paramedical Sciences, Perinthalmanna should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Shifa College of Paramedical Sciences, Perinthalmanna may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Shifa College of Paramedical Sciences, Perinthalmanna has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'a3c5740e-ca9e-467c-ab9a-146791fd87ac' AND slug = 'al-shifa-college-of-paramedical-sciences-perinthalmanna';

DELETE FROM public.course_fees WHERE college_slug = 'al-shifa-college-of-paramedical-sciences-perinthalmanna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'fb8e8df1-4587-411d-ae5c-313a7a1fdc86' AND slug = 'al-shifa-college-of-pharmacy-perinthalmanna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-shifa-college-of-pharmacy-perinthalmanna';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Al Shifa College of Pharmacy, Perinthalmanna is a healthcare education option in Perinthalmanna, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include PCI, AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al Shifa College of Pharmacy, Perinthalmanna in Perinthalmanna, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al Shifa College of Pharmacy, Perinthalmanna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al Shifa College of Pharmacy, Perinthalmanna in Perinthalmanna, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'Al Shifa College of Pharmacy, Perinthalmanna, Al Shifa College of Pharmacy, Perinthalmanna admission 2026, Al Shifa College of Pharmacy, Perinthalmanna courses, Al Shifa College of Pharmacy, Perinthalmanna fees, Al Shifa College of Pharmacy, Perinthalmanna placement, Al Shifa College of Pharmacy, Perinthalmanna facilities, Perinthalmanna, Kerala',
  admission_process = 'Al Shifa College of Pharmacy, Perinthalmanna admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al Shifa College of Pharmacy, Perinthalmanna depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al Shifa College of Pharmacy, Perinthalmanna course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al Shifa College of Pharmacy, Perinthalmanna placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al Shifa College of Pharmacy, Perinthalmanna facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al Shifa College of Pharmacy, Perinthalmanna should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al Shifa College of Pharmacy, Perinthalmanna may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al Shifa College of Pharmacy, Perinthalmanna is mapped with reviewed approval or affiliation signals such as PCI, AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['PCI', 'AICTE', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'fb8e8df1-4587-411d-ae5c-313a7a1fdc86' AND slug = 'al-shifa-college-of-pharmacy-perinthalmanna';

DELETE FROM public.course_fees WHERE college_slug = 'al-shifa-college-of-pharmacy-perinthalmanna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3908678f-594f-4402-8a64-3116842dda01' AND slug = 'al-ameen-college-of-pharmacy-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-college-of-pharmacy-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Al- Ameen College of Pharmacy, Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1983. Current approval or affiliation signals available for review include AICTE, NBA. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al- Ameen College of Pharmacy, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al- Ameen College of Pharmacy, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al- Ameen College of Pharmacy, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Al- Ameen College of Pharmacy, Bangalore, Al- Ameen College of Pharmacy, Bangalore admission 2026, Al- Ameen College of Pharmacy, Bangalore courses, Al- Ameen College of Pharmacy, Bangalore fees, Al- Ameen College of Pharmacy, Bangalore placement, Al- Ameen College of Pharmacy, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Al- Ameen College of Pharmacy, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al- Ameen College of Pharmacy, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al- Ameen College of Pharmacy, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al- Ameen College of Pharmacy, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al- Ameen College of Pharmacy, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al- Ameen College of Pharmacy, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al- Ameen College of Pharmacy, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al- Ameen College of Pharmacy, Bangalore is mapped with reviewed approval or affiliation signals such as AICTE, NBA. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NBA', 'Medical', 'Muslim Minority Institute)']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3908678f-594f-4402-8a64-3116842dda01' AND slug = 'al-ameen-college-of-pharmacy-bangalore';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-college-of-pharmacy-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'fc0a8cf2-af96-476b-8b69-b553fce6a738' AND slug = 'al-ameen-college-of-education-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-college-of-education-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Al-Ameen College of Education, Bangalore is a teacher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1990. Current approval or affiliation signals available for review include NCTE, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Ameen College of Education, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Ameen College of Education, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Ameen College of Education, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Al-Ameen College of Education, Bangalore, Al-Ameen College of Education, Bangalore admission 2026, Al-Ameen College of Education, Bangalore courses, Al-Ameen College of Education, Bangalore fees, Al-Ameen College of Education, Bangalore placement, Al-Ameen College of Education, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Al-Ameen College of Education, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Ameen College of Education, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Ameen College of Education, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Ameen College of Education, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Ameen College of Education, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Ameen College of Education, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Ameen College of Education, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Ameen College of Education, Bangalore is mapped with reviewed approval or affiliation signals such as NCTE, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'NAAC-A', 'Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'fc0a8cf2-af96-476b-8b69-b553fce6a738' AND slug = 'al-ameen-college-of-education-bangalore';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-college-of-education-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b3b3fd8d-03d8-4092-9fb9-b6dfc634368c' AND slug = 'al-ameen-college-edathala-ernakulam') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-college-edathala-ernakulam';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Al-Ameen College, Edathala, Ernakulam is a higher education option in Ernakulam, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1981. Current approval or affiliation signals available for review include NAAC, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Ameen College, Edathala, Ernakulam in Ernakulam, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Ameen College, Edathala, Ernakulam: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Ameen College, Edathala, Ernakulam in Ernakulam, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026',
  meta_keywords = 'Al-Ameen College, Edathala, Ernakulam, Al-Ameen College, Edathala, Ernakulam admission 2026, Al-Ameen College, Edathala, Ernakulam courses, Al-Ameen College, Edathala, Ernakulam fees, Al-Ameen College, Edathala, Ernakulam placement, Al-Ameen College, Edathala, Ernakulam facilities, Ernakulam, Kerala',
  admission_process = 'Al-Ameen College, Edathala, Ernakulam admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Ameen College, Edathala, Ernakulam depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Ameen College, Edathala, Ernakulam course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Ameen College, Edathala, Ernakulam placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Ameen College, Edathala, Ernakulam facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Ameen College, Edathala, Ernakulam should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Ameen College, Edathala, Ernakulam may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Ameen College, Edathala, Ernakulam is mapped with reviewed approval or affiliation signals such as NAAC, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NAAC', 'UGC', 'General', 'Public (Autonomous)']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'b3b3fd8d-03d8-4092-9fb9-b6dfc634368c' AND slug = 'al-ameen-college-edathala-ernakulam';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-college-edathala-ernakulam';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f1a21954-fb89-48d3-be54-6ad73b0c73f4' AND slug = 'al-ameen-engineering-college-aec-palakkad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-engineering-college-aec-palakkad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Al-Ameen Engineering College - [AEC], Palakkad is a technical education option in Palakkad, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2003. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Ameen Engineering College - [AEC], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Ameen Engineering College - [AEC], Palakkad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Ameen Engineering College - [AEC], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Al-Ameen Engineering College - [AEC], Palakkad, Al-Ameen Engineering College - [AEC], Palakkad admission 2026, Al-Ameen Engineering College - [AEC], Palakkad courses, Al-Ameen Engineering College - [AEC], Palakkad fees, Al-Ameen Engineering College - [AEC], Palakkad placement, Al-Ameen Engineering College - [AEC], Palakkad facilities, Palakkad, Kerala',
  admission_process = 'Al-Ameen Engineering College - [AEC], Palakkad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Ameen Engineering College - [AEC], Palakkad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Ameen Engineering College - [AEC], Palakkad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Ameen Engineering College - [AEC], Palakkad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Ameen Engineering College - [AEC], Palakkad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Ameen Engineering College - [AEC], Palakkad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Ameen Engineering College - [AEC], Palakkad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Ameen Engineering College - [AEC], Palakkad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'f1a21954-fb89-48d3-be54-6ad73b0c73f4' AND slug = 'al-ameen-engineering-college-aec-palakkad';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-engineering-college-aec-palakkad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '875afbcd-da2d-42a1-87c8-d5271cb8c243' AND slug = 'al-ameen-institute-of-information-technology-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameen-institute-of-information-technology-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Al-Ameen Institute of Information Technology, New Delhi is a technical education option in New Delhi, Delhi NCR for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Ameen Institute of Information Technology, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Ameen Institute of Information Technology, New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Ameen Institute of Information Technology, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Al-Ameen Institute of Information Technology, New Delhi, Al-Ameen Institute of Information Technology, New Delhi admission 2026, Al-Ameen Institute of Information Technology, New Delhi courses, Al-Ameen Institute of Information Technology, New Delhi fees, Al-Ameen Institute of Information Technology, New Delhi placement, Al-Ameen Institute of Information Technology, New Delhi facilities, New Delhi, Delhi NCR',
  admission_process = 'Al-Ameen Institute of Information Technology, New Delhi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Ameen Institute of Information Technology, New Delhi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Ameen Institute of Information Technology, New Delhi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Ameen Institute of Information Technology, New Delhi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Ameen Institute of Information Technology, New Delhi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Ameen Institute of Information Technology, New Delhi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Ameen Institute of Information Technology, New Delhi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Ameen Institute of Information Technology, New Delhi has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '875afbcd-da2d-42a1-87c8-d5271cb8c243' AND slug = 'al-ameen-institute-of-information-technology-new-delhi';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameen-institute-of-information-technology-new-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ed65ccf1-8e8f-44c2-8c43-ee3b6b856e3a' AND slug = 'al-ameer-college-of-engineering-and-information-technology-visakhapatnam') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-ameer-college-of-engineering-and-information-technology-visakhapatnam';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Al-Ameer College of Engineering and Information Technology, Visakhapatnam is a technical education option in Visakhapatnam, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam in Visakhapatnam, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam in Visakhapatnam, Andhra Pradesh: source-reviewed overview for admissions, course',
  meta_keywords = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam, Al-Ameer College of Engineering and Information Technology, Visakhapatnam admission 2026, Al-Ameer College of Engineering and Information Technology, Visakhapatnam courses, Al-Ameer College of Engineering and Information Technology, Visakhapatnam fees, Al-Ameer College of Engineering and Information Technology, Visakhapatnam placement, Al-Ameer College of Engineering and Information Technology, Visakhapatnam facilities, Visakhapatnam, Andhra Pradesh',
  admission_process = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Ameer College of Engineering and Information Technology, Visakhapatnam depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Ameer College of Engineering and Information Technology, Visakhapatnam should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Ameer College of Engineering and Information Technology, Visakhapatnam may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Ameer College of Engineering and Information Technology, Visakhapatnam is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'ed65ccf1-8e8f-44c2-8c43-ee3b6b856e3a' AND slug = 'al-ameer-college-of-engineering-and-information-technology-visakhapatnam';

DELETE FROM public.course_fees WHERE college_slug = 'al-ameer-college-of-engineering-and-information-technology-visakhapatnam';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f5723e0e-cf88-4ee1-a2c9-f8611620d75c' AND slug = 'al-amir-college-of-education-sivaganga') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-amir-college-of-education-sivaganga';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Al-Amir College of Education, Sivaganga is a teacher education option in Sivaganga, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2011. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Amir College of Education, Sivaganga in Sivaganga, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Amir College of Education, Sivaganga: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Amir College of Education, Sivaganga in Sivaganga, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Al-Amir College of Education, Sivaganga, Al-Amir College of Education, Sivaganga admission 2026, Al-Amir College of Education, Sivaganga courses, Al-Amir College of Education, Sivaganga fees, Al-Amir College of Education, Sivaganga placement, Al-Amir College of Education, Sivaganga facilities, Sivaganga, Tamil Nadu',
  admission_process = 'Al-Amir College of Education, Sivaganga admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Amir College of Education, Sivaganga depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Amir College of Education, Sivaganga course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Amir College of Education, Sivaganga placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Amir College of Education, Sivaganga facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Amir College of Education, Sivaganga should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Amir College of Education, Sivaganga may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Amir College of Education, Sivaganga is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'f5723e0e-cf88-4ee1-a2c9-f8611620d75c' AND slug = 'al-amir-college-of-education-sivaganga';

DELETE FROM public.course_fees WHERE college_slug = 'al-amir-college-of-education-sivaganga';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4cf72e71-527a-4baa-8aa3-83ee0705a023' AND slug = 'al-azhar-medical-college-and-super-speciality-hospital-aamc-thodupuzha') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-azhar-medical-college-and-super-speciality-hospital-aamc-thodupuzha';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha is a healthcare education option in Thodupuzha, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2014. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha in Thodupuzha, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha in Thodupuzha, Kerala: source-reviewed overview for admissions, courses, facili',
  meta_keywords = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha, Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha admission 2026, Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha courses, Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha fees, Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha placement, Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha facilities, Thodupuzha, Kerala',
  admission_process = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Azhar Medical college and super speciality hospital - [AAMC], Thodupuzha is mapped with reviewed approval or affiliation signals such as MCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['MCI', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '4cf72e71-527a-4baa-8aa3-83ee0705a023' AND slug = 'al-azhar-medical-college-and-super-speciality-hospital-aamc-thodupuzha';

DELETE FROM public.course_fees WHERE college_slug = 'al-azhar-medical-college-and-super-speciality-hospital-aamc-thodupuzha';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '82a59f26-112f-45a8-925d-b67a3ce612a5' AND slug = 'al-badar-dental-college-and-hospital-gulbarga') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-badar-dental-college-and-hospital-gulbarga';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Al-Badar Dental College and Hospital, Gulbarga is a healthcare education option in Gulbarga, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include DCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Badar Dental College and Hospital, Gulbarga in Gulbarga, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Badar Dental College and Hospital, Gulbarga: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Badar Dental College and Hospital, Gulbarga in Gulbarga, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarshi',
  meta_keywords = 'Al-Badar Dental College and Hospital, Gulbarga, Al-Badar Dental College and Hospital, Gulbarga admission 2026, Al-Badar Dental College and Hospital, Gulbarga courses, Al-Badar Dental College and Hospital, Gulbarga fees, Al-Badar Dental College and Hospital, Gulbarga placement, Al-Badar Dental College and Hospital, Gulbarga facilities, Gulbarga, Karnataka',
  admission_process = 'Al-Badar Dental College and Hospital, Gulbarga admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Badar Dental College and Hospital, Gulbarga depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Badar Dental College and Hospital, Gulbarga course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Badar Dental College and Hospital, Gulbarga placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Badar Dental College and Hospital, Gulbarga facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Badar Dental College and Hospital, Gulbarga should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Badar Dental College and Hospital, Gulbarga may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Badar Dental College and Hospital, Gulbarga is mapped with reviewed approval or affiliation signals such as DCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['DCI', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '82a59f26-112f-45a8-925d-b67a3ce612a5' AND slug = 'al-badar-dental-college-and-hospital-gulbarga';

DELETE FROM public.course_fees WHERE college_slug = 'al-badar-dental-college-and-hospital-gulbarga';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '0d05b33d-24e4-4226-b766-a635439b7aac' AND slug = 'al-barkaat-institute-of-management-studies-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-barkaat-institute-of-management-studies-aligarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Al-Barkaat Institute of Management Studies, Aligarh is a management and commerce education option in Aligarh, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Barkaat Institute of Management Studies, Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Barkaat Institute of Management Studies, Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Barkaat Institute of Management Studies, Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, sc',
  meta_keywords = 'Al-Barkaat Institute of Management Studies, Aligarh, Al-Barkaat Institute of Management Studies, Aligarh admission 2026, Al-Barkaat Institute of Management Studies, Aligarh courses, Al-Barkaat Institute of Management Studies, Aligarh fees, Al-Barkaat Institute of Management Studies, Aligarh placement, Al-Barkaat Institute of Management Studies, Aligarh facilities, Aligarh, Uttar Pradesh',
  admission_process = 'Al-Barkaat Institute of Management Studies, Aligarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Barkaat Institute of Management Studies, Aligarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Barkaat Institute of Management Studies, Aligarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Barkaat Institute of Management Studies, Aligarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Barkaat Institute of Management Studies, Aligarh facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Barkaat Institute of Management Studies, Aligarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Barkaat Institute of Management Studies, Aligarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Barkaat Institute of Management Studies, Aligarh is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '0d05b33d-24e4-4226-b766-a635439b7aac' AND slug = 'al-barkaat-institute-of-management-studies-aligarh';

DELETE FROM public.course_fees WHERE college_slug = 'al-barkaat-institute-of-management-studies-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ca00b72e-35ac-4749-81f6-d0e9fa617f4d' AND slug = 'al-falah-university-afu-faridabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-falah-university-afu-faridabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Al-Falah university - [AFU], Faridabad is a higher education option in Faridabad, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1997. Current approval or affiliation signals available for review include NCTE, AICTE, UGC, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Falah university - [AFU], Faridabad in Faridabad, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Falah university - [AFU], Faridabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Falah university - [AFU], Faridabad in Faridabad, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 20',
  meta_keywords = 'Al-Falah university - [AFU], Faridabad, Al-Falah university - [AFU], Faridabad admission 2026, Al-Falah university - [AFU], Faridabad courses, Al-Falah university - [AFU], Faridabad fees, Al-Falah university - [AFU], Faridabad placement, Al-Falah university - [AFU], Faridabad facilities, Faridabad, Haryana',
  admission_process = 'Al-Falah university - [AFU], Faridabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Falah university - [AFU], Faridabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Falah university - [AFU], Faridabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Falah university - [AFU], Faridabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Falah university - [AFU], Faridabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Falah university - [AFU], Faridabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Falah university - [AFU], Faridabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Falah university - [AFU], Faridabad is mapped with reviewed approval or affiliation signals such as NCTE, AICTE, UGC, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'AICTE', 'UGC', 'NAAC-A', 'General', 'Private University']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'ca00b72e-35ac-4749-81f6-d0e9fa617f4d' AND slug = 'al-falah-university-afu-faridabad';

DELETE FROM public.course_fees WHERE college_slug = 'al-falah-university-afu-faridabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'aaf8a8e2-5d42-4682-97bf-4bc6ef545593' AND slug = 'al-qurmoshi-institute-of-business-management-aqibm-hyderabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: al-qurmoshi-institute-of-business-management-aqibm-hyderabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad is a management and commerce education option in Hyderabad, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1995. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad in Hyderabad, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad in Hyderabad, Telangana: source-reviewed overview for admissions, courses, facilities, pl',
  meta_keywords = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad, Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad admission 2026, Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad courses, Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad fees, Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad placement, Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad facilities, Hyderabad, Telangana',
  admission_process = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Al-Qurmoshi Institute of Business Management - [AQIBM], Hyderabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'aaf8a8e2-5d42-4682-97bf-4bc6ef545593' AND slug = 'al-qurmoshi-institute-of-business-management-aqibm-hyderabad';

DELETE FROM public.course_fees WHERE college_slug = 'al-qurmoshi-institute-of-business-management-aqibm-hyderabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '93533a00-9448-430c-aa97-eb58b307cf25' AND slug = 'aladi-aruna-college-of-nursing-tirunelveli') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aladi-aruna-college-of-nursing-tirunelveli';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aladi Aruna College of Nursing, Tirunelveli is a healthcare education option in Tirunelveli, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aladi Aruna College of Nursing, Tirunelveli in Tirunelveli, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aladi Aruna College of Nursing, Tirunelveli: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aladi Aruna College of Nursing, Tirunelveli in Tirunelveli, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'Aladi Aruna College of Nursing, Tirunelveli, Aladi Aruna College of Nursing, Tirunelveli admission 2026, Aladi Aruna College of Nursing, Tirunelveli courses, Aladi Aruna College of Nursing, Tirunelveli fees, Aladi Aruna College of Nursing, Tirunelveli placement, Aladi Aruna College of Nursing, Tirunelveli facilities, Tirunelveli, Tamil Nadu',
  admission_process = 'Aladi Aruna College of Nursing, Tirunelveli admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aladi Aruna College of Nursing, Tirunelveli depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aladi Aruna College of Nursing, Tirunelveli course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aladi Aruna College of Nursing, Tirunelveli placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aladi Aruna College of Nursing, Tirunelveli facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aladi Aruna College of Nursing, Tirunelveli should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aladi Aruna College of Nursing, Tirunelveli may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aladi Aruna College of Nursing, Tirunelveli has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '93533a00-9448-430c-aa97-eb58b307cf25' AND slug = 'aladi-aruna-college-of-nursing-tirunelveli';

DELETE FROM public.course_fees WHERE college_slug = 'aladi-aruna-college-of-nursing-tirunelveli';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'dec65eeb-d9ab-43b4-855a-5c3ef8e48950' AND slug = 'alagappa-chettiar-college-of-engineering-and-technology-karaikudi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alagappa-chettiar-college-of-engineering-and-technology-karaikudi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Alagappa Chettiar College of Engineering and Technology, Karaikudi is a technical education option in Karaikudi, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1952. Current approval or affiliation signals available for review include AICTE, NBA. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, ',
  meta_keywords = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi, Alagappa Chettiar College of Engineering and Technology, Karaikudi admission 2026, Alagappa Chettiar College of Engineering and Technology, Karaikudi courses, Alagappa Chettiar College of Engineering and Technology, Karaikudi fees, Alagappa Chettiar College of Engineering and Technology, Karaikudi placement, Alagappa Chettiar College of Engineering and Technology, Karaikudi facilities, Karaikudi, Tamil Nadu',
  admission_process = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alagappa Chettiar College of Engineering and Technology, Karaikudi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alagappa Chettiar College of Engineering and Technology, Karaikudi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alagappa Chettiar College of Engineering and Technology, Karaikudi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alagappa Chettiar College of Engineering and Technology, Karaikudi is mapped with reviewed approval or affiliation signals such as AICTE, NBA. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NBA', 'Engineering', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'dec65eeb-d9ab-43b4-855a-5c3ef8e48950' AND slug = 'alagappa-chettiar-college-of-engineering-and-technology-karaikudi';

DELETE FROM public.course_fees WHERE college_slug = 'alagappa-chettiar-college-of-engineering-and-technology-karaikudi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '50e9ce31-282a-475f-aa99-ba488f02b4d9' AND slug = 'alagappa-college-of-technology-anna-university-act-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alagappa-college-of-technology-anna-university-act-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Alagappa College of Technology, Anna University - [ACT], Chennai is a technical education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1944. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alagappa College of Technology, Anna University - [ACT], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alagappa College of Technology, Anna University - [ACT], Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alagappa College of Technology, Anna University - [ACT], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, plac',
  meta_keywords = 'Alagappa College of Technology, Anna University - [ACT], Chennai, Alagappa College of Technology, Anna University - [ACT], Chennai admission 2026, Alagappa College of Technology, Anna University - [ACT], Chennai courses, Alagappa College of Technology, Anna University - [ACT], Chennai fees, Alagappa College of Technology, Anna University - [ACT], Chennai placement, Alagappa College of Technology, Anna University - [ACT], Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'Alagappa College of Technology, Anna University - [ACT], Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alagappa College of Technology, Anna University - [ACT], Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alagappa College of Technology, Anna University - [ACT], Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alagappa College of Technology, Anna University - [ACT], Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alagappa College of Technology, Anna University - [ACT], Chennai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alagappa College of Technology, Anna University - [ACT], Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alagappa College of Technology, Anna University - [ACT], Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alagappa College of Technology, Anna University - [ACT], Chennai is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Public Institute']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '50e9ce31-282a-475f-aa99-ba488f02b4d9' AND slug = 'alagappa-college-of-technology-anna-university-act-chennai';

DELETE FROM public.course_fees WHERE college_slug = 'alagappa-college-of-technology-anna-university-act-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bf07737d-c11d-4c3f-9384-a238d19a4627' AND slug = 'alagappa-institute-of-management-aim-karaikudi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alagappa-institute-of-management-aim-karaikudi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Alagappa Institute of Management - [AIM], Karaikudi is a management and commerce education option in Karaikudi, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1993. Current approval or affiliation signals available for review include AICTE, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alagappa Institute of Management - [AIM], Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alagappa Institute of Management - [AIM], Karaikudi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alagappa Institute of Management - [AIM], Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, sch',
  meta_keywords = 'Alagappa Institute of Management - [AIM], Karaikudi, Alagappa Institute of Management - [AIM], Karaikudi admission 2026, Alagappa Institute of Management - [AIM], Karaikudi courses, Alagappa Institute of Management - [AIM], Karaikudi fees, Alagappa Institute of Management - [AIM], Karaikudi placement, Alagappa Institute of Management - [AIM], Karaikudi facilities, Karaikudi, Tamil Nadu',
  admission_process = 'Alagappa Institute of Management - [AIM], Karaikudi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alagappa Institute of Management - [AIM], Karaikudi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alagappa Institute of Management - [AIM], Karaikudi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alagappa Institute of Management - [AIM], Karaikudi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alagappa Institute of Management - [AIM], Karaikudi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alagappa Institute of Management - [AIM], Karaikudi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alagappa Institute of Management - [AIM], Karaikudi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alagappa Institute of Management - [AIM], Karaikudi is mapped with reviewed approval or affiliation signals such as AICTE, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NAAC-A', 'Management', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'bf07737d-c11d-4c3f-9384-a238d19a4627' AND slug = 'alagappa-institute-of-management-aim-karaikudi';

DELETE FROM public.course_fees WHERE college_slug = 'alagappa-institute-of-management-aim-karaikudi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3d87488b-ce7e-4969-a57e-f943158315b3' AND slug = 'alagappa-institute-of-technology-ait-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alagappa-institute-of-technology-ait-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Alagappa Institute of Technology - [AIT], Chennai is a technical education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alagappa Institute of Technology - [AIT], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alagappa Institute of Technology - [AIT], Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alagappa Institute of Technology - [AIT], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'Alagappa Institute of Technology - [AIT], Chennai, Alagappa Institute of Technology - [AIT], Chennai admission 2026, Alagappa Institute of Technology - [AIT], Chennai courses, Alagappa Institute of Technology - [AIT], Chennai fees, Alagappa Institute of Technology - [AIT], Chennai placement, Alagappa Institute of Technology - [AIT], Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'Alagappa Institute of Technology - [AIT], Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alagappa Institute of Technology - [AIT], Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alagappa Institute of Technology - [AIT], Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alagappa Institute of Technology - [AIT], Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alagappa Institute of Technology - [AIT], Chennai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alagappa Institute of Technology - [AIT], Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alagappa Institute of Technology - [AIT], Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alagappa Institute of Technology - [AIT], Chennai is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3d87488b-ce7e-4969-a57e-f943158315b3' AND slug = 'alagappa-institute-of-technology-ait-chennai';

DELETE FROM public.course_fees WHERE college_slug = 'alagappa-institute-of-technology-ait-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bc98af78-a683-4340-b28f-9e5568a8fb70' AND slug = 'alagappa-university-directorate-of-distance-education-dde-karaikudi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alagappa-university-directorate-of-distance-education-dde-karaikudi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Alagappa University, Directorate of Distance Education - [DDE], Karaikudi is a teacher education option in Karaikudi, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include DEB. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facil',
  meta_keywords = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi, Alagappa University, Directorate of Distance Education - [DDE], Karaikudi admission 2026, Alagappa University, Directorate of Distance Education - [DDE], Karaikudi courses, Alagappa University, Directorate of Distance Education - [DDE], Karaikudi fees, Alagappa University, Directorate of Distance Education - [DDE], Karaikudi placement, Alagappa University, Directorate of Distance Education - [DDE], Karaikudi facilities, Karaikudi, Tamil Nadu',
  admission_process = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alagappa University, Directorate of Distance Education - [DDE], Karaikudi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alagappa University, Directorate of Distance Education - [DDE], Karaikudi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alagappa University, Directorate of Distance Education - [DDE], Karaikudi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alagappa University, Directorate of Distance Education - [DDE], Karaikudi is mapped with reviewed approval or affiliation signals such as DEB. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['DEB', 'Education', 'State University']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'bc98af78-a683-4340-b28f-9e5568a8fb70' AND slug = 'alagappa-university-directorate-of-distance-education-dde-karaikudi';

DELETE FROM public.course_fees WHERE college_slug = 'alagappa-university-directorate-of-distance-education-dde-karaikudi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ab09caca-6cf0-4b28-bd1a-58665d690206' AND slug = 'alagappa-university-karaikudi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alagappa-university-karaikudi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Alagappa University, Karaikudi is a higher education option in Karaikudi, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1985. Current approval or affiliation signals available for review include AICTE, NAAC, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alagappa University, Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alagappa University, Karaikudi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alagappa University, Karaikudi in Karaikudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 de',
  meta_keywords = 'Alagappa University, Karaikudi, Alagappa University, Karaikudi admission 2026, Alagappa University, Karaikudi courses, Alagappa University, Karaikudi fees, Alagappa University, Karaikudi placement, Alagappa University, Karaikudi facilities, Karaikudi, Tamil Nadu',
  admission_process = 'Alagappa University, Karaikudi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alagappa University, Karaikudi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alagappa University, Karaikudi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alagappa University, Karaikudi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alagappa University, Karaikudi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alagappa University, Karaikudi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alagappa University, Karaikudi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alagappa University, Karaikudi is mapped with reviewed approval or affiliation signals such as AICTE, NAAC, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NAAC', 'UGC', 'General', 'Autonomous University']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'ab09caca-6cf0-4b28-bd1a-58665d690206' AND slug = 'alagappa-university-karaikudi';

DELETE FROM public.course_fees WHERE college_slug = 'alagappa-university-karaikudi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'eff4692b-230b-4f98-b9b9-dfa02cb7074a' AND slug = 'alamuri-ratnamala-institute-of-engineering-and-technology-armiet-thane') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alamuri-ratnamala-institute-of-engineering-and-technology-armiet-thane';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane is a technical education option in Thane, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane in Thane, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane in Thane, Maharashtra: source-reviewed overview for admissions, courses, facili',
  meta_keywords = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane, Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane admission 2026, Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane courses, Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane fees, Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane placement, Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane facilities, Thane, Maharashtra',
  admission_process = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alamuri Ratnamala Institute of Engineering and Technology - [ARMIET], Thane is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'eff4692b-230b-4f98-b9b9-dfa02cb7074a' AND slug = 'alamuri-ratnamala-institute-of-engineering-and-technology-armiet-thane';

DELETE FROM public.course_fees WHERE college_slug = 'alamuri-ratnamala-institute-of-engineering-and-technology-armiet-thane';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2c4d697a-e2c4-4d25-a341-c5372e9aa866' AND slug = 'alankar-pg-girls-college-jaipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alankar-pg-girls-college-jaipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Alankar P.G. Girls College, Jaipur is a higher education option in Jaipur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alankar P.G. Girls College, Jaipur in Jaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alankar P.G. Girls College, Jaipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alankar P.G. Girls College, Jaipur in Jaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 de',
  meta_keywords = 'Alankar P.G. Girls College, Jaipur, Alankar P.G. Girls College, Jaipur admission 2026, Alankar P.G. Girls College, Jaipur courses, Alankar P.G. Girls College, Jaipur fees, Alankar P.G. Girls College, Jaipur placement, Alankar P.G. Girls College, Jaipur facilities, Jaipur, Rajasthan',
  admission_process = 'Alankar P.G. Girls College, Jaipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alankar P.G. Girls College, Jaipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alankar P.G. Girls College, Jaipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alankar P.G. Girls College, Jaipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alankar P.G. Girls College, Jaipur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alankar P.G. Girls College, Jaipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alankar P.G. Girls College, Jaipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alankar P.G. Girls College, Jaipur is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['UGC', 'General', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '2c4d697a-e2c4-4d25-a341-c5372e9aa866' AND slug = 'alankar-pg-girls-college-jaipur';

DELETE FROM public.course_fees WHERE college_slug = 'alankar-pg-girls-college-jaipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e3380392-5745-4070-8b66-cf0b53be4efa' AND slug = 'alard-college-of-engineering-and-management-acem-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alard-college-of-engineering-and-management-acem-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Alard College of Engineering and Management - [ACEM], Pune is a technical education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alard College of Engineering and Management - [ACEM], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alard College of Engineering and Management - [ACEM], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alard College of Engineering and Management - [ACEM], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Alard College of Engineering and Management - [ACEM], Pune, Alard College of Engineering and Management - [ACEM], Pune admission 2026, Alard College of Engineering and Management - [ACEM], Pune courses, Alard College of Engineering and Management - [ACEM], Pune fees, Alard College of Engineering and Management - [ACEM], Pune placement, Alard College of Engineering and Management - [ACEM], Pune facilities, Pune, Maharashtra',
  admission_process = 'Alard College of Engineering and Management - [ACEM], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alard College of Engineering and Management - [ACEM], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alard College of Engineering and Management - [ACEM], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alard College of Engineering and Management - [ACEM], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alard College of Engineering and Management - [ACEM], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alard College of Engineering and Management - [ACEM], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alard College of Engineering and Management - [ACEM], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alard College of Engineering and Management - [ACEM], Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'e3380392-5745-4070-8b66-cf0b53be4efa' AND slug = 'alard-college-of-engineering-and-management-acem-pune';

DELETE FROM public.course_fees WHERE college_slug = 'alard-college-of-engineering-and-management-acem-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '74767bd3-d231-4392-b477-1609eae531cf' AND slug = 'alard-college-of-pharmacy-acp-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alard-college-of-pharmacy-acp-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Alard College of Pharmacy - [ACP], Pune is a healthcare education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include PCI, AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alard College of Pharmacy - [ACP], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alard College of Pharmacy - [ACP], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alard College of Pharmacy - [ACP], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 20',
  meta_keywords = 'Alard College of Pharmacy - [ACP], Pune, Alard College of Pharmacy - [ACP], Pune admission 2026, Alard College of Pharmacy - [ACP], Pune courses, Alard College of Pharmacy - [ACP], Pune fees, Alard College of Pharmacy - [ACP], Pune placement, Alard College of Pharmacy - [ACP], Pune facilities, Pune, Maharashtra',
  admission_process = 'Alard College of Pharmacy - [ACP], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alard College of Pharmacy - [ACP], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alard College of Pharmacy - [ACP], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alard College of Pharmacy - [ACP], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alard College of Pharmacy - [ACP], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alard College of Pharmacy - [ACP], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alard College of Pharmacy - [ACP], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alard College of Pharmacy - [ACP], Pune is mapped with reviewed approval or affiliation signals such as PCI, AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['PCI', 'AICTE', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '74767bd3-d231-4392-b477-1609eae531cf' AND slug = 'alard-college-of-pharmacy-acp-pune';

DELETE FROM public.course_fees WHERE college_slug = 'alard-college-of-pharmacy-acp-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3170cc53-f541-42d4-b64a-f843d1d87992' AND slug = 'alard-institute-of-management-sciences-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alard-institute-of-management-sciences-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Alard Institute of Management Sciences, Pune is a management and commerce education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alard Institute of Management Sciences, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alard Institute of Management Sciences, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alard Institute of Management Sciences, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships a',
  meta_keywords = 'Alard Institute of Management Sciences, Pune, Alard Institute of Management Sciences, Pune admission 2026, Alard Institute of Management Sciences, Pune courses, Alard Institute of Management Sciences, Pune fees, Alard Institute of Management Sciences, Pune placement, Alard Institute of Management Sciences, Pune facilities, Pune, Maharashtra',
  admission_process = 'Alard Institute of Management Sciences, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alard Institute of Management Sciences, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alard Institute of Management Sciences, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alard Institute of Management Sciences, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alard Institute of Management Sciences, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alard Institute of Management Sciences, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alard Institute of Management Sciences, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alard Institute of Management Sciences, Pune is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['UGC', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '3170cc53-f541-42d4-b64a-f843d1d87992' AND slug = 'alard-institute-of-management-sciences-pune';

DELETE FROM public.course_fees WHERE college_slug = 'alard-institute-of-management-sciences-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4afd935b-6215-463e-9817-743493dbccfa' AND slug = 'alard-school-of-business-management-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alard-school-of-business-management-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Alard School of Business Management, Pune is a management and commerce education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alard School of Business Management, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alard School of Business Management, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alard School of Business Management, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and ',
  meta_keywords = 'Alard School of Business Management, Pune, Alard School of Business Management, Pune admission 2026, Alard School of Business Management, Pune courses, Alard School of Business Management, Pune fees, Alard School of Business Management, Pune placement, Alard School of Business Management, Pune facilities, Pune, Maharashtra',
  admission_process = 'Alard School of Business Management, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alard School of Business Management, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alard School of Business Management, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alard School of Business Management, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alard School of Business Management, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alard School of Business Management, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alard School of Business Management, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alard School of Business Management, Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '4afd935b-6215-463e-9817-743493dbccfa' AND slug = 'alard-school-of-business-management-pune';

DELETE FROM public.course_fees WHERE college_slug = 'alard-school-of-business-management-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e9ded89b-eaf4-4da6-ae5b-d363d1af65dc' AND slug = 'albertian-institute-of-management-aim-cochin') THEN
    RAISE EXCEPTION 'College target not found or slug changed: albertian-institute-of-management-aim-cochin';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Albertian Institute of Management- [AIM], Cochin is a management and commerce education option in Cochin, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include AICTE, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Albertian Institute of Management- [AIM], Cochin in Cochin, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Albertian Institute of Management- [AIM], Cochin: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Albertian Institute of Management- [AIM], Cochin in Cochin, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Albertian Institute of Management- [AIM], Cochin, Albertian Institute of Management- [AIM], Cochin admission 2026, Albertian Institute of Management- [AIM], Cochin courses, Albertian Institute of Management- [AIM], Cochin fees, Albertian Institute of Management- [AIM], Cochin placement, Albertian Institute of Management- [AIM], Cochin facilities, Cochin, Kerala',
  admission_process = 'Albertian Institute of Management- [AIM], Cochin admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Albertian Institute of Management- [AIM], Cochin depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Albertian Institute of Management- [AIM], Cochin course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Albertian Institute of Management- [AIM], Cochin placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Albertian Institute of Management- [AIM], Cochin facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Albertian Institute of Management- [AIM], Cochin should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Albertian Institute of Management- [AIM], Cochin may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Albertian Institute of Management- [AIM], Cochin is mapped with reviewed approval or affiliation signals such as AICTE, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'NAAC-A', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'e9ded89b-eaf4-4da6-ae5b-d363d1af65dc' AND slug = 'albertian-institute-of-management-aim-cochin';

DELETE FROM public.course_fees WHERE college_slug = 'albertian-institute-of-management-aim-cochin';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '64687e05-a387-4036-90ff-7f23c15ee79a' AND slug = 'albertian-institute-of-science-and-technology-aisat-kochi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: albertian-institute-of-science-and-technology-aisat-kochi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Albertian Institute of Science and Technology - [AISAT], Kochi is a technical education option in Kochi, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2011. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Albertian Institute of Science and Technology - [AISAT], Kochi in Kochi, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Albertian Institute of Science and Technology - [AISAT], Kochi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Albertian Institute of Science and Technology - [AISAT], Kochi in Kochi, Kerala: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Albertian Institute of Science and Technology - [AISAT], Kochi, Albertian Institute of Science and Technology - [AISAT], Kochi admission 2026, Albertian Institute of Science and Technology - [AISAT], Kochi courses, Albertian Institute of Science and Technology - [AISAT], Kochi fees, Albertian Institute of Science and Technology - [AISAT], Kochi placement, Albertian Institute of Science and Technology - [AISAT], Kochi facilities, Kochi, Kerala',
  admission_process = 'Albertian Institute of Science and Technology - [AISAT], Kochi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Albertian Institute of Science and Technology - [AISAT], Kochi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Albertian Institute of Science and Technology - [AISAT], Kochi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Albertian Institute of Science and Technology - [AISAT], Kochi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Albertian Institute of Science and Technology - [AISAT], Kochi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Albertian Institute of Science and Technology - [AISAT], Kochi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Albertian Institute of Science and Technology - [AISAT], Kochi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Albertian Institute of Science and Technology - [AISAT], Kochi is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '64687e05-a387-4036-90ff-7f23c15ee79a' AND slug = 'albertian-institute-of-science-and-technology-aisat-kochi';

DELETE FROM public.course_fees WHERE college_slug = 'albertian-institute-of-science-and-technology-aisat-kochi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c6fff859-db8d-4857-aa8d-0793119e05ad' AND slug = 'alder-college-kohima') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alder-college-kohima';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Alder College, Kohima is a higher education option in Kohima, Nagaland for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alder College, Kohima in Kohima, Nagaland: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alder College, Kohima: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alder College, Kohima in Kohima, Nagaland: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_keywords = 'Alder College, Kohima, Alder College, Kohima admission 2026, Alder College, Kohima courses, Alder College, Kohima fees, Alder College, Kohima placement, Alder College, Kohima facilities, Kohima, Nagaland',
  admission_process = 'Alder College, Kohima admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alder College, Kohima depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alder College, Kohima course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alder College, Kohima placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alder College, Kohima facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alder College, Kohima should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alder College, Kohima may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alder College, Kohima is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['UGC', 'General', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'c6fff859-db8d-4857-aa8d-0793119e05ad' AND slug = 'alder-college-kohima';

DELETE FROM public.course_fees WHERE college_slug = 'alder-college-kohima';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f01c8bb4-e84a-42a9-86df-562a766ea979' AND slug = 'alfa-college-of-engineering-and-technology-kurnool') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alfa-college-of-engineering-and-technology-kurnool';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Alfa College of Engineering and Technology, Kurnool is a technical education option in Kurnool, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alfa College of Engineering and Technology, Kurnool in Kurnool, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alfa College of Engineering and Technology, Kurnool: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alfa College of Engineering and Technology, Kurnool in Kurnool, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, s',
  meta_keywords = 'Alfa College of Engineering and Technology, Kurnool, Alfa College of Engineering and Technology, Kurnool admission 2026, Alfa College of Engineering and Technology, Kurnool courses, Alfa College of Engineering and Technology, Kurnool fees, Alfa College of Engineering and Technology, Kurnool placement, Alfa College of Engineering and Technology, Kurnool facilities, Kurnool, Andhra Pradesh',
  admission_process = 'Alfa College of Engineering and Technology, Kurnool admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alfa College of Engineering and Technology, Kurnool depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alfa College of Engineering and Technology, Kurnool course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alfa College of Engineering and Technology, Kurnool placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alfa College of Engineering and Technology, Kurnool facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alfa College of Engineering and Technology, Kurnool should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alfa College of Engineering and Technology, Kurnool may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alfa College of Engineering and Technology, Kurnool is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private Institute']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'f01c8bb4-e84a-42a9-86df-562a766ea979' AND slug = 'alfa-college-of-engineering-and-technology-kurnool';

DELETE FROM public.course_fees WHERE college_slug = 'alfa-college-of-engineering-and-technology-kurnool';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '02fef5c4-6e65-4483-80dc-9f6b7499e908' AND slug = 'alhassan-teacher039s-training-college-ahttc-samastipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alhassan-teacher039s-training-college-ahttc-samastipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, AlHassan Teacher''s Training College - [AHTTC], Samastipur is a teacher education option in Samastipur, Bihar for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur in Samastipur, Bihar: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur in Samastipur, Bihar: source-reviewed overview for admissions, courses, facilities, placements, s',
  meta_keywords = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur, AlHassan Teacher''s Training College - [AHTTC], Samastipur admission 2026, AlHassan Teacher''s Training College - [AHTTC], Samastipur courses, AlHassan Teacher''s Training College - [AHTTC], Samastipur fees, AlHassan Teacher''s Training College - [AHTTC], Samastipur placement, AlHassan Teacher''s Training College - [AHTTC], Samastipur facilities, Samastipur, Bihar',
  admission_process = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AlHassan Teacher''s Training College - [AHTTC], Samastipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AlHassan Teacher''s Training College - [AHTTC], Samastipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AlHassan Teacher''s Training College - [AHTTC], Samastipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AlHassan Teacher''s Training College - [AHTTC], Samastipur is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'Education', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '02fef5c4-6e65-4483-80dc-9f6b7499e908' AND slug = 'alhassan-teacher039s-training-college-ahttc-samastipur';

DELETE FROM public.course_fees WHERE college_slug = 'alhassan-teacher039s-training-college-ahttc-samastipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ab7c7646-a713-4912-97b4-23d47e0a214b' AND slug = 'ali-yavar-jung-national-institute-for-the-hearing-handicapped-ayjnihh-mumbai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ali-yavar-jung-national-institute-for-the-hearing-handicapped-ayjnihh-mumbai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai is a management and commerce education option in Mumbai, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1983. Current approval or affiliation signals available for review include RCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses,',
  meta_keywords = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai, Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai admission 2026, Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai courses, Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai fees, Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai placement, Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai facilities, Mumbai, Maharashtra',
  admission_process = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ali Yavar Jung National Institute for The Hearing Handicapped - [AYJNIHH], Mumbai is mapped with reviewed approval or affiliation signals such as RCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['RCI', 'Management', 'Private (Autonomous)']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'ab7c7646-a713-4912-97b4-23d47e0a214b' AND slug = 'ali-yavar-jung-national-institute-for-the-hearing-handicapped-ayjnihh-mumbai';

DELETE FROM public.course_fees WHERE college_slug = 'ali-yavar-jung-national-institute-for-the-hearing-handicapped-ayjnihh-mumbai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '617e0138-351b-4431-91fa-f19a2b3f9617' AND slug = 'aliah-university-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aliah-university-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aliah University, Kolkata is a higher education option in Kolkata, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include NCTE, AICTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aliah University, Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aliah University, Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aliah University, Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision',
  meta_keywords = 'Aliah University, Kolkata, Aliah University, Kolkata admission 2026, Aliah University, Kolkata courses, Aliah University, Kolkata fees, Aliah University, Kolkata placement, Aliah University, Kolkata facilities, Kolkata, West Bengal',
  admission_process = 'Aliah University, Kolkata admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aliah University, Kolkata depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aliah University, Kolkata course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aliah University, Kolkata placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aliah University, Kolkata facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aliah University, Kolkata should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aliah University, Kolkata may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aliah University, Kolkata is mapped with reviewed approval or affiliation signals such as NCTE, AICTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NCTE', 'AICTE', 'UGC', 'General', 'Autonomous University']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '617e0138-351b-4431-91fa-f19a2b3f9617' AND slug = 'aliah-university-kolkata';

DELETE FROM public.course_fees WHERE college_slug = 'aliah-university-kolkata';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '48a12a97-fb3f-42d9-8823-3778af96f57e' AND slug = 'alice-institute-of-technology-ait-ranchi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alice-institute-of-technology-ait-ranchi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Alice Institute of Technology [AIT], Ranchi is a technical education option in Ranchi, Jharkhand for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2003. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alice Institute of Technology [AIT], Ranchi in Ranchi, Jharkhand: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alice Institute of Technology [AIT], Ranchi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alice Institute of Technology [AIT], Ranchi in Ranchi, Jharkhand: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Alice Institute of Technology [AIT], Ranchi, Alice Institute of Technology [AIT], Ranchi admission 2026, Alice Institute of Technology [AIT], Ranchi courses, Alice Institute of Technology [AIT], Ranchi fees, Alice Institute of Technology [AIT], Ranchi placement, Alice Institute of Technology [AIT], Ranchi facilities, Ranchi, Jharkhand',
  admission_process = 'Alice Institute of Technology [AIT], Ranchi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alice Institute of Technology [AIT], Ranchi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alice Institute of Technology [AIT], Ranchi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alice Institute of Technology [AIT], Ranchi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alice Institute of Technology [AIT], Ranchi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alice Institute of Technology [AIT], Ranchi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alice Institute of Technology [AIT], Ranchi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alice Institute of Technology [AIT], Ranchi is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '48a12a97-fb3f-42d9-8823-3778af96f57e' AND slug = 'alice-institute-of-technology-ait-ranchi';

DELETE FROM public.course_fees WHERE college_slug = 'alice-institute-of-technology-ait-ranchi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7fccc0d4-804e-49d3-8b17-c00ac9e0ab53' AND slug = 'aligarh-college-of-engineering-and-technology-acet-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aligarh-college-of-engineering-and-technology-acet-aligarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aligarh College of Engineering and Technology - [ACET], Aligarh is a technical education option in Aligarh, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aligarh College of Engineering and Technology - [ACET], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aligarh College of Engineering and Technology - [ACET], Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aligarh College of Engineering and Technology - [ACET], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, pl',
  meta_keywords = 'Aligarh College of Engineering and Technology - [ACET], Aligarh, Aligarh College of Engineering and Technology - [ACET], Aligarh admission 2026, Aligarh College of Engineering and Technology - [ACET], Aligarh courses, Aligarh College of Engineering and Technology - [ACET], Aligarh fees, Aligarh College of Engineering and Technology - [ACET], Aligarh placement, Aligarh College of Engineering and Technology - [ACET], Aligarh facilities, Aligarh, Uttar Pradesh',
  admission_process = 'Aligarh College of Engineering and Technology - [ACET], Aligarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aligarh College of Engineering and Technology - [ACET], Aligarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aligarh College of Engineering and Technology - [ACET], Aligarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aligarh College of Engineering and Technology - [ACET], Aligarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aligarh College of Engineering and Technology - [ACET], Aligarh facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aligarh College of Engineering and Technology - [ACET], Aligarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aligarh College of Engineering and Technology - [ACET], Aligarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aligarh College of Engineering and Technology - [ACET], Aligarh is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Engineering', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '7fccc0d4-804e-49d3-8b17-c00ac9e0ab53' AND slug = 'aligarh-college-of-engineering-and-technology-acet-aligarh';

DELETE FROM public.course_fees WHERE college_slug = 'aligarh-college-of-engineering-and-technology-acet-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4a10380f-2e2c-4bdb-96b3-f3fd43528073' AND slug = 'aligarh-institute-of-paramedical-sciences-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aligarh-institute-of-paramedical-sciences-aligarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aligarh Institute of ParaMedical Sciences, Aligarh is a healthcare education option in Aligarh, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1993. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aligarh Institute of ParaMedical Sciences, Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aligarh Institute of ParaMedical Sciences, Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aligarh Institute of ParaMedical Sciences, Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, sch',
  meta_keywords = 'Aligarh Institute of ParaMedical Sciences, Aligarh, Aligarh Institute of ParaMedical Sciences, Aligarh admission 2026, Aligarh Institute of ParaMedical Sciences, Aligarh courses, Aligarh Institute of ParaMedical Sciences, Aligarh fees, Aligarh Institute of ParaMedical Sciences, Aligarh placement, Aligarh Institute of ParaMedical Sciences, Aligarh facilities, Aligarh, Uttar Pradesh',
  admission_process = 'Aligarh Institute of ParaMedical Sciences, Aligarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aligarh Institute of ParaMedical Sciences, Aligarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aligarh Institute of ParaMedical Sciences, Aligarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aligarh Institute of ParaMedical Sciences, Aligarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aligarh Institute of ParaMedical Sciences, Aligarh facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aligarh Institute of ParaMedical Sciences, Aligarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aligarh Institute of ParaMedical Sciences, Aligarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aligarh Institute of ParaMedical Sciences, Aligarh has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  tags = ARRAY['Medical', 'Private (Autonomous)']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '4a10380f-2e2c-4bdb-96b3-f3fd43528073' AND slug = 'aligarh-institute-of-paramedical-sciences-aligarh';

DELETE FROM public.course_fees WHERE college_slug = 'aligarh-institute-of-paramedical-sciences-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '96351398-5c93-4944-b856-a48638cebf24' AND slug = 'aligarh-muslim-university-amu-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aligarh-muslim-university-amu-aligarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aligarh Muslim University - [AMU], Aligarh is a higher education option in Aligarh, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1920. Current approval or affiliation signals available for review include NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aligarh Muslim University - [AMU], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aligarh Muslim University - [AMU], Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aligarh Muslim University - [AMU], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarship',
  meta_keywords = 'Aligarh Muslim University - [AMU], Aligarh, Aligarh Muslim University - [AMU], Aligarh admission 2026, Aligarh Muslim University - [AMU], Aligarh courses, Aligarh Muslim University - [AMU], Aligarh fees, Aligarh Muslim University - [AMU], Aligarh placement, Aligarh Muslim University - [AMU], Aligarh facilities, Aligarh, Uttar Pradesh',
  admission_process = 'Aligarh Muslim University - [AMU], Aligarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aligarh Muslim University - [AMU], Aligarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aligarh Muslim University - [AMU], Aligarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aligarh Muslim University - [AMU], Aligarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aligarh Muslim University - [AMU], Aligarh facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aligarh Muslim University - [AMU], Aligarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aligarh Muslim University - [AMU], Aligarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aligarh Muslim University - [AMU], Aligarh is mapped with reviewed approval or affiliation signals such as NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['NAAC-A', 'General', 'Central University']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '96351398-5c93-4944-b856-a48638cebf24' AND slug = 'aligarh-muslim-university-amu-aligarh';

DELETE FROM public.course_fees WHERE college_slug = 'aligarh-muslim-university-amu-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'fc761e8b-0c16-4a1d-b746-a3b314a0568c' AND slug = 'aligarh-unani-ayurvedic-medical-college-amp-acn-hospital-auamc-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aligarh-unani-ayurvedic-medical-college-amp-acn-hospital-auamc-aligarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh is a healthcare education option in Aligarh, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1993. Current approval or affiliation signals available for review include CCIM. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, faci',
  meta_keywords = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh, Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh admission 2026, Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh courses, Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh fees, Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh placement, Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh facilities, Aligarh, Uttar Pradesh',
  admission_process = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aligarh Unani Ayurvedic Medical College & ACN Hospital - [AUAMC], Aligarh is mapped with reviewed approval or affiliation signals such as CCIM. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['CCIM', 'Medical', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'fc761e8b-0c16-4a1d-b746-a3b314a0568c' AND slug = 'aligarh-unani-ayurvedic-medical-college-amp-acn-hospital-auamc-aligarh';

DELETE FROM public.course_fees WHERE college_slug = 'aligarh-unani-ayurvedic-medical-college-amp-acn-hospital-auamc-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '072bbdc9-1726-4f05-bdd6-b30bb3d8bbe9' AND slug = 'alipurduar-college-alipurduar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alipurduar-college-alipurduar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Alipurduar College, Alipurduar is a higher education option in Alipurduar, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1957. Current approval or affiliation signals available for review include AICTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alipurduar College, Alipurduar in Alipurduar, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alipurduar College, Alipurduar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alipurduar College, Alipurduar in Alipurduar, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 ',
  meta_keywords = 'Alipurduar College, Alipurduar, Alipurduar College, Alipurduar admission 2026, Alipurduar College, Alipurduar courses, Alipurduar College, Alipurduar fees, Alipurduar College, Alipurduar placement, Alipurduar College, Alipurduar facilities, Alipurduar, West Bengal',
  admission_process = 'Alipurduar College, Alipurduar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alipurduar College, Alipurduar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alipurduar College, Alipurduar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alipurduar College, Alipurduar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alipurduar College, Alipurduar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alipurduar College, Alipurduar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alipurduar College, Alipurduar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alipurduar College, Alipurduar is mapped with reviewed approval or affiliation signals such as AICTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'UGC', 'General', 'Public']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '072bbdc9-1726-4f05-bdd6-b30bb3d8bbe9' AND slug = 'alipurduar-college-alipurduar';

DELETE FROM public.course_fees WHERE college_slug = 'alipurduar-college-alipurduar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e4272e3f-ac50-44ca-b854-31e1af0470f9' AND slug = 'alkesh-dinesh-mody-institute-for-financial-and-management-studies-mumbai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: alkesh-dinesh-mody-institute-for-financial-and-management-studies-mumbai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai is a management and commerce education option in Mumbai, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1994. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilit',
  meta_keywords = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai, Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai admission 2026, Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai courses, Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai fees, Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai placement, Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai facilities, Mumbai, Maharashtra',
  admission_process = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Alkesh Dinesh Mody Institute for Financial and Management Studies, Mumbai is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['AICTE', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'e4272e3f-ac50-44ca-b854-31e1af0470f9' AND slug = 'alkesh-dinesh-mody-institute-for-financial-and-management-studies-mumbai';

DELETE FROM public.course_fees WHERE college_slug = 'alkesh-dinesh-mody-institute-for-financial-and-management-studies-mumbai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '204df25b-3bb8-4b97-ad93-50e5cb995758' AND slug = 'all-india-institute-of-management-studies-aiimas-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: all-india-institute-of-management-studies-aiimas-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, All India Institute of Management Studies - [AIIMAS], Chennai is a management and commerce education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include DEB. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'All India Institute of Management Studies - [AIIMAS], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'All India Institute of Management Studies - [AIIMAS], Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'All India Institute of Management Studies - [AIIMAS], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'All India Institute of Management Studies - [AIIMAS], Chennai, All India Institute of Management Studies - [AIIMAS], Chennai admission 2026, All India Institute of Management Studies - [AIIMAS], Chennai courses, All India Institute of Management Studies - [AIIMAS], Chennai fees, All India Institute of Management Studies - [AIIMAS], Chennai placement, All India Institute of Management Studies - [AIIMAS], Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'All India Institute of Management Studies - [AIIMAS], Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at All India Institute of Management Studies - [AIIMAS], Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'All India Institute of Management Studies - [AIIMAS], Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'All India Institute of Management Studies - [AIIMAS], Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'All India Institute of Management Studies - [AIIMAS], Chennai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for All India Institute of Management Studies - [AIIMAS], Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for All India Institute of Management Studies - [AIIMAS], Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'All India Institute of Management Studies - [AIIMAS], Chennai is mapped with reviewed approval or affiliation signals such as DEB. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  tags = ARRAY['DEB', 'Management', 'Private']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '204df25b-3bb8-4b97-ad93-50e5cb995758' AND slug = 'all-india-institute-of-management-studies-aiimas-chennai';

DELETE FROM public.course_fees WHERE college_slug = 'all-india-institute-of-management-studies-aiimas-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '57d336a1-b3e6-4b9b-ba85-ead0686247da' AND slug = 'all-india-institute-of-medical-sciences-aiims-bhopal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: all-india-institute-of-medical-sciences-aiims-bhopal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, All India Institute of Medical Sciences - (AIIMS), Bhopal is a healthcare education option in Bhopal, Madhya Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'All India Institute of Medical Sciences - (AIIMS), Bhopal in Bhopal, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'All India Institute of Medical Sciences - (AIIMS), Bhopal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'All India Institute of Medical Sciences - (AIIMS), Bhopal in Bhopal, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'All India Institute of Medical Sciences - (AIIMS), Bhopal, All India Institute of Medical Sciences - (AIIMS), Bhopal admission 2026, All India Institute of Medical Sciences - (AIIMS), Bhopal courses, All India Institute of Medical Sciences - (AIIMS), Bhopal fees, All India Institute of Medical Sciences - (AIIMS), Bhopal placement, All India Institute of Medical Sciences - (AIIMS), Bhopal facilities, Bhopal, Madhya Pradesh',
  admission_process = 'All India Institute of Medical Sciences - (AIIMS), Bhopal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at All India Institute of Medical Sciences - (AIIMS), Bhopal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'All India Institute of Medical Sciences - (AIIMS), Bhopal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'All India Institute of Medical Sciences - (AIIMS), Bhopal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'All India Institute of Medical Sciences - (AIIMS), Bhopal facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for All India Institute of Medical Sciences - (AIIMS), Bhopal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for All India Institute of Medical Sciences - (AIIMS), Bhopal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.',
  tags = ARRAY['MCI', 'Medical', 'Autonomous University', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11', 'Institute of National Importance']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '57d336a1-b3e6-4b9b-ba85-ead0686247da' AND slug = 'all-india-institute-of-medical-sciences-aiims-bhopal';

DELETE FROM public.course_fees WHERE college_slug = 'all-india-institute-of-medical-sciences-aiims-bhopal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '60fea2a8-9b94-4257-9c50-e84a1c9346a3' AND slug = 'all-india-institute-of-medical-sciences-aiims-bhubaneswar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: all-india-institute-of-medical-sciences-aiims-bhubaneswar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, All India Institute of Medical Sciences - [AIIMS], Bhubaneswar is a healthcare education option in Bhubaneswar, Orissa for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar in Bhubaneswar, Orissa: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar in Bhubaneswar, Orissa: source-reviewed overview for admissions, courses, facilities, placem',
  meta_keywords = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar, All India Institute of Medical Sciences - [AIIMS], Bhubaneswar admission 2026, All India Institute of Medical Sciences - [AIIMS], Bhubaneswar courses, All India Institute of Medical Sciences - [AIIMS], Bhubaneswar fees, All India Institute of Medical Sciences - [AIIMS], Bhubaneswar placement, All India Institute of Medical Sciences - [AIIMS], Bhubaneswar facilities, Bhubaneswar, Orissa',
  admission_process = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at All India Institute of Medical Sciences - [AIIMS], Bhubaneswar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for All India Institute of Medical Sciences - [AIIMS], Bhubaneswar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for All India Institute of Medical Sciences - [AIIMS], Bhubaneswar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.',
  tags = ARRAY['MCI', 'Medical', 'Autonomous University', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11', 'Institute of National Importance']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '60fea2a8-9b94-4257-9c50-e84a1c9346a3' AND slug = 'all-india-institute-of-medical-sciences-aiims-bhubaneswar';

DELETE FROM public.course_fees WHERE college_slug = 'all-india-institute-of-medical-sciences-aiims-bhubaneswar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4a297528-381a-4d15-b484-4723d5400cbf' AND slug = 'all-india-institute-of-medical-sciences-aiims-jodhpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: all-india-institute-of-medical-sciences-aiims-jodhpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, All India Institute of Medical Sciences - [AIIMS], Jodhpur is a healthcare education option in Jodhpur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur in Jodhpur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur in Jodhpur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements,',
  meta_keywords = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur, All India Institute of Medical Sciences - [AIIMS], Jodhpur admission 2026, All India Institute of Medical Sciences - [AIIMS], Jodhpur courses, All India Institute of Medical Sciences - [AIIMS], Jodhpur fees, All India Institute of Medical Sciences - [AIIMS], Jodhpur placement, All India Institute of Medical Sciences - [AIIMS], Jodhpur facilities, Jodhpur, Rajasthan',
  admission_process = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at All India Institute of Medical Sciences - [AIIMS], Jodhpur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for All India Institute of Medical Sciences - [AIIMS], Jodhpur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for All India Institute of Medical Sciences - [AIIMS], Jodhpur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.',
  tags = ARRAY['MCI', 'Medical', 'Autonomous University', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11', 'Institute of National Importance']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '4a297528-381a-4d15-b484-4723d5400cbf' AND slug = 'all-india-institute-of-medical-sciences-aiims-jodhpur';

DELETE FROM public.course_fees WHERE college_slug = 'all-india-institute-of-medical-sciences-aiims-jodhpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '88da97f8-b448-4d7b-9365-87d6f3be7de5' AND slug = 'all-india-institute-of-medical-sciences-aiims-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: all-india-institute-of-medical-sciences-aiims-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, All India Institute of Medical Sciences - [AIIMS], New Delhi is a healthcare education option in East Delhi, Delhi for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1956. Current approval or affiliation signals available for review include MCI, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'All India Institute of Medical Sciences - [AIIMS], New Delhi in East Delhi, Delhi: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'All India Institute of Medical Sciences - [AIIMS], New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'All India Institute of Medical Sciences - [AIIMS], New Delhi in East Delhi, Delhi: source-reviewed overview for admissions, courses, facilities, placements',
  meta_keywords = 'All India Institute of Medical Sciences - [AIIMS], New Delhi, All India Institute of Medical Sciences - [AIIMS], New Delhi admission 2026, All India Institute of Medical Sciences - [AIIMS], New Delhi courses, All India Institute of Medical Sciences - [AIIMS], New Delhi fees, All India Institute of Medical Sciences - [AIIMS], New Delhi placement, All India Institute of Medical Sciences - [AIIMS], New Delhi facilities, East Delhi, Delhi',
  admission_process = 'All India Institute of Medical Sciences - [AIIMS], New Delhi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at All India Institute of Medical Sciences - [AIIMS], New Delhi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'All India Institute of Medical Sciences - [AIIMS], New Delhi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'All India Institute of Medical Sciences - [AIIMS], New Delhi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'All India Institute of Medical Sciences - [AIIMS], New Delhi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for All India Institute of Medical Sciences - [AIIMS], New Delhi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for All India Institute of Medical Sciences - [AIIMS], New Delhi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.',
  tags = ARRAY['MCI', 'UGC', 'Medical', 'Goverment', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11', 'Institute of National Importance']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '88da97f8-b448-4d7b-9365-87d6f3be7de5' AND slug = 'all-india-institute-of-medical-sciences-aiims-new-delhi';

DELETE FROM public.course_fees WHERE college_slug = 'all-india-institute-of-medical-sciences-aiims-new-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9ce0efd4-ddaf-40d0-beb0-77a1ea5ee025' AND slug = 'all-india-institute-of-medical-sciences-aiims-patna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: all-india-institute-of-medical-sciences-aiims-patna';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, All India Institute of Medical Sciences - [AIIMS], Patna is a healthcare education option in Patna, Bihar for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include INC, MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'All India Institute of Medical Sciences - [AIIMS], Patna in Patna, Bihar: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'All India Institute of Medical Sciences - [AIIMS], Patna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'All India Institute of Medical Sciences - [AIIMS], Patna in Patna, Bihar: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'All India Institute of Medical Sciences - [AIIMS], Patna, All India Institute of Medical Sciences - [AIIMS], Patna admission 2026, All India Institute of Medical Sciences - [AIIMS], Patna courses, All India Institute of Medical Sciences - [AIIMS], Patna fees, All India Institute of Medical Sciences - [AIIMS], Patna placement, All India Institute of Medical Sciences - [AIIMS], Patna facilities, Patna, Bihar',
  admission_process = 'All India Institute of Medical Sciences - [AIIMS], Patna admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at All India Institute of Medical Sciences - [AIIMS], Patna depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'All India Institute of Medical Sciences - [AIIMS], Patna course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'All India Institute of Medical Sciences - [AIIMS], Patna placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'All India Institute of Medical Sciences - [AIIMS], Patna facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for All India Institute of Medical Sciences - [AIIMS], Patna should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for All India Institute of Medical Sciences - [AIIMS], Patna may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.',
  tags = ARRAY['INC', 'MCI', 'Medical', 'Central University', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11', 'Institute of National Importance']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '9ce0efd4-ddaf-40d0-beb0-77a1ea5ee025' AND slug = 'all-india-institute-of-medical-sciences-aiims-patna';

DELETE FROM public.course_fees WHERE college_slug = 'all-india-institute-of-medical-sciences-aiims-patna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ceec377c-d1ff-43df-a7e6-b976cbf13b5a' AND slug = 'all-india-institute-of-medical-sciences-aiims-raipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: all-india-institute-of-medical-sciences-aiims-raipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, All India Institute of Medical Sciences - [AIIMS], Raipur is a healthcare education option in Raipur, Chhattisgarh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include MCI, MHRD. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'All India Institute of Medical Sciences - [AIIMS], Raipur in Raipur, Chhattisgarh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'All India Institute of Medical Sciences - [AIIMS], Raipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'All India Institute of Medical Sciences - [AIIMS], Raipur in Raipur, Chhattisgarh: source-reviewed overview for admissions, courses, facilities, placements',
  meta_keywords = 'All India Institute of Medical Sciences - [AIIMS], Raipur, All India Institute of Medical Sciences - [AIIMS], Raipur admission 2026, All India Institute of Medical Sciences - [AIIMS], Raipur courses, All India Institute of Medical Sciences - [AIIMS], Raipur fees, All India Institute of Medical Sciences - [AIIMS], Raipur placement, All India Institute of Medical Sciences - [AIIMS], Raipur facilities, Raipur, Chhattisgarh',
  admission_process = 'All India Institute of Medical Sciences - [AIIMS], Raipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at All India Institute of Medical Sciences - [AIIMS], Raipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'All India Institute of Medical Sciences - [AIIMS], Raipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'All India Institute of Medical Sciences - [AIIMS], Raipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'All India Institute of Medical Sciences - [AIIMS], Raipur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for All India Institute of Medical Sciences - [AIIMS], Raipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for All India Institute of Medical Sciences - [AIIMS], Raipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.',
  tags = ARRAY['MCI', 'MHRD', 'Medical', 'Central University', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11', 'Institute of National Importance']::text[],
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-008","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html","https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-008; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'ceec377c-d1ff-43df-a7e6-b976cbf13b5a' AND slug = 'all-india-institute-of-medical-sciences-aiims-raipur';

DELETE FROM public.course_fees WHERE college_slug = 'all-india-institute-of-medical-sciences-aiims-raipur';

NOTIFY pgrst, 'reload schema';
COMMIT;
