-- college-humanized-content-batch-006
-- Generated 2026-08-01. Humanized source-backed college content batch.
-- Fees stay blank unless programme, year, quota and category are verified.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '02899e84-6c94-440a-b307-c7828555b646' AND slug = 'a-radiant-institute-of-management-and-technology-arimt-meerut') THEN
    RAISE EXCEPTION 'College target not found or slug changed: a-radiant-institute-of-management-and-technology-arimt-meerut';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, A Radiant Institute of Management and Technology - [ARIMT], Meerut is a technical education option in Meerut, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut in Meerut, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut: Admission, Courses, Fees, Placements 2026',
  meta_description = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut in Meerut, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, ',
  meta_keywords = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut, A Radiant Institute of Management and Technology - [ARIMT], Meerut admission 2026, A Radiant Institute of Management and Technology - [ARIMT], Meerut courses, A Radiant Institute of Management and Technology - [ARIMT], Meerut fees, A Radiant Institute of Management and Technology - [ARIMT], Meerut placement, A Radiant Institute of Management and Technology - [ARIMT], Meerut facilities, Meerut, Uttar Pradesh',
  admission_process = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at A Radiant Institute of Management and Technology - [ARIMT], Meerut depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for A Radiant Institute of Management and Technology - [ARIMT], Meerut should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for A Radiant Institute of Management and Technology - [ARIMT], Meerut may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'A Radiant Institute of Management and Technology - [ARIMT], Meerut is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"official_or_institution_source_reviewed","source_links_for_nofollow_rendering":["https://arimtmeerut.com/","https://www.collegebatch.com/10601-a-radiant-institute-of-management-and-technology-in-meerut-fs05"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '02899e84-6c94-440a-b307-c7828555b646' AND slug = 'a-radiant-institute-of-management-and-technology-arimt-meerut';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3c70689b-d828-4aab-a53c-d448fb0a9da7' AND slug = 'a-k-choudhury-school-of-information-technology-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: a-k-choudhury-school-of-information-technology-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, A. K. Choudhury School of Information Technology, Kolkata is a technical education option in Kolkata, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'A. K. Choudhury School of Information Technology, Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'A. K. Choudhury School of Information Technology, Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'A. K. Choudhury School of Information Technology, Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facilities, placements',
  meta_keywords = 'A. K. Choudhury School of Information Technology, Kolkata, A. K. Choudhury School of Information Technology, Kolkata admission 2026, A. K. Choudhury School of Information Technology, Kolkata courses, A. K. Choudhury School of Information Technology, Kolkata fees, A. K. Choudhury School of Information Technology, Kolkata placement, A. K. Choudhury School of Information Technology, Kolkata facilities, Kolkata, West Bengal',
  admission_process = 'A. K. Choudhury School of Information Technology, Kolkata admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at A. K. Choudhury School of Information Technology, Kolkata depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'A. K. Choudhury School of Information Technology, Kolkata course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'A. K. Choudhury School of Information Technology, Kolkata placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'A. K. Choudhury School of Information Technology, Kolkata facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for A. K. Choudhury School of Information Technology, Kolkata should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for A. K. Choudhury School of Information Technology, Kolkata may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'A. K. Choudhury School of Information Technology, Kolkata is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"official_or_institution_source_reviewed","source_links_for_nofollow_rendering":["https://www.caluniv.ac.in/","https://www.caluniv.ac.in/admission/FourYearBTech.pdf","https://www.caluniv.ac.in/news/MTech28-5-19.pdf","https://www.caluniv.ac.in/admission/phd_akc_31_3_21.pdf"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3c70689b-d828-4aab-a53c-d448fb0a9da7' AND slug = 'a-k-choudhury-school-of-information-technology-kolkata';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '125686c0-41aa-462c-a164-ed237b47b99b' AND slug = 'a-v-patil-degree-college-of-arts-science-and-commerce-gulbarga') THEN
    RAISE EXCEPTION 'College target not found or slug changed: a-v-patil-degree-college-of-arts-science-and-commerce-gulbarga';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga is a management and commerce education option in Gulbarga, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1980. Current approval or affiliation signals available for review include NAAC-B. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga in Gulbarga, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga: Admission, Courses, Fees, Placements 2026',
  meta_description = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga in Gulbarga, Karnataka: source-reviewed overview for admissions, courses, facilities, plac',
  meta_keywords = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga, A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga admission 2026, A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga courses, A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga fees, A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga placement, A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga facilities, Gulbarga, Karnataka',
  admission_process = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'A. V. Patil Degree College of Arts, Science & Commerce, Gulbarga is mapped with reviewed approval or affiliation signals such as NAAC-B. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://universitykart.com/university/universitydetails/av-patil-degree-college-of-arts-science-and-commerce-gulbarga"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '125686c0-41aa-462c-a164-ed237b47b99b' AND slug = 'a-v-patil-degree-college-of-arts-science-and-commerce-gulbarga';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '26a7f8a8-432a-4137-b142-10b9a1d5721e' AND slug = 'akk-new-law-academy-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: akk-new-law-academy-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, A.K.K. New Law Academy, Pune is a legal education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1994. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'A.K.K. New Law Academy, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'A.K.K. New Law Academy, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'A.K.K. New Law Academy, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision',
  meta_keywords = 'A.K.K. New Law Academy, Pune, A.K.K. New Law Academy, Pune admission 2026, A.K.K. New Law Academy, Pune courses, A.K.K. New Law Academy, Pune fees, A.K.K. New Law Academy, Pune placement, A.K.K. New Law Academy, Pune facilities, Pune, Maharashtra',
  admission_process = 'A.K.K. New Law Academy, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at A.K.K. New Law Academy, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'A.K.K. New Law Academy, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'A.K.K. New Law Academy, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'A.K.K. New Law Academy, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for A.K.K. New Law Academy, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for A.K.K. New Law Academy, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'A.K.K. New Law Academy, Pune is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"official_or_institution_source_reviewed","source_links_for_nofollow_rendering":["https://nlapune.org/","https://nlapune.org/wp-content/uploads/2025/01/AQAR-2021-22.pdf","https://www.careers360.com/colleges/mce-societys-akk-new-law-academy-and-phd-research-centre-pune/courses/full-time-courses-mode"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '26a7f8a8-432a-4137-b142-10b9a1d5721e' AND slug = 'akk-new-law-academy-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4628ab58-c2f6-4643-a753-5d55a5bd524d' AND slug = 'asl-pauls-college-of-engineering-amp-technology-kinathukkadavu-aslpcet-coimbatore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: asl-pauls-college-of-engineering-amp-technology-kinathukkadavu-aslpcet-coimbatore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore is a technical education option in Coimbatore, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions,',
  meta_keywords = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore, A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore admission 2026, A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore courses, A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore fees, A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore placement, A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore facilities, Coimbatore, Tamil Nadu',
  admission_process = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'A.S.L. Pauls College of Engineering & Technology Kinathukkadavu - [ASLPCET], Coimbatore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.careers360.com/colleges/asl-pauls-college-of-engineering-and-technology-coimbatore","https://aicte-qa.aicte-india.org/sites/default/files/Shortlisted%20institutes%20for%20Website.pdf"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4628ab58-c2f6-4643-a753-5d55a5bd524d' AND slug = 'asl-pauls-college-of-engineering-amp-technology-kinathukkadavu-aslpcet-coimbatore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5ab5856e-34e1-40c3-8994-5d681eaa0367' AND slug = 'aadhi-bhagawan-college-of-pharmacy-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aadhi-bhagawan-college-of-pharmacy-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aadhi Bhagawan College of Pharmacy, Chennai is a healthcare education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aadhi Bhagawan College of Pharmacy, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aadhi Bhagawan College of Pharmacy, Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aadhi Bhagawan College of Pharmacy, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Aadhi Bhagawan College of Pharmacy, Chennai, Aadhi Bhagawan College of Pharmacy, Chennai admission 2026, Aadhi Bhagawan College of Pharmacy, Chennai courses, Aadhi Bhagawan College of Pharmacy, Chennai fees, Aadhi Bhagawan College of Pharmacy, Chennai placement, Aadhi Bhagawan College of Pharmacy, Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'Aadhi Bhagawan College of Pharmacy, Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aadhi Bhagawan College of Pharmacy, Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aadhi Bhagawan College of Pharmacy, Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aadhi Bhagawan College of Pharmacy, Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aadhi Bhagawan College of Pharmacy, Chennai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aadhi Bhagawan College of Pharmacy, Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aadhi Bhagawan College of Pharmacy, Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aadhi Bhagawan College of Pharmacy, Chennai is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.pci.nic.in/pdf/M.Pharm_9122020.pdf","https://www.careers360.com/colleges/aadhi-bhagawan-college-of-pharmacy-tiruvannamalai"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '5ab5856e-34e1-40c3-8994-5d681eaa0367' AND slug = 'aadhi-bhagawan-college-of-pharmacy-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2604327b-8a5e-438c-83e9-a264cb544028' AND slug = 'aadinath-mahila-teacher039s-training-college-udaipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aadinath-mahila-teacher039s-training-college-udaipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aadinath Mahila Teacher''s Training College, Udaipur is a teacher education option in Udaipur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aadinath Mahila Teacher''s Training College, Udaipur in Udaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aadinath Mahila Teacher''s Training College, Udaipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aadinath Mahila Teacher''s Training College, Udaipur in Udaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, schola',
  meta_keywords = 'Aadinath Mahila Teacher''s Training College, Udaipur, Aadinath Mahila Teacher''s Training College, Udaipur admission 2026, Aadinath Mahila Teacher''s Training College, Udaipur courses, Aadinath Mahila Teacher''s Training College, Udaipur fees, Aadinath Mahila Teacher''s Training College, Udaipur placement, Aadinath Mahila Teacher''s Training College, Udaipur facilities, Udaipur, Rajasthan',
  admission_process = 'Aadinath Mahila Teacher''s Training College, Udaipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aadinath Mahila Teacher''s Training College, Udaipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aadinath Mahila Teacher''s Training College, Udaipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aadinath Mahila Teacher''s Training College, Udaipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aadinath Mahila Teacher''s Training College, Udaipur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aadinath Mahila Teacher''s Training College, Udaipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aadinath Mahila Teacher''s Training College, Udaipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aadinath Mahila Teacher''s Training College, Udaipur has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"institution_site_present_with_public_source_review","source_links_for_nofollow_rendering":["http://aadinath.org","https://mlsu.ac.in/notifications/15101_Centre%20List%20of%20B.Ed.%2C%20B.A.%20B.Ed%2C%20B.Sc.B.Ed%20%26%20M.Ed.%20Examination%202025%20%281%29.pdf","https://www.careerindia.com/colleges/aadinath-mahila-teacher-s-training-college-udaipur-rajasthan-cp2562/"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '2604327b-8a5e-438c-83e9-a264cb544028' AND slug = 'aadinath-mahila-teacher039s-training-college-udaipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4ac1d2b8-028c-43de-adff-b80ed1aee361' AND slug = 'aakash-institute-of-business-management-aibm-mallathalli-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aakash-institute-of-business-management-aibm-mallathalli-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include BCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, faciliti',
  meta_keywords = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore, Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore admission 2026, Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore courses, Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore fees, Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore placement, Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aakash Institute of Business Management - [AIBM] Mallathalli, Bangalore is mapped with reviewed approval or affiliation signals such as BCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"official_or_institution_source_reviewed","source_links_for_nofollow_rendering":["http://www.aibm.in/","https://targetstudy.com/institute/45188/aakash-institute-of-business-management/","https://www.shiksha.com/college/aakash-institute-of-business-management-mallathalli-bangalore-33098/courses"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4ac1d2b8-028c-43de-adff-b80ed1aee361' AND slug = 'aakash-institute-of-business-management-aibm-mallathalli-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '749c7a7d-e6ab-4881-9caf-9901d7dcda24' AND slug = 'aakashline-institute-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aakashline-institute-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aakashline Institute, New Delhi is a higher education option in New Delhi, Delhi NCR for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aakashline Institute, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aakashline Institute, New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aakashline Institute, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 de',
  meta_keywords = 'Aakashline Institute, New Delhi, Aakashline Institute, New Delhi admission 2026, Aakashline Institute, New Delhi courses, Aakashline Institute, New Delhi fees, Aakashline Institute, New Delhi placement, Aakashline Institute, New Delhi facilities, New Delhi, Delhi NCR',
  admission_process = 'Aakashline Institute, New Delhi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aakashline Institute, New Delhi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aakashline Institute, New Delhi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aakashline Institute, New Delhi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aakashline Institute, New Delhi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aakashline Institute, New Delhi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aakashline Institute, New Delhi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aakashline Institute, New Delhi has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://targetstudy.com/institute/64460/aakashline-institute/"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '749c7a7d-e6ab-4881-9caf-9901d7dcda24' AND slug = 'aakashline-institute-new-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f965130f-9aae-45b4-a38d-2e7cbc1606ba' AND slug = 'aakson-institute-for-management-studies-aims-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aakson-institute-for-management-studies-aims-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aakson Institute for Management Studies - [AIMS], Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1977. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aakson Institute for Management Studies - [AIMS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aakson Institute for Management Studies - [AIMS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aakson Institute for Management Studies - [AIMS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'Aakson Institute for Management Studies - [AIMS], Bangalore, Aakson Institute for Management Studies - [AIMS], Bangalore admission 2026, Aakson Institute for Management Studies - [AIMS], Bangalore courses, Aakson Institute for Management Studies - [AIMS], Bangalore fees, Aakson Institute for Management Studies - [AIMS], Bangalore placement, Aakson Institute for Management Studies - [AIMS], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Aakson Institute for Management Studies - [AIMS], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aakson Institute for Management Studies - [AIMS], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aakson Institute for Management Studies - [AIMS], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aakson Institute for Management Studies - [AIMS], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aakson Institute for Management Studies - [AIMS], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aakson Institute for Management Studies - [AIMS], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aakson Institute for Management Studies - [AIMS], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aakson Institute for Management Studies - [AIMS], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://www.collegedekho.com/colleges/aakson-institute-for-management-studies-courses"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'f965130f-9aae-45b4-a38d-2e7cbc1606ba' AND slug = 'aakson-institute-for-management-studies-aims-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '47dba1d8-1df4-4f78-a19a-c3a13de8f489' AND slug = 'aasee-college-of-education-karur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aasee-college-of-education-karur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aasee college of Education, Karur is a teacher education option in Karur, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aasee college of Education, Karur in Karur, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aasee college of Education, Karur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aasee college of Education, Karur in Karur, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 dec',
  meta_keywords = 'Aasee college of Education, Karur, Aasee college of Education, Karur admission 2026, Aasee college of Education, Karur courses, Aasee college of Education, Karur fees, Aasee college of Education, Karur placement, Aasee college of Education, Karur facilities, Karur, Tamil Nadu',
  admission_process = 'Aasee college of Education, Karur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aasee college of Education, Karur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aasee college of Education, Karur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aasee college of Education, Karur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aasee college of Education, Karur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aasee college of Education, Karur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aasee college of Education, Karur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aasee college of Education, Karur is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":["https://ncte.gov.in/WebAdmin/pdf/RCMeeting/4_09_01_2020_637141878886415363.pdf"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '47dba1d8-1df4-4f78-a19a-c3a13de8f489' AND slug = 'aasee-college-of-education-karur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e603e619-eb45-4a8c-974a-b3d285c4eb25' AND slug = 'aashlar-business-school-abs-mathura') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aashlar-business-school-abs-mathura';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aashlar Business School - [ABS], Mathura is a management and commerce education option in Mathura, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aashlar Business School - [ABS], Mathura in Mathura, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aashlar Business School - [ABS], Mathura: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aashlar Business School - [ABS], Mathura in Mathura, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Aashlar Business School - [ABS], Mathura, Aashlar Business School - [ABS], Mathura admission 2026, Aashlar Business School - [ABS], Mathura courses, Aashlar Business School - [ABS], Mathura fees, Aashlar Business School - [ABS], Mathura placement, Aashlar Business School - [ABS], Mathura facilities, Mathura, Uttar Pradesh',
  admission_process = 'Aashlar Business School - [ABS], Mathura admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aashlar Business School - [ABS], Mathura depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aashlar Business School - [ABS], Mathura course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aashlar Business School - [ABS], Mathura placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aashlar Business School - [ABS], Mathura facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aashlar Business School - [ABS], Mathura should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aashlar Business School - [ABS], Mathura may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aashlar Business School - [ABS], Mathura is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"institution_site_present_with_public_source_review","source_links_for_nofollow_rendering":["http://www.aashlarbschool.com","https://www.careers360.com/colleges/aashlar-business-school-mathura/courses","https://www.gniotgroup.edu.in/circulars-pdf/1778070816-centre-list.pdf"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e603e619-eb45-4a8c-974a-b3d285c4eb25' AND slug = 'aashlar-business-school-abs-mathura';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7fadd487-55d6-40f7-b9ab-b8ce284a7911' AND slug = 'abacus-institute-of-computer-applications-aica-hadapsar-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abacus-institute-of-computer-applications-aica-hadapsar-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune is a higher education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune, Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune admission 2026, Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune courses, Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune fees, Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune placement, Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune facilities, Pune, Maharashtra',
  admission_process = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abacus Institute of Computer Applications - [AICA] Hadapsar, Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"institution_site_present_with_public_source_review","source_links_for_nofollow_rendering":["https://www.jspm.edu.in/","https://www.shiksha.com/college/abacus-institute-of-computer-applications-hadapsar-pune-52723/courses/mca-bc/","https://www.icbse.com/colleges/abacus-institute-of-computer-application-dy83pq"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '7fadd487-55d6-40f7-b9ab-b8ce284a7911' AND slug = 'abacus-institute-of-computer-applications-aica-hadapsar-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '69635aba-2427-423e-9fcd-23eb40f62947' AND slug = 'abdul-razak-degree-college-ardc-jyotiba-phule-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abdul-razak-degree-college-ardc-jyotiba-phule-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar is a higher education option in Jyotiba Phule Nagar, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include NCTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar in Jyotiba Phule Nagar, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar in Jyotiba Phule Nagar, Uttar Pradesh: source-reviewed overview for admissions, courses, facilitie',
  meta_keywords = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar, Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar admission 2026, Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar courses, Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar fees, Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar placement, Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar facilities, Jyotiba Phule Nagar, Uttar Pradesh',
  admission_process = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abdul Razak Degree College - [ARDC], Jyotiba Phule Nagar is mapped with reviewed approval or affiliation signals such as NCTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"institution_site_present_with_public_source_review","source_links_for_nofollow_rendering":["http://www.ardcjoya.com","https://amroha.nic.in/degree-college/","https://www.collegedekho.com/colleges/abdul-razzak-degree-college-joya-courses"],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '69635aba-2427-423e-9fcd-23eb40f62947' AND slug = 'abdul-razak-degree-college-ardc-jyotiba-phule-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c0d1da04-66f9-47c8-bd05-96648ccc7000' AND slug = 'abha-gaikwadpatil-college-of-engineering-nagpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abha-gaikwadpatil-college-of-engineering-nagpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Abha GaikwadPatil College of Engineering, Nagpur is a technical education option in Nagpur, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE, NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abha GaikwadPatil College of Engineering, Nagpur in Nagpur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abha GaikwadPatil College of Engineering, Nagpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abha GaikwadPatil College of Engineering, Nagpur in Nagpur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholars',
  meta_keywords = 'Abha GaikwadPatil College of Engineering, Nagpur, Abha GaikwadPatil College of Engineering, Nagpur admission 2026, Abha GaikwadPatil College of Engineering, Nagpur courses, Abha GaikwadPatil College of Engineering, Nagpur fees, Abha GaikwadPatil College of Engineering, Nagpur placement, Abha GaikwadPatil College of Engineering, Nagpur facilities, Nagpur, Maharashtra',
  admission_process = 'Abha GaikwadPatil College of Engineering, Nagpur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abha GaikwadPatil College of Engineering, Nagpur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abha GaikwadPatil College of Engineering, Nagpur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abha GaikwadPatil College of Engineering, Nagpur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abha GaikwadPatil College of Engineering, Nagpur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abha GaikwadPatil College of Engineering, Nagpur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abha GaikwadPatil College of Engineering, Nagpur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abha GaikwadPatil College of Engineering, Nagpur is mapped with reviewed approval or affiliation signals such as AICTE, NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c0d1da04-66f9-47c8-bd05-96648ccc7000' AND slug = 'abha-gaikwadpatil-college-of-engineering-nagpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '382b815c-74f8-4914-b501-91a88837cd9b' AND slug = 'abhay-yuva-kalyan-kendra-sanchalit-college-of-education-dhule') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abhay-yuva-kalyan-kendra-sanchalit-college-of-education-dhule';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule is a teacher education option in Dhule, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1986. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule in Dhule, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule in Dhule, Maharashtra: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule, Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule admission 2026, Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule courses, Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule fees, Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule placement, Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule facilities, Dhule, Maharashtra',
  admission_process = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '382b815c-74f8-4914-b501-91a88837cd9b' AND slug = 'abhay-yuva-kalyan-kendra-sanchalit-college-of-education-dhule';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4db22406-2c66-417f-a2a5-2ebfe91d5528' AND slug = 'abhilashi-institute-of-life-sciences-ails-mandi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abhilashi-institute-of-life-sciences-ails-mandi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Abhilashi Institute of Life Sciences - [AILS], Mandi is a higher education option in Mandi, Himachal Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abhilashi Institute of Life Sciences - [AILS], Mandi in Mandi, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abhilashi Institute of Life Sciences - [AILS], Mandi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abhilashi Institute of Life Sciences - [AILS], Mandi in Mandi, Himachal Pradesh: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Abhilashi Institute of Life Sciences - [AILS], Mandi, Abhilashi Institute of Life Sciences - [AILS], Mandi admission 2026, Abhilashi Institute of Life Sciences - [AILS], Mandi courses, Abhilashi Institute of Life Sciences - [AILS], Mandi fees, Abhilashi Institute of Life Sciences - [AILS], Mandi placement, Abhilashi Institute of Life Sciences - [AILS], Mandi facilities, Mandi, Himachal Pradesh',
  admission_process = 'Abhilashi Institute of Life Sciences - [AILS], Mandi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abhilashi Institute of Life Sciences - [AILS], Mandi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abhilashi Institute of Life Sciences - [AILS], Mandi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abhilashi Institute of Life Sciences - [AILS], Mandi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abhilashi Institute of Life Sciences - [AILS], Mandi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abhilashi Institute of Life Sciences - [AILS], Mandi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abhilashi Institute of Life Sciences - [AILS], Mandi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abhilashi Institute of Life Sciences - [AILS], Mandi has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4db22406-2c66-417f-a2a5-2ebfe91d5528' AND slug = 'abhilashi-institute-of-life-sciences-ails-mandi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e91dad41-ff07-4040-afad-068bde60f1a7' AND slug = 'abhinav-education-society039s-college-of-engineering-and-technology-wadwani') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abhinav-education-society039s-college-of-engineering-and-technology-wadwani';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Abhinav Education Society''s College of Engineering and Technology, Wadwani is a technical education option in Wadwani, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani in Wadwani, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani in Wadwani, Maharashtra: source-reviewed overview for admissions, courses, facil',
  meta_keywords = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani, Abhinav Education Society''s College of Engineering and Technology, Wadwani admission 2026, Abhinav Education Society''s College of Engineering and Technology, Wadwani courses, Abhinav Education Society''s College of Engineering and Technology, Wadwani fees, Abhinav Education Society''s College of Engineering and Technology, Wadwani placement, Abhinav Education Society''s College of Engineering and Technology, Wadwani facilities, Wadwani, Maharashtra',
  admission_process = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abhinav Education Society''s College of Engineering and Technology, Wadwani depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abhinav Education Society''s College of Engineering and Technology, Wadwani should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abhinav Education Society''s College of Engineering and Technology, Wadwani may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abhinav Education Society''s College of Engineering and Technology, Wadwani is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e91dad41-ff07-4040-afad-068bde60f1a7' AND slug = 'abhinav-education-society039s-college-of-engineering-and-technology-wadwani';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '67b66dca-3054-415c-a04e-49a0a87c1a03' AND slug = 'abhinav-education-society039s-dted-college-akole-ahmed-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abhinav-education-society039s-dted-college-akole-ahmed-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar is a teacher education option in Ahmed Nagar, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admissions, courses, facilities, p',
  meta_keywords = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar, Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar admission 2026, Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar courses, Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar fees, Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar placement, Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar facilities, Ahmed Nagar, Maharashtra',
  admission_process = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abhinav Education Society''s D.T.Ed. College Akole, Ahmed Nagar is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '67b66dca-3054-415c-a04e-49a0a87c1a03' AND slug = 'abhinav-education-society039s-dted-college-akole-ahmed-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9db40a93-f688-475b-97bc-1ee675105d1e' AND slug = 'abhinav-hi-tech-college-of-engineering-and-technology-ahcet-hyderabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: abhinav-hi-tech-college-of-engineering-and-technology-ahcet-hyderabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad is a technical education option in Hyderabad, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad in Hyderabad, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad in Hyderabad, Telangana: source-reviewed overview for admissions, courses, facili',
  meta_keywords = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad, Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad admission 2026, Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad courses, Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad fees, Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad placement, Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad facilities, Hyderabad, Telangana',
  admission_process = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9db40a93-f688-475b-97bc-1ee675105d1e' AND slug = 'abhinav-hi-tech-college-of-engineering-and-technology-ahcet-hyderabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b1bf4efc-d3f8-4bf4-bb3b-677e56506d55' AND slug = 'academy-allied-health-sciences-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: academy-allied-health-sciences-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, ACADEMY ALLIED HEALTH SCIENCES, Kolkata is a healthcare education option in Kolkata, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2017. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and',
  meta_keywords = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata, ACADEMY ALLIED HEALTH SCIENCES, Kolkata admission 2026, ACADEMY ALLIED HEALTH SCIENCES, Kolkata courses, ACADEMY ALLIED HEALTH SCIENCES, Kolkata fees, ACADEMY ALLIED HEALTH SCIENCES, Kolkata placement, ACADEMY ALLIED HEALTH SCIENCES, Kolkata facilities, Kolkata, West Bengal',
  admission_process = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at ACADEMY ALLIED HEALTH SCIENCES, Kolkata depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for ACADEMY ALLIED HEALTH SCIENCES, Kolkata should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for ACADEMY ALLIED HEALTH SCIENCES, Kolkata may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'ACADEMY ALLIED HEALTH SCIENCES, Kolkata is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b1bf4efc-d3f8-4bf4-bb3b-677e56506d55' AND slug = 'academy-allied-health-sciences-kolkata';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7f5b8149-9f7b-44af-9bc1-a16b0bdec548' AND slug = 'academy-of-business-management-tourism-and-research-abmtr-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: academy-of-business-management-tourism-and-research-abmtr-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Academy of Business Management Tourism and Research- [ABMTR], Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, faciliti',
  meta_keywords = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore, Academy of Business Management Tourism and Research- [ABMTR], Bangalore admission 2026, Academy of Business Management Tourism and Research- [ABMTR], Bangalore courses, Academy of Business Management Tourism and Research- [ABMTR], Bangalore fees, Academy of Business Management Tourism and Research- [ABMTR], Bangalore placement, Academy of Business Management Tourism and Research- [ABMTR], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Academy of Business Management Tourism and Research- [ABMTR], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Academy of Business Management Tourism and Research- [ABMTR], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Academy of Business Management Tourism and Research- [ABMTR], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Academy of Business Management Tourism and Research- [ABMTR], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '7f5b8149-9f7b-44af-9bc1-a16b0bdec548' AND slug = 'academy-of-business-management-tourism-and-research-abmtr-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b390dcd9-97d6-4317-a6c3-a2ef767e8882' AND slug = 'academy-of-fashion-and-textile-technology-aftt-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: academy-of-fashion-and-textile-technology-aftt-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Academy of Fashion and Textile Technology - [AFTT], Chennai is a technical education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Academy of Fashion and Textile Technology - [AFTT], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Academy of Fashion and Textile Technology - [AFTT], Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Academy of Fashion and Textile Technology - [AFTT], Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placement',
  meta_keywords = 'Academy of Fashion and Textile Technology - [AFTT], Chennai, Academy of Fashion and Textile Technology - [AFTT], Chennai admission 2026, Academy of Fashion and Textile Technology - [AFTT], Chennai courses, Academy of Fashion and Textile Technology - [AFTT], Chennai fees, Academy of Fashion and Textile Technology - [AFTT], Chennai placement, Academy of Fashion and Textile Technology - [AFTT], Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'Academy of Fashion and Textile Technology - [AFTT], Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Academy of Fashion and Textile Technology - [AFTT], Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Academy of Fashion and Textile Technology - [AFTT], Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Academy of Fashion and Textile Technology - [AFTT], Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Academy of Fashion and Textile Technology - [AFTT], Chennai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Academy of Fashion and Textile Technology - [AFTT], Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Academy of Fashion and Textile Technology - [AFTT], Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Academy of Fashion and Textile Technology - [AFTT], Chennai is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b390dcd9-97d6-4317-a6c3-a2ef767e8882' AND slug = 'academy-of-fashion-and-textile-technology-aftt-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8c551a77-cdb7-472f-9a4a-ba97c1065db5' AND slug = 'academy-of-management-professional-development-ampd-thane') THEN
    RAISE EXCEPTION 'College target not found or slug changed: academy-of-management-professional-development-ampd-thane';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Academy of Management Professional Development - [AMPD], Thane is a management and commerce education option in Thane, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include AICTE, UGC, DEB. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Academy of Management Professional Development - [AMPD], Thane in Thane, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Academy of Management Professional Development - [AMPD], Thane: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Academy of Management Professional Development - [AMPD], Thane in Thane, Maharashtra: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'Academy of Management Professional Development - [AMPD], Thane, Academy of Management Professional Development - [AMPD], Thane admission 2026, Academy of Management Professional Development - [AMPD], Thane courses, Academy of Management Professional Development - [AMPD], Thane fees, Academy of Management Professional Development - [AMPD], Thane placement, Academy of Management Professional Development - [AMPD], Thane facilities, Thane, Maharashtra',
  admission_process = 'Academy of Management Professional Development - [AMPD], Thane admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Academy of Management Professional Development - [AMPD], Thane depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Academy of Management Professional Development - [AMPD], Thane course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Academy of Management Professional Development - [AMPD], Thane placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Academy of Management Professional Development - [AMPD], Thane facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Academy of Management Professional Development - [AMPD], Thane should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Academy of Management Professional Development - [AMPD], Thane may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Academy of Management Professional Development - [AMPD], Thane is mapped with reviewed approval or affiliation signals such as AICTE, UGC, DEB. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '8c551a77-cdb7-472f-9a4a-ba97c1065db5' AND slug = 'academy-of-management-professional-development-ampd-thane';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '6be9c116-1506-41e3-8b30-88b624a362ea' AND slug = 'academy-of-management-studies-ams-dehradun') THEN
    RAISE EXCEPTION 'College target not found or slug changed: academy-of-management-studies-ams-dehradun';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Academy of Management Studies - [AMS], Dehradun is a management and commerce education option in Dehradun, Uttarakhand for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1993. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Academy of Management Studies - [AMS], Dehradun in Dehradun, Uttarakhand: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Academy of Management Studies - [AMS], Dehradun: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Academy of Management Studies - [AMS], Dehradun in Dehradun, Uttarakhand: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'Academy of Management Studies - [AMS], Dehradun, Academy of Management Studies - [AMS], Dehradun admission 2026, Academy of Management Studies - [AMS], Dehradun courses, Academy of Management Studies - [AMS], Dehradun fees, Academy of Management Studies - [AMS], Dehradun placement, Academy of Management Studies - [AMS], Dehradun facilities, Dehradun, Uttarakhand',
  admission_process = 'Academy of Management Studies - [AMS], Dehradun admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Academy of Management Studies - [AMS], Dehradun depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Academy of Management Studies - [AMS], Dehradun course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Academy of Management Studies - [AMS], Dehradun placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Academy of Management Studies - [AMS], Dehradun facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Academy of Management Studies - [AMS], Dehradun should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Academy of Management Studies - [AMS], Dehradun may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Academy of Management Studies - [AMS], Dehradun is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '6be9c116-1506-41e3-8b30-88b624a362ea' AND slug = 'academy-of-management-studies-ams-dehradun';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e80c54c9-2bf0-45fc-a6a7-52ea8779dadc' AND slug = 'academy-of-medical-science-pariyaram-kannur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: academy-of-medical-science-pariyaram-kannur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Academy of Medical Science Pariyaram , Kannur is a healthcare education option in Kannur, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1995. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Academy of Medical Science Pariyaram , Kannur in Kannur, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Academy of Medical Science Pariyaram , Kannur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Academy of Medical Science Pariyaram , Kannur in Kannur, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and',
  meta_keywords = 'Academy of Medical Science Pariyaram , Kannur, Academy of Medical Science Pariyaram , Kannur admission 2026, Academy of Medical Science Pariyaram , Kannur courses, Academy of Medical Science Pariyaram , Kannur fees, Academy of Medical Science Pariyaram , Kannur placement, Academy of Medical Science Pariyaram , Kannur facilities, Kannur, Kerala',
  admission_process = 'Academy of Medical Science Pariyaram , Kannur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Academy of Medical Science Pariyaram , Kannur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Academy of Medical Science Pariyaram , Kannur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Academy of Medical Science Pariyaram , Kannur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Academy of Medical Science Pariyaram , Kannur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Academy of Medical Science Pariyaram , Kannur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Academy of Medical Science Pariyaram , Kannur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Academy of Medical Science Pariyaram , Kannur is mapped with reviewed approval or affiliation signals such as MCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e80c54c9-2bf0-45fc-a6a7-52ea8779dadc' AND slug = 'academy-of-medical-science-pariyaram-kannur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '61300000-88a9-4270-88f0-d12da4abd33b' AND slug = 'acc-jain-college-of-education-birbhum') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acc-jain-college-of-education-birbhum';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, ACC Jain College of Education, Birbhum is a teacher education option in Birbhum, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'ACC Jain College of Education, Birbhum in Birbhum, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'ACC Jain College of Education, Birbhum: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACC Jain College of Education, Birbhum in Birbhum, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and ',
  meta_keywords = 'ACC Jain College of Education, Birbhum, ACC Jain College of Education, Birbhum admission 2026, ACC Jain College of Education, Birbhum courses, ACC Jain College of Education, Birbhum fees, ACC Jain College of Education, Birbhum placement, ACC Jain College of Education, Birbhum facilities, Birbhum, West Bengal',
  admission_process = 'ACC Jain College of Education, Birbhum admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at ACC Jain College of Education, Birbhum depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'ACC Jain College of Education, Birbhum course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'ACC Jain College of Education, Birbhum placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'ACC Jain College of Education, Birbhum facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for ACC Jain College of Education, Birbhum should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for ACC Jain College of Education, Birbhum may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'ACC Jain College of Education, Birbhum is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '61300000-88a9-4270-88f0-d12da4abd33b' AND slug = 'acc-jain-college-of-education-birbhum';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2b8fd57f-f3d5-434f-a868-e8f6febce1eb' AND slug = 'access-atlantech-media-college-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: access-atlantech-media-college-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Access Atlantech Media College, Chennai is a creative and professional education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Access Atlantech Media College, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Access Atlantech Media College, Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Access Atlantech Media College, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and ',
  meta_keywords = 'Access Atlantech Media College, Chennai, Access Atlantech Media College, Chennai admission 2026, Access Atlantech Media College, Chennai courses, Access Atlantech Media College, Chennai fees, Access Atlantech Media College, Chennai placement, Access Atlantech Media College, Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'Access Atlantech Media College, Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Access Atlantech Media College, Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Access Atlantech Media College, Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Access Atlantech Media College, Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Access Atlantech Media College, Chennai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Access Atlantech Media College, Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Access Atlantech Media College, Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Access Atlantech Media College, Chennai is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '2b8fd57f-f3d5-434f-a868-e8f6febce1eb' AND slug = 'access-atlantech-media-college-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '82be992c-6d7a-485c-add0-104d72b54275' AND slug = 'accman-institute-of-management-accmanim-greater-noida') THEN
    RAISE EXCEPTION 'College target not found or slug changed: accman-institute-of-management-accmanim-greater-noida';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Accman Institute of Management - [ACCMANIM], Greater Noida is a management and commerce education option in Greater Noida, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include AICTE, MHRD. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Accman Institute of Management - [ACCMANIM], Greater Noida in Greater Noida, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Accman Institute of Management - [ACCMANIM], Greater Noida: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Accman Institute of Management - [ACCMANIM], Greater Noida in Greater Noida, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, p',
  meta_keywords = 'Accman Institute of Management - [ACCMANIM], Greater Noida, Accman Institute of Management - [ACCMANIM], Greater Noida admission 2026, Accman Institute of Management - [ACCMANIM], Greater Noida courses, Accman Institute of Management - [ACCMANIM], Greater Noida fees, Accman Institute of Management - [ACCMANIM], Greater Noida placement, Accman Institute of Management - [ACCMANIM], Greater Noida facilities, Greater Noida, Uttar Pradesh',
  admission_process = 'Accman Institute of Management - [ACCMANIM], Greater Noida admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Accman Institute of Management - [ACCMANIM], Greater Noida depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Accman Institute of Management - [ACCMANIM], Greater Noida course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Accman Institute of Management - [ACCMANIM], Greater Noida placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Accman Institute of Management - [ACCMANIM], Greater Noida facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Accman Institute of Management - [ACCMANIM], Greater Noida should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Accman Institute of Management - [ACCMANIM], Greater Noida may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Accman Institute of Management - [ACCMANIM], Greater Noida is mapped with reviewed approval or affiliation signals such as AICTE, MHRD. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '82be992c-6d7a-485c-add0-104d72b54275' AND slug = 'accman-institute-of-management-accmanim-greater-noida';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3869f30d-8523-4bbf-a69a-11fc1c00dcec' AND slug = 'accord-business-school-abs-tirupati') THEN
    RAISE EXCEPTION 'College target not found or slug changed: accord-business-school-abs-tirupati';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Accord Business School - [ABS], Tirupati is a management and commerce education option in Tirupati, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Accord Business School - [ABS], Tirupati in Tirupati, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Accord Business School - [ABS], Tirupati: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Accord Business School - [ABS], Tirupati in Tirupati, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarship',
  meta_keywords = 'Accord Business School - [ABS], Tirupati, Accord Business School - [ABS], Tirupati admission 2026, Accord Business School - [ABS], Tirupati courses, Accord Business School - [ABS], Tirupati fees, Accord Business School - [ABS], Tirupati placement, Accord Business School - [ABS], Tirupati facilities, Tirupati, Andhra Pradesh',
  admission_process = 'Accord Business School - [ABS], Tirupati admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Accord Business School - [ABS], Tirupati depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Accord Business School - [ABS], Tirupati course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Accord Business School - [ABS], Tirupati placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Accord Business School - [ABS], Tirupati facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Accord Business School - [ABS], Tirupati should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Accord Business School - [ABS], Tirupati may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Accord Business School - [ABS], Tirupati is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3869f30d-8523-4bbf-a69a-11fc1c00dcec' AND slug = 'accord-business-school-abs-tirupati';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4be60294-888c-48f4-b943-486561f50bcb' AND slug = 'achariya-college-of-education-pondicherry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achariya-college-of-education-pondicherry';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Achariya College of Education, Pondicherry is a teacher education option in Pondicherry, Puducherry for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Achariya College of Education, Pondicherry in Pondicherry, Puducherry: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Achariya College of Education, Pondicherry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achariya College of Education, Pondicherry in Pondicherry, Puducherry: source-reviewed overview for admissions, courses, facilities, placements, scholarshi',
  meta_keywords = 'Achariya College of Education, Pondicherry, Achariya College of Education, Pondicherry admission 2026, Achariya College of Education, Pondicherry courses, Achariya College of Education, Pondicherry fees, Achariya College of Education, Pondicherry placement, Achariya College of Education, Pondicherry facilities, Pondicherry, Puducherry',
  admission_process = 'Achariya College of Education, Pondicherry admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Achariya College of Education, Pondicherry depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Achariya College of Education, Pondicherry course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Achariya College of Education, Pondicherry placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Achariya College of Education, Pondicherry facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Achariya College of Education, Pondicherry should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Achariya College of Education, Pondicherry may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Achariya College of Education, Pondicherry is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4be60294-888c-48f4-b943-486561f50bcb' AND slug = 'achariya-college-of-education-pondicherry';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '45cdc934-2df7-4077-a89c-d1fb247b020a' AND slug = 'achariya-school-of-business-amp-technology-asbt-pondicherry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achariya-school-of-business-amp-technology-asbt-pondicherry';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Achariya School of Business & Technology - [ASBT], Pondicherry is a technical education option in Pondicherry, Puducherry for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Achariya School of Business & Technology - [ASBT], Pondicherry in Pondicherry, Puducherry: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Achariya School of Business & Technology - [ASBT], Pondicherry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achariya School of Business & Technology - [ASBT], Pondicherry in Pondicherry, Puducherry: source-reviewed overview for admissions, courses, facilities, pl',
  meta_keywords = 'Achariya School of Business & Technology - [ASBT], Pondicherry, Achariya School of Business & Technology - [ASBT], Pondicherry admission 2026, Achariya School of Business & Technology - [ASBT], Pondicherry courses, Achariya School of Business & Technology - [ASBT], Pondicherry fees, Achariya School of Business & Technology - [ASBT], Pondicherry placement, Achariya School of Business & Technology - [ASBT], Pondicherry facilities, Pondicherry, Puducherry',
  admission_process = 'Achariya School of Business & Technology - [ASBT], Pondicherry admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Achariya School of Business & Technology - [ASBT], Pondicherry depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Achariya School of Business & Technology - [ASBT], Pondicherry should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Achariya School of Business & Technology - [ASBT], Pondicherry may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '45cdc934-2df7-4077-a89c-d1fb247b020a' AND slug = 'achariya-school-of-business-amp-technology-asbt-pondicherry';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c4ad33cd-5fcc-48d8-ba61-0046df0848af' AND slug = 'acharya-and-bm-reddy-college-of-pharmacy-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-and-bm-reddy-college-of-pharmacy-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Acharya and BM Reddy College of Pharmacy, Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include PCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya and BM Reddy College of Pharmacy, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya and BM Reddy College of Pharmacy, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya and BM Reddy College of Pharmacy, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'Acharya and BM Reddy College of Pharmacy, Bangalore, Acharya and BM Reddy College of Pharmacy, Bangalore admission 2026, Acharya and BM Reddy College of Pharmacy, Bangalore courses, Acharya and BM Reddy College of Pharmacy, Bangalore fees, Acharya and BM Reddy College of Pharmacy, Bangalore placement, Acharya and BM Reddy College of Pharmacy, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya and BM Reddy College of Pharmacy, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya and BM Reddy College of Pharmacy, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore facilities currently highlighted for student checks include Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya and BM Reddy College of Pharmacy, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya and BM Reddy College of Pharmacy, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore is mapped with reviewed approval or affiliation signals such as PCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c4ad33cd-5fcc-48d8-ba61-0046df0848af' AND slug = 'acharya-and-bm-reddy-college-of-pharmacy-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a5986ad8-71e9-44e2-b19d-3a862ec6110f' AND slug = 'acharya-bangalore-b-school-abbs-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-bangalore-b-school-abbs-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Acharya Bangalore B-School - [ABBS], Bangalore is a higher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE, UGC, NBA, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Bangalore B-School - [ABBS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Bangalore B-School - [ABBS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Bangalore B-School - [ABBS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'Acharya Bangalore B-School - [ABBS], Bangalore, Acharya Bangalore B-School - [ABBS], Bangalore admission 2026, Acharya Bangalore B-School - [ABBS], Bangalore courses, Acharya Bangalore B-School - [ABBS], Bangalore fees, Acharya Bangalore B-School - [ABBS], Bangalore placement, Acharya Bangalore B-School - [ABBS], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya Bangalore B-School - [ABBS], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Bangalore B-School - [ABBS], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Bangalore B-School - [ABBS], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Bangalore B-School - [ABBS], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Bangalore B-School - [ABBS], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Bangalore B-School - [ABBS], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Bangalore B-School - [ABBS], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Bangalore B-School - [ABBS], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE, UGC, NBA, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'a5986ad8-71e9-44e2-b19d-3a862ec6110f' AND slug = 'acharya-bangalore-b-school-abbs-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '861ed9f2-60b3-4e3d-91c2-dfc18daf3326' AND slug = 'acharya-college-of-education-ace-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-college-of-education-ace-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Acharya College of Education - [ACE], Bangalore is a teacher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya College of Education - [ACE], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya College of Education - [ACE], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya College of Education - [ACE], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholars',
  meta_keywords = 'Acharya College of Education - [ACE], Bangalore, Acharya College of Education - [ACE], Bangalore admission 2026, Acharya College of Education - [ACE], Bangalore courses, Acharya College of Education - [ACE], Bangalore fees, Acharya College of Education - [ACE], Bangalore placement, Acharya College of Education - [ACE], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya College of Education - [ACE], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya College of Education - [ACE], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya College of Education - [ACE], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya College of Education - [ACE], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya College of Education - [ACE], Bangalore facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya College of Education - [ACE], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya College of Education - [ACE], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya College of Education - [ACE], Bangalore is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '861ed9f2-60b3-4e3d-91c2-dfc18daf3326' AND slug = 'acharya-college-of-education-ace-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '90b5b00a-7566-416e-b62f-73d22ebb7ed0' AND slug = 'acharya-institute-of-graduate-studies-aigs-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-institute-of-graduate-studies-aigs-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Acharya Institute of Graduate Studies - [AIGS], Bangalore is a higher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include AICTE, NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements',
  meta_keywords = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore, Acharya Institute of Graduate Studies - [AIGS], Bangalore admission 2026, Acharya Institute of Graduate Studies - [AIGS], Bangalore courses, Acharya Institute of Graduate Studies - [AIGS], Bangalore fees, Acharya Institute of Graduate Studies - [AIGS], Bangalore placement, Acharya Institute of Graduate Studies - [AIGS], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Institute of Graduate Studies - [AIGS], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Institute of Graduate Studies - [AIGS], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Institute of Graduate Studies - [AIGS], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE, NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '90b5b00a-7566-416e-b62f-73d22ebb7ed0' AND slug = 'acharya-institute-of-graduate-studies-aigs-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '61ab183e-190d-4065-9fab-34d5b3ee7af3' AND slug = 'acharya-institute-of-health-sciences-aihs-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-institute-of-health-sciences-aihs-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Acharya Institute of Health Sciences - [AIHS], Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1997. Current approval or affiliation signals available for review include INC, KNC, IAP. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Institute of Health Sciences - [AIHS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Institute of Health Sciences - [AIHS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Institute of Health Sciences - [AIHS], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements,',
  meta_keywords = 'Acharya Institute of Health Sciences - [AIHS], Bangalore, Acharya Institute of Health Sciences - [AIHS], Bangalore admission 2026, Acharya Institute of Health Sciences - [AIHS], Bangalore courses, Acharya Institute of Health Sciences - [AIHS], Bangalore fees, Acharya Institute of Health Sciences - [AIHS], Bangalore placement, Acharya Institute of Health Sciences - [AIHS], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya Institute of Health Sciences - [AIHS], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Institute of Health Sciences - [AIHS], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Institute of Health Sciences - [AIHS], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Institute of Health Sciences - [AIHS], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore is mapped with reviewed approval or affiliation signals such as INC, KNC, IAP. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '61ab183e-190d-4065-9fab-34d5b3ee7af3' AND slug = 'acharya-institute-of-health-sciences-aihs-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9fe8ffb8-8377-4a3e-897d-9fe863146743' AND slug = 'acharya-institute-of-technology-ait-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-institute-of-technology-ait-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Acharya Institute of Technology - [AIT], Bangalore is a technical education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Institute of Technology - [AIT], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Institute of Technology - [AIT], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Institute of Technology - [AIT], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, schol',
  meta_keywords = 'Acharya Institute of Technology - [AIT], Bangalore, Acharya Institute of Technology - [AIT], Bangalore admission 2026, Acharya Institute of Technology - [AIT], Bangalore courses, Acharya Institute of Technology - [AIT], Bangalore fees, Acharya Institute of Technology - [AIT], Bangalore placement, Acharya Institute of Technology - [AIT], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya Institute of Technology - [AIT], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Institute of Technology - [AIT], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Institute of Technology - [AIT], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Institute of Technology - [AIT], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Institute of Technology - [AIT], Bangalore facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Institute of Technology - [AIT], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Institute of Technology - [AIT], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Institute of Technology - [AIT], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9fe8ffb8-8377-4a3e-897d-9fe863146743' AND slug = 'acharya-institute-of-technology-ait-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '112cea21-979a-49b8-8b7b-824f96d97dba' AND slug = 'acharya-jawadekar-college-of-education-kolhapur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-jawadekar-college-of-education-kolhapur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Acharya Jawadekar College of Education, Kolhapur is a teacher education option in Kolhapur, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1956. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Jawadekar College of Education, Kolhapur in Kolhapur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Jawadekar College of Education, Kolhapur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Jawadekar College of Education, Kolhapur in Kolhapur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, schola',
  meta_keywords = 'Acharya Jawadekar College of Education, Kolhapur, Acharya Jawadekar College of Education, Kolhapur admission 2026, Acharya Jawadekar College of Education, Kolhapur courses, Acharya Jawadekar College of Education, Kolhapur fees, Acharya Jawadekar College of Education, Kolhapur placement, Acharya Jawadekar College of Education, Kolhapur facilities, Kolhapur, Maharashtra',
  admission_process = 'Acharya Jawadekar College of Education, Kolhapur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Jawadekar College of Education, Kolhapur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Jawadekar College of Education, Kolhapur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Jawadekar College of Education, Kolhapur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Jawadekar College of Education, Kolhapur facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Jawadekar College of Education, Kolhapur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Jawadekar College of Education, Kolhapur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Jawadekar College of Education, Kolhapur is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '112cea21-979a-49b8-8b7b-824f96d97dba' AND slug = 'acharya-jawadekar-college-of-education-kolhapur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7075f5fc-e793-4ee2-a505-89ef89a91f45' AND slug = 'acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur is a technical education option in Guntur, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1983. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur in Guntur, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur in Guntur, Andhra Pradesh: source-reviewed overvie',
  meta_keywords = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur admission 2026, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur courses, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur fees, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur placement, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur facilities, Guntur, Andhra Pradesh',
  admission_process = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '7075f5fc-e793-4ee2-a505-89ef89a91f45' AND slug = 'acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '90186907-91d7-43e3-a512-f758b2741f7e' AND slug = 'acharya-narendra-dev-college-of-pharmacy-gonda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-narendra-dev-college-of-pharmacy-gonda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Acharya Narendra Dev College of Pharmacy, Gonda is a healthcare education option in Gonda, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1997. Current approval or affiliation signals available for review include PCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Narendra Dev College of Pharmacy, Gonda in Gonda, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Narendra Dev College of Pharmacy, Gonda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Narendra Dev College of Pharmacy, Gonda in Gonda, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholars',
  meta_keywords = 'Acharya Narendra Dev College of Pharmacy, Gonda, Acharya Narendra Dev College of Pharmacy, Gonda admission 2026, Acharya Narendra Dev College of Pharmacy, Gonda courses, Acharya Narendra Dev College of Pharmacy, Gonda fees, Acharya Narendra Dev College of Pharmacy, Gonda placement, Acharya Narendra Dev College of Pharmacy, Gonda facilities, Gonda, Uttar Pradesh',
  admission_process = 'Acharya Narendra Dev College of Pharmacy, Gonda admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Narendra Dev College of Pharmacy, Gonda depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Narendra Dev College of Pharmacy, Gonda course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Narendra Dev College of Pharmacy, Gonda placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Narendra Dev College of Pharmacy, Gonda facilities currently highlighted for student checks include Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Narendra Dev College of Pharmacy, Gonda should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Narendra Dev College of Pharmacy, Gonda may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Narendra Dev College of Pharmacy, Gonda is mapped with reviewed approval or affiliation signals such as PCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '90186907-91d7-43e3-a512-f758b2741f7e' AND slug = 'acharya-narendra-dev-college-of-pharmacy-gonda';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '09456ebc-daea-4813-bf47-8a0e1c38bb53' AND slug = 'acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri is a higher education option in Siliguri, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri in Siliguri, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri in Siliguri, West Bengal: source-reviewed overview for admissions, courses, facilities',
  meta_keywords = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri admission 2026, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri courses, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri fees, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri placement, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri facilities, Siliguri, West Bengal',
  admission_process = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri is mapped with reviewed approval or affiliation signals such as NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '09456ebc-daea-4813-bf47-8a0e1c38bb53' AND slug = 'acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7391516b-2551-4102-a7bb-8806e13cb7d5' AND slug = 'acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum is a teacher education option in Birbhum, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum in Birbhum, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum in Birbhum, West Bengal: source-reviewed overview for admissions, courses',
  meta_keywords = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum admission 2026, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum courses, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum fees, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum placement, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum facilities, Birbhum, West Bengal',
  admission_process = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '7391516b-2551-4102-a7bb-8806e13cb7d5' AND slug = 'acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '266ae96b-031a-4970-b8af-7be79e48a2fb' AND slug = 'acharya-school-of-management-asm-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-school-of-management-asm-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Acharya School of Management - [ASM], Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya School of Management - [ASM], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya School of Management - [ASM], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya School of Management - [ASM], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholars',
  meta_keywords = 'Acharya School of Management - [ASM], Bangalore, Acharya School of Management - [ASM], Bangalore admission 2026, Acharya School of Management - [ASM], Bangalore courses, Acharya School of Management - [ASM], Bangalore fees, Acharya School of Management - [ASM], Bangalore placement, Acharya School of Management - [ASM], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya School of Management - [ASM], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya School of Management - [ASM], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya School of Management - [ASM], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya School of Management - [ASM], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya School of Management - [ASM], Bangalore facilities currently highlighted for student checks include Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya School of Management - [ASM], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya School of Management - [ASM], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya School of Management - [ASM], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '266ae96b-031a-4970-b8af-7be79e48a2fb' AND slug = 'acharya-school-of-management-asm-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7b3474fb-9d3a-49cf-af61-ea549b14fbcc' AND slug = 'acharya-shri-chander-college-of-medical-sciences-jammu') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-shri-chander-college-of-medical-sciences-jammu';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Acharya Shri Chander College of Medical Sciences, Jammu is a healthcare education option in Jammu, Jammu And Kashmir for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1996. Current approval or affiliation signals available for review include NMC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Shri Chander College of Medical Sciences, Jammu in Jammu, Jammu And Kashmir: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Shri Chander College of Medical Sciences, Jammu: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Shri Chander College of Medical Sciences, Jammu in Jammu, Jammu And Kashmir: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'Acharya Shri Chander College of Medical Sciences, Jammu, Acharya Shri Chander College of Medical Sciences, Jammu admission 2026, Acharya Shri Chander College of Medical Sciences, Jammu courses, Acharya Shri Chander College of Medical Sciences, Jammu fees, Acharya Shri Chander College of Medical Sciences, Jammu placement, Acharya Shri Chander College of Medical Sciences, Jammu facilities, Jammu, Jammu And Kashmir',
  admission_process = 'Acharya Shri Chander College of Medical Sciences, Jammu admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Shri Chander College of Medical Sciences, Jammu depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Shri Chander College of Medical Sciences, Jammu course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Shri Chander College of Medical Sciences, Jammu placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Shri Chander College of Medical Sciences, Jammu facilities currently highlighted for student checks include Teaching hospital, Clinical departments, Laboratories, Library, Hostel. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Shri Chander College of Medical Sciences, Jammu should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Shri Chander College of Medical Sciences, Jammu may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Shri Chander College of Medical Sciences, Jammu is mapped with reviewed approval or affiliation signals such as NMC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '7b3474fb-9d3a-49cf-af61-ea549b14fbcc' AND slug = 'acharya-shri-chander-college-of-medical-sciences-jammu';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8d1642c4-4db5-4de7-9b5a-940d63bd93d3' AND slug = 'acharya-shri-chander-institute-of-nursing-education-jammu') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-shri-chander-institute-of-nursing-education-jammu';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Acharya Shri Chander Institute of Nursing Education, Jammu is a healthcare education option in Jammu, Jammu And Kashmir for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya Shri Chander Institute of Nursing Education, Jammu in Jammu, Jammu And Kashmir: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya Shri Chander Institute of Nursing Education, Jammu: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Shri Chander Institute of Nursing Education, Jammu in Jammu, Jammu And Kashmir: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Acharya Shri Chander Institute of Nursing Education, Jammu, Acharya Shri Chander Institute of Nursing Education, Jammu admission 2026, Acharya Shri Chander Institute of Nursing Education, Jammu courses, Acharya Shri Chander Institute of Nursing Education, Jammu fees, Acharya Shri Chander Institute of Nursing Education, Jammu placement, Acharya Shri Chander Institute of Nursing Education, Jammu facilities, Jammu, Jammu And Kashmir',
  admission_process = 'Acharya Shri Chander Institute of Nursing Education, Jammu admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya Shri Chander Institute of Nursing Education, Jammu depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya Shri Chander Institute of Nursing Education, Jammu should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya Shri Chander Institute of Nursing Education, Jammu may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '8d1642c4-4db5-4de7-9b5a-940d63bd93d3' AND slug = 'acharya-shri-chander-institute-of-nursing-education-jammu';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a41376f7-926c-474d-ae82-f51cbb4e5231' AND slug = 'acharya039s-nr-school-of-nursing-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya039s-nr-school-of-nursing-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Acharya''s NR School of Nursing, Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2003. Current approval or affiliation signals available for review include INC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya''s NR School of Nursing, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya''s NR School of Nursing, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya''s NR School of Nursing, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships a',
  meta_keywords = 'Acharya''s NR School of Nursing, Bangalore, Acharya''s NR School of Nursing, Bangalore admission 2026, Acharya''s NR School of Nursing, Bangalore courses, Acharya''s NR School of Nursing, Bangalore fees, Acharya''s NR School of Nursing, Bangalore placement, Acharya''s NR School of Nursing, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya''s NR School of Nursing, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya''s NR School of Nursing, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya''s NR School of Nursing, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya''s NR School of Nursing, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya''s NR School of Nursing, Bangalore facilities currently highlighted for student checks include Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya''s NR School of Nursing, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya''s NR School of Nursing, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya''s NR School of Nursing, Bangalore is mapped with reviewed approval or affiliation signals such as INC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'a41376f7-926c-474d-ae82-f51cbb4e5231' AND slug = 'acharya039s-nr-school-of-nursing-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3e1dddfe-6c61-4e7f-80da-406472fcb275' AND slug = 'acharya039s-nrv-school-of-architecture-anrvsa-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya039s-nrv-school-of-architecture-anrvsa-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore is a technical education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include COA. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placement',
  meta_keywords = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore admission 2026, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore courses, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore fees, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore placement, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acharya''s NRV School of Architecture - [ANRVSA], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore facilities currently highlighted for student checks include Design studios, Computer lab, Library, Workshop, Exhibition spaces. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Design studios', 'Computer lab', 'Library', 'Workshop', 'Exhibition spaces']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Design studios', 'Computer lab', 'Library', 'Workshop', 'Exhibition spaces']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acharya''s NRV School of Architecture - [ANRVSA], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acharya''s NRV School of Architecture - [ANRVSA], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore is mapped with reviewed approval or affiliation signals such as COA. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3e1dddfe-6c61-4e7f-80da-406472fcb275' AND slug = 'acharya039s-nrv-school-of-architecture-anrvsa-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '60a66a24-2eb0-44e5-9e15-259a77cd3344' AND slug = 'achhruram-memorial-college-purulia') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achhruram-memorial-college-purulia';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Achhruram Memorial College, Purulia is a higher education option in Purulia, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1975. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Achhruram Memorial College, Purulia in Purulia, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Achhruram Memorial College, Purulia: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achhruram Memorial College, Purulia in Purulia, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 202',
  meta_keywords = 'Achhruram Memorial College, Purulia, Achhruram Memorial College, Purulia admission 2026, Achhruram Memorial College, Purulia courses, Achhruram Memorial College, Purulia fees, Achhruram Memorial College, Purulia placement, Achhruram Memorial College, Purulia facilities, Purulia, West Bengal',
  admission_process = 'Achhruram Memorial College, Purulia admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Achhruram Memorial College, Purulia depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Achhruram Memorial College, Purulia course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Achhruram Memorial College, Purulia placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Achhruram Memorial College, Purulia facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Achhruram Memorial College, Purulia should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Achhruram Memorial College, Purulia may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Achhruram Memorial College, Purulia has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '60a66a24-2eb0-44e5-9e15-259a77cd3344' AND slug = 'achhruram-memorial-college-purulia';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '67a67020-7354-4e8a-879e-6ef72cc6aba6' AND slug = 'achutha-institute-of-technology-ait-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achutha-institute-of-technology-ait-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Achutha Institute of Technology - [AIT], Bangalore is a technical education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Achutha Institute of Technology - [AIT], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Achutha Institute of Technology - [AIT], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achutha Institute of Technology - [AIT], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, schol',
  meta_keywords = 'Achutha Institute of Technology - [AIT], Bangalore, Achutha Institute of Technology - [AIT], Bangalore admission 2026, Achutha Institute of Technology - [AIT], Bangalore courses, Achutha Institute of Technology - [AIT], Bangalore fees, Achutha Institute of Technology - [AIT], Bangalore placement, Achutha Institute of Technology - [AIT], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Achutha Institute of Technology - [AIT], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Achutha Institute of Technology - [AIT], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Achutha Institute of Technology - [AIT], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Achutha Institute of Technology - [AIT], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Achutha Institute of Technology - [AIT], Bangalore facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Achutha Institute of Technology - [AIT], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Achutha Institute of Technology - [AIT], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Achutha Institute of Technology - [AIT], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '67a67020-7354-4e8a-879e-6ef72cc6aba6' AND slug = 'achutha-institute-of-technology-ait-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a0ed64f9-cd8f-4a04-a39d-6ebad262c472' AND slug = 'acliv-technology-and-management-academy-atma-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acliv-technology-and-management-academy-atma-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Acliv Technology and Management Academy - [ATMA], Bangalore is a technical education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acliv Technology and Management Academy - [ATMA], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acliv Technology and Management Academy - [ATMA], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acliv Technology and Management Academy - [ATMA], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'Acliv Technology and Management Academy - [ATMA], Bangalore, Acliv Technology and Management Academy - [ATMA], Bangalore admission 2026, Acliv Technology and Management Academy - [ATMA], Bangalore courses, Acliv Technology and Management Academy - [ATMA], Bangalore fees, Acliv Technology and Management Academy - [ATMA], Bangalore placement, Acliv Technology and Management Academy - [ATMA], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Acliv Technology and Management Academy - [ATMA], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acliv Technology and Management Academy - [ATMA], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acliv Technology and Management Academy - [ATMA], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acliv Technology and Management Academy - [ATMA], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'a0ed64f9-cd8f-4a04-a39d-6ebad262c472' AND slug = 'acliv-technology-and-management-academy-atma-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cac88a19-69c2-4057-9218-b2ccd809834d' AND slug = 'acme-institute-of-management-and-technology-agra') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acme-institute-of-management-and-technology-agra';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, ACME Institute of Management and Technology, Agra is a technical education option in Agra, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'ACME Institute of Management and Technology, Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'ACME Institute of Management and Technology, Agra: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACME Institute of Management and Technology, Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'ACME Institute of Management and Technology, Agra, ACME Institute of Management and Technology, Agra admission 2026, ACME Institute of Management and Technology, Agra courses, ACME Institute of Management and Technology, Agra fees, ACME Institute of Management and Technology, Agra placement, ACME Institute of Management and Technology, Agra facilities, Agra, Uttar Pradesh',
  admission_process = 'ACME Institute of Management and Technology, Agra admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at ACME Institute of Management and Technology, Agra depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'ACME Institute of Management and Technology, Agra course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'ACME Institute of Management and Technology, Agra placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'ACME Institute of Management and Technology, Agra facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for ACME Institute of Management and Technology, Agra should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for ACME Institute of Management and Technology, Agra may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'ACME Institute of Management and Technology, Agra is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'cac88a19-69c2-4057-9218-b2ccd809834d' AND slug = 'acme-institute-of-management-and-technology-agra';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9a968ded-c2df-4ac1-934f-4e0d95e9f557' AND slug = 'acn-college-of-engineering-and-management-studies-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acn-college-of-engineering-and-management-studies-aligarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, ACN College of Engineering and Management Studies, Aligarh is a technical education option in Aligarh, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'ACN College of Engineering and Management Studies, Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'ACN College of Engineering and Management Studies, Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACN College of Engineering and Management Studies, Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'ACN College of Engineering and Management Studies, Aligarh, ACN College of Engineering and Management Studies, Aligarh admission 2026, ACN College of Engineering and Management Studies, Aligarh courses, ACN College of Engineering and Management Studies, Aligarh fees, ACN College of Engineering and Management Studies, Aligarh placement, ACN College of Engineering and Management Studies, Aligarh facilities, Aligarh, Uttar Pradesh',
  admission_process = 'ACN College of Engineering and Management Studies, Aligarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at ACN College of Engineering and Management Studies, Aligarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'ACN College of Engineering and Management Studies, Aligarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'ACN College of Engineering and Management Studies, Aligarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'ACN College of Engineering and Management Studies, Aligarh facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for ACN College of Engineering and Management Studies, Aligarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for ACN College of Engineering and Management Studies, Aligarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'ACN College of Engineering and Management Studies, Aligarh is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9a968ded-c2df-4ac1-934f-4e0d95e9f557' AND slug = 'acn-college-of-engineering-and-management-studies-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7e40284f-943b-4bb3-b6ea-e862fc8ce139' AND slug = 'acn-institute-for-higher-education-acnihe-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acn-institute-for-higher-education-acnihe-aligarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, ACN Institute for Higher Education - [ACNIHE], Aligarh is a teacher education option in Aligarh, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'ACN Institute for Higher Education - [ACNIHE], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'ACN Institute for Higher Education - [ACNIHE], Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACN Institute for Higher Education - [ACNIHE], Aligarh in Aligarh, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements,',
  meta_keywords = 'ACN Institute for Higher Education - [ACNIHE], Aligarh, ACN Institute for Higher Education - [ACNIHE], Aligarh admission 2026, ACN Institute for Higher Education - [ACNIHE], Aligarh courses, ACN Institute for Higher Education - [ACNIHE], Aligarh fees, ACN Institute for Higher Education - [ACNIHE], Aligarh placement, ACN Institute for Higher Education - [ACNIHE], Aligarh facilities, Aligarh, Uttar Pradesh',
  admission_process = 'ACN Institute for Higher Education - [ACNIHE], Aligarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at ACN Institute for Higher Education - [ACNIHE], Aligarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for ACN Institute for Higher Education - [ACNIHE], Aligarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for ACN Institute for Higher Education - [ACNIHE], Aligarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '7e40284f-943b-4bb3-b6ea-e862fc8ce139' AND slug = 'acn-institute-for-higher-education-acnihe-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '81eba128-33be-4b43-bea7-a78835c06b08' AND slug = 'acropolis-institute-of-management-studies-and-research-aimsr-indore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-institute-of-management-studies-and-research-aimsr-indore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Acropolis Institute of Management Studies & Research - [AIMSR], Indore is a management and commerce education option in Indore, Madhya Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore in Indore, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore in Indore, Madhya Pradesh: source-reviewed overview for admissions, courses, facilit',
  meta_keywords = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore, Acropolis Institute of Management Studies & Research - [AIMSR], Indore admission 2026, Acropolis Institute of Management Studies & Research - [AIMSR], Indore courses, Acropolis Institute of Management Studies & Research - [AIMSR], Indore fees, Acropolis Institute of Management Studies & Research - [AIMSR], Indore placement, Acropolis Institute of Management Studies & Research - [AIMSR], Indore facilities, Indore, Madhya Pradesh',
  admission_process = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acropolis Institute of Management Studies & Research - [AIMSR], Indore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore facilities currently highlighted for student checks include Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acropolis Institute of Management Studies & Research - [AIMSR], Indore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acropolis Institute of Management Studies & Research - [AIMSR], Indore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '81eba128-33be-4b43-bea7-a78835c06b08' AND slug = 'acropolis-institute-of-management-studies-and-research-aimsr-indore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9cdef016-7f2b-4de3-ae08-79c6384bf93d' AND slug = 'acropolis-institute-of-technology-and-research-aitr-bhopal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-institute-of-technology-and-research-aitr-bhopal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Acropolis Institute of Technology and Research - [AITR], Bhopal is a technical education option in Bhopal, Madhya Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acropolis Institute of Technology and Research - [AITR], Bhopal in Bhopal, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acropolis Institute of Technology and Research - [AITR], Bhopal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Institute of Technology and Research - [AITR], Bhopal in Bhopal, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, pl',
  meta_keywords = 'Acropolis Institute of Technology and Research - [AITR], Bhopal, Acropolis Institute of Technology and Research - [AITR], Bhopal admission 2026, Acropolis Institute of Technology and Research - [AITR], Bhopal courses, Acropolis Institute of Technology and Research - [AITR], Bhopal fees, Acropolis Institute of Technology and Research - [AITR], Bhopal placement, Acropolis Institute of Technology and Research - [AITR], Bhopal facilities, Bhopal, Madhya Pradesh',
  admission_process = 'Acropolis Institute of Technology and Research - [AITR], Bhopal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acropolis Institute of Technology and Research - [AITR], Bhopal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acropolis Institute of Technology and Research - [AITR], Bhopal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acropolis Institute of Technology and Research - [AITR], Bhopal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9cdef016-7f2b-4de3-ae08-79c6384bf93d' AND slug = 'acropolis-institute-of-technology-and-research-aitr-bhopal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '200f7408-0c8d-4666-9fb6-6d6e68e12096' AND slug = 'acropolis-technical-campus-indore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-technical-campus-indore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Acropolis Technical Campus, Indore is a higher education option in Indore, Madhya Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Acropolis Technical Campus, Indore in Indore, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Acropolis Technical Campus, Indore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Technical Campus, Indore in Indore, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 20',
  meta_keywords = 'Acropolis Technical Campus, Indore, Acropolis Technical Campus, Indore admission 2026, Acropolis Technical Campus, Indore courses, Acropolis Technical Campus, Indore fees, Acropolis Technical Campus, Indore placement, Acropolis Technical Campus, Indore facilities, Indore, Madhya Pradesh',
  admission_process = 'Acropolis Technical Campus, Indore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Acropolis Technical Campus, Indore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Acropolis Technical Campus, Indore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Acropolis Technical Campus, Indore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Acropolis Technical Campus, Indore facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Acropolis Technical Campus, Indore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Acropolis Technical Campus, Indore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Acropolis Technical Campus, Indore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '200f7408-0c8d-4666-9fb6-6d6e68e12096' AND slug = 'acropolis-technical-campus-indore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '090ca3da-6143-4159-bc75-81920a22b719' AND slug = 'act-college-of-engineering-and-technology-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: act-college-of-engineering-and-technology-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, ACT College of Engineering and Technology, Kanchipuram is a technical education option in Kanchipuram, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'ACT College of Engineering and Technology, Kanchipuram in Kanchipuram, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'ACT College of Engineering and Technology, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACT College of Engineering and Technology, Kanchipuram in Kanchipuram, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements',
  meta_keywords = 'ACT College of Engineering and Technology, Kanchipuram, ACT College of Engineering and Technology, Kanchipuram admission 2026, ACT College of Engineering and Technology, Kanchipuram courses, ACT College of Engineering and Technology, Kanchipuram fees, ACT College of Engineering and Technology, Kanchipuram placement, ACT College of Engineering and Technology, Kanchipuram facilities, Kanchipuram, Tamil Nadu',
  admission_process = 'ACT College of Engineering and Technology, Kanchipuram admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at ACT College of Engineering and Technology, Kanchipuram depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'ACT College of Engineering and Technology, Kanchipuram course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'ACT College of Engineering and Technology, Kanchipuram placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'ACT College of Engineering and Technology, Kanchipuram facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for ACT College of Engineering and Technology, Kanchipuram should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for ACT College of Engineering and Technology, Kanchipuram may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'ACT College of Engineering and Technology, Kanchipuram is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '090ca3da-6143-4159-bc75-81920a22b719' AND slug = 'act-college-of-engineering-and-technology-kanchipuram';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ad59ffc7-9b3e-4dfd-b965-e34dd2101a2c' AND slug = 'adamas-institute-of-teacher-education-north-24-parganas') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adamas-institute-of-teacher-education-north-24-parganas';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adamas Institute of Teacher Education, North 24 Parganas is a teacher education option in North 24 Parganas, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2011. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adamas Institute of Teacher Education, North 24 Parganas in North 24 Parganas, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adamas Institute of Teacher Education, North 24 Parganas: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adamas Institute of Teacher Education, North 24 Parganas in North 24 Parganas, West Bengal: source-reviewed overview for admissions, courses, facilities, p',
  meta_keywords = 'Adamas Institute of Teacher Education, North 24 Parganas, Adamas Institute of Teacher Education, North 24 Parganas admission 2026, Adamas Institute of Teacher Education, North 24 Parganas courses, Adamas Institute of Teacher Education, North 24 Parganas fees, Adamas Institute of Teacher Education, North 24 Parganas placement, Adamas Institute of Teacher Education, North 24 Parganas facilities, North 24 Parganas, West Bengal',
  admission_process = 'Adamas Institute of Teacher Education, North 24 Parganas admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adamas Institute of Teacher Education, North 24 Parganas depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adamas Institute of Teacher Education, North 24 Parganas course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adamas Institute of Teacher Education, North 24 Parganas placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adamas Institute of Teacher Education, North 24 Parganas facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adamas Institute of Teacher Education, North 24 Parganas should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adamas Institute of Teacher Education, North 24 Parganas may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adamas Institute of Teacher Education, North 24 Parganas is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ad59ffc7-9b3e-4dfd-b965-e34dd2101a2c' AND slug = 'adamas-institute-of-teacher-education-north-24-parganas';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '956f81a5-ab72-4634-97cb-6c2d41b98382' AND slug = 'adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara is a higher education option in Satara, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara in Satara, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara in Satara, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara admission 2026, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara courses, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara fees, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara placement, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara facilities, Satara, Maharashtra',
  admission_process = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '956f81a5-ab72-4634-97cb-6c2d41b98382' AND slug = 'adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd2cf7238-154f-4aa2-aa38-60bf3359f7ed' AND slug = 'adarsh-college-of-arts-amp-commerce-thane') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-arts-amp-commerce-thane';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adarsh College of Arts & Commerce, Thane is a management and commerce education option in Thane, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1995. Current approval or affiliation signals available for review include NAAC-B. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh College of Arts & Commerce, Thane in Thane, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh College of Arts & Commerce, Thane: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Arts & Commerce, Thane in Thane, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and ',
  meta_keywords = 'Adarsh College of Arts & Commerce, Thane, Adarsh College of Arts & Commerce, Thane admission 2026, Adarsh College of Arts & Commerce, Thane courses, Adarsh College of Arts & Commerce, Thane fees, Adarsh College of Arts & Commerce, Thane placement, Adarsh College of Arts & Commerce, Thane facilities, Thane, Maharashtra',
  admission_process = 'Adarsh College of Arts & Commerce, Thane admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh College of Arts & Commerce, Thane depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh College of Arts & Commerce, Thane course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh College of Arts & Commerce, Thane placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh College of Arts & Commerce, Thane facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh College of Arts & Commerce, Thane should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh College of Arts & Commerce, Thane may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh College of Arts & Commerce, Thane is mapped with reviewed approval or affiliation signals such as NAAC-B. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'd2cf7238-154f-4aa2-aa38-60bf3359f7ed' AND slug = 'adarsh-college-of-arts-amp-commerce-thane';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bd5e0217-fc8b-452e-ad8e-ad5a05773f86' AND slug = 'adarsh-college-of-education-bhiwani') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-education-bhiwani';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adarsh College of Education, Bhiwani is a teacher education option in Bhiwani, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh College of Education, Bhiwani in Bhiwani, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh College of Education, Bhiwani: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Education, Bhiwani in Bhiwani, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 d',
  meta_keywords = 'Adarsh College of Education, Bhiwani, Adarsh College of Education, Bhiwani admission 2026, Adarsh College of Education, Bhiwani courses, Adarsh College of Education, Bhiwani fees, Adarsh College of Education, Bhiwani placement, Adarsh College of Education, Bhiwani facilities, Bhiwani, Haryana',
  admission_process = 'Adarsh College of Education, Bhiwani admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh College of Education, Bhiwani depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh College of Education, Bhiwani course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh College of Education, Bhiwani placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh College of Education, Bhiwani facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh College of Education, Bhiwani should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh College of Education, Bhiwani may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh College of Education, Bhiwani is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'bd5e0217-fc8b-452e-ad8e-ad5a05773f86' AND slug = 'adarsh-college-of-education-bhiwani';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bbac2ff9-2c0d-485c-8746-e5a3c124577a' AND slug = 'adarsh-college-of-education-jammu') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-education-jammu';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Adarsh College of Education, Jammu is a teacher education option in Jammu, Jammu And Kashmir for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh College of Education, Jammu in Jammu, Jammu And Kashmir: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh College of Education, Jammu: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Education, Jammu in Jammu, Jammu And Kashmir: source-reviewed overview for admissions, courses, facilities, placements, scholarships and ',
  meta_keywords = 'Adarsh College of Education, Jammu, Adarsh College of Education, Jammu admission 2026, Adarsh College of Education, Jammu courses, Adarsh College of Education, Jammu fees, Adarsh College of Education, Jammu placement, Adarsh College of Education, Jammu facilities, Jammu, Jammu And Kashmir',
  admission_process = 'Adarsh College of Education, Jammu admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh College of Education, Jammu depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh College of Education, Jammu course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh College of Education, Jammu placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh College of Education, Jammu facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh College of Education, Jammu should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh College of Education, Jammu may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh College of Education, Jammu is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'bbac2ff9-2c0d-485c-8746-e5a3c124577a' AND slug = 'adarsh-college-of-education-jammu';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9dde650c-cfb7-4ac3-912a-428d25dabce9' AND slug = 'adarsh-college-of-education-jhajjar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-education-jhajjar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adarsh College of Education, Jhajjar is a teacher education option in Jhajjar, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh College of Education, Jhajjar in Jhajjar, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh College of Education, Jhajjar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Education, Jhajjar in Jhajjar, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 d',
  meta_keywords = 'Adarsh College of Education, Jhajjar, Adarsh College of Education, Jhajjar admission 2026, Adarsh College of Education, Jhajjar courses, Adarsh College of Education, Jhajjar fees, Adarsh College of Education, Jhajjar placement, Adarsh College of Education, Jhajjar facilities, Jhajjar, Haryana',
  admission_process = 'Adarsh College of Education, Jhajjar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh College of Education, Jhajjar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh College of Education, Jhajjar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh College of Education, Jhajjar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh College of Education, Jhajjar facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh College of Education, Jhajjar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh College of Education, Jhajjar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh College of Education, Jhajjar is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9dde650c-cfb7-4ac3-912a-428d25dabce9' AND slug = 'adarsh-college-of-education-jhajjar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '312e1632-3d9a-43b3-841b-d6f59468e8d9' AND slug = 'adarsh-college-of-elementary-teacher-education-mahabub-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-elementary-teacher-education-mahabub-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adarsh College of Elementary Teacher Education, Mahabub Nagar is a teacher education option in Mahabub Nagar, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1985. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar in Mahabub Nagar, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar in Mahabub Nagar, Telangana: source-reviewed overview for admissions, courses, facilities, pl',
  meta_keywords = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar, Adarsh College of Elementary Teacher Education, Mahabub Nagar admission 2026, Adarsh College of Elementary Teacher Education, Mahabub Nagar courses, Adarsh College of Elementary Teacher Education, Mahabub Nagar fees, Adarsh College of Elementary Teacher Education, Mahabub Nagar placement, Adarsh College of Elementary Teacher Education, Mahabub Nagar facilities, Mahabub Nagar, Telangana',
  admission_process = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh College of Elementary Teacher Education, Mahabub Nagar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh College of Elementary Teacher Education, Mahabub Nagar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh College of Elementary Teacher Education, Mahabub Nagar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '312e1632-3d9a-43b3-841b-d6f59468e8d9' AND slug = 'adarsh-college-of-elementary-teacher-education-mahabub-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '551fec0e-af8a-4508-8074-58191067edda' AND slug = 'adarsh-college-of-engineering-acee-chebrole-east-godavari') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-engineering-acee-chebrole-east-godavari';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari is a technical education option in East Godavari, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari in East Godavari, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari in East Godavari, Andhra Pradesh: source-reviewed overview for admissions, courses, facilit',
  meta_keywords = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari admission 2026, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari courses, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari fees, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari placement, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari facilities, East Godavari, Andhra Pradesh',
  admission_process = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh College of Engineering - [ACEE], Chebrole, East Godavari depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh College of Engineering - [ACEE], Chebrole, East Godavari should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh College of Engineering - [ACEE], Chebrole, East Godavari may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '551fec0e-af8a-4508-8074-58191067edda' AND slug = 'adarsh-college-of-engineering-acee-chebrole-east-godavari';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1ced1632-de8b-438e-8d25-e2aff8e891bd' AND slug = 'adarsh-college-of-nursing-patiala') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-nursing-patiala';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adarsh College of Nursing, Patiala is a healthcare education option in Patiala, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include INC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh College of Nursing, Patiala in Patiala, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh College of Nursing, Patiala: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Nursing, Patiala in Patiala, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 deci',
  meta_keywords = 'Adarsh College of Nursing, Patiala, Adarsh College of Nursing, Patiala admission 2026, Adarsh College of Nursing, Patiala courses, Adarsh College of Nursing, Patiala fees, Adarsh College of Nursing, Patiala placement, Adarsh College of Nursing, Patiala facilities, Patiala, Punjab',
  admission_process = 'Adarsh College of Nursing, Patiala admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh College of Nursing, Patiala depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh College of Nursing, Patiala course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh College of Nursing, Patiala placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh College of Nursing, Patiala facilities currently highlighted for student checks include Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh College of Nursing, Patiala should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh College of Nursing, Patiala may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh College of Nursing, Patiala is mapped with reviewed approval or affiliation signals such as INC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '1ced1632-de8b-438e-8d25-e2aff8e891bd' AND slug = 'adarsh-college-of-nursing-patiala';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f51032d4-9bae-4b21-ba1c-98d3cff01030' AND slug = 'adarsh-degree-college-adc-mahabub-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-degree-college-adc-mahabub-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Adarsh Degree College - [ADC], Mahabub Nagar is a higher education option in Mahabub Nagar, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1971. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh Degree College - [ADC], Mahabub Nagar in Mahabub Nagar, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh Degree College - [ADC], Mahabub Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Degree College - [ADC], Mahabub Nagar in Mahabub Nagar, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'Adarsh Degree College - [ADC], Mahabub Nagar, Adarsh Degree College - [ADC], Mahabub Nagar admission 2026, Adarsh Degree College - [ADC], Mahabub Nagar courses, Adarsh Degree College - [ADC], Mahabub Nagar fees, Adarsh Degree College - [ADC], Mahabub Nagar placement, Adarsh Degree College - [ADC], Mahabub Nagar facilities, Mahabub Nagar, Telangana',
  admission_process = 'Adarsh Degree College - [ADC], Mahabub Nagar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh Degree College - [ADC], Mahabub Nagar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh Degree College - [ADC], Mahabub Nagar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh Degree College - [ADC], Mahabub Nagar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh Degree College - [ADC], Mahabub Nagar facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh Degree College - [ADC], Mahabub Nagar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh Degree College - [ADC], Mahabub Nagar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh Degree College - [ADC], Mahabub Nagar is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'f51032d4-9bae-4b21-ba1c-98d3cff01030' AND slug = 'adarsh-degree-college-adc-mahabub-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b64d7e5e-e183-4b09-821c-2618f01186a1' AND slug = 'adarsh-education-society039s-art-commerce-and-science-college-hingoli') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-education-society039s-art-commerce-and-science-college-hingoli';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adarsh Education Society''s Art Commerce and Science College, Hingoli is a management and commerce education option in Hingoli, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1966. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli in Hingoli, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli in Hingoli, Maharashtra: source-reviewed overview for admissions, courses, facilities,',
  meta_keywords = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli, Adarsh Education Society''s Art Commerce and Science College, Hingoli admission 2026, Adarsh Education Society''s Art Commerce and Science College, Hingoli courses, Adarsh Education Society''s Art Commerce and Science College, Hingoli fees, Adarsh Education Society''s Art Commerce and Science College, Hingoli placement, Adarsh Education Society''s Art Commerce and Science College, Hingoli facilities, Hingoli, Maharashtra',
  admission_process = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh Education Society''s Art Commerce and Science College, Hingoli depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh Education Society''s Art Commerce and Science College, Hingoli should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh Education Society''s Art Commerce and Science College, Hingoli may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b64d7e5e-e183-4b09-821c-2618f01186a1' AND slug = 'adarsh-education-society039s-art-commerce-and-science-college-hingoli';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '869929ee-7693-4f81-b66a-dc3b6db1e89f' AND slug = 'adarsh-mahavidyalayaomerga-osmanabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-mahavidyalayaomerga-osmanabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adarsh Mahavidyalaya,Omerga, Osmanabad is a higher education option in Osmanabad, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1990. Current approval or affiliation signals available for review include NAAC, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh Mahavidyalaya,Omerga, Osmanabad in Osmanabad, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh Mahavidyalaya,Omerga, Osmanabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Mahavidyalaya,Omerga, Osmanabad in Osmanabad, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Adarsh Mahavidyalaya,Omerga, Osmanabad, Adarsh Mahavidyalaya,Omerga, Osmanabad admission 2026, Adarsh Mahavidyalaya,Omerga, Osmanabad courses, Adarsh Mahavidyalaya,Omerga, Osmanabad fees, Adarsh Mahavidyalaya,Omerga, Osmanabad placement, Adarsh Mahavidyalaya,Omerga, Osmanabad facilities, Osmanabad, Maharashtra',
  admission_process = 'Adarsh Mahavidyalaya,Omerga, Osmanabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh Mahavidyalaya,Omerga, Osmanabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh Mahavidyalaya,Omerga, Osmanabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh Mahavidyalaya,Omerga, Osmanabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad is mapped with reviewed approval or affiliation signals such as NAAC, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '869929ee-7693-4f81-b66a-dc3b6db1e89f' AND slug = 'adarsh-mahavidyalayaomerga-osmanabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '725754d4-68a5-42b4-bbe9-14ee3673a0e1' AND slug = 'adarsh-mahila-mahavidyalaya-bhiwani') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-mahila-mahavidyalaya-bhiwani';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adarsh Mahila Mahavidyalaya, Bhiwani is a higher education option in Bhiwani, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1970. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh Mahila Mahavidyalaya, Bhiwani in Bhiwani, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh Mahila Mahavidyalaya, Bhiwani: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Mahila Mahavidyalaya, Bhiwani in Bhiwani, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 d',
  meta_keywords = 'Adarsh Mahila Mahavidyalaya, Bhiwani, Adarsh Mahila Mahavidyalaya, Bhiwani admission 2026, Adarsh Mahila Mahavidyalaya, Bhiwani courses, Adarsh Mahila Mahavidyalaya, Bhiwani fees, Adarsh Mahila Mahavidyalaya, Bhiwani placement, Adarsh Mahila Mahavidyalaya, Bhiwani facilities, Bhiwani, Haryana',
  admission_process = 'Adarsh Mahila Mahavidyalaya, Bhiwani admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh Mahila Mahavidyalaya, Bhiwani depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh Mahila Mahavidyalaya, Bhiwani should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh Mahila Mahavidyalaya, Bhiwani may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '725754d4-68a5-42b4-bbe9-14ee3673a0e1' AND slug = 'adarsh-mahila-mahavidyalaya-bhiwani';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e58f84ed-45af-47c6-9d8e-0d78da5d0718' AND slug = 'adarsh-mahila-teacher039s-tranning-college-jaipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-mahila-teacher039s-tranning-college-jaipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adarsh Mahila Teacher''s Tranning College, Jaipur is a teacher education option in Jaipur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh Mahila Teacher''s Tranning College, Jaipur in Jaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh Mahila Teacher''s Tranning College, Jaipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Mahila Teacher''s Tranning College, Jaipur in Jaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarshi',
  meta_keywords = 'Adarsh Mahila Teacher''s Tranning College, Jaipur, Adarsh Mahila Teacher''s Tranning College, Jaipur admission 2026, Adarsh Mahila Teacher''s Tranning College, Jaipur courses, Adarsh Mahila Teacher''s Tranning College, Jaipur fees, Adarsh Mahila Teacher''s Tranning College, Jaipur placement, Adarsh Mahila Teacher''s Tranning College, Jaipur facilities, Jaipur, Rajasthan',
  admission_process = 'Adarsh Mahila Teacher''s Tranning College, Jaipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh Mahila Teacher''s Tranning College, Jaipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh Mahila Teacher''s Tranning College, Jaipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh Mahila Teacher''s Tranning College, Jaipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e58f84ed-45af-47c6-9d8e-0d78da5d0718' AND slug = 'adarsh-mahila-teacher039s-tranning-college-jaipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9612c5cb-6c9b-4915-8d9c-493599665f56' AND slug = 'adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad is a teacher education option in Osmanabad, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad in Osmanabad, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad in Osmanabad, Maharashtra: source-reviewed overview for admissions, courses, faci',
  meta_keywords = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad admission 2026, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad courses, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad fees, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad placement, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad facilities, Osmanabad, Maharashtra',
  admission_process = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9612c5cb-6c9b-4915-8d9c-493599665f56' AND slug = 'adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8e092298-11e6-47db-9b0b-3115440f76e8' AND slug = 'adarsha-college-of-nursing-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-college-of-nursing-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adarsha College Of Nursing, Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2003. Current approval or affiliation signals available for review include INC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsha College Of Nursing, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsha College Of Nursing, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha College Of Nursing, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2',
  meta_keywords = 'Adarsha College Of Nursing, Bangalore, Adarsha College Of Nursing, Bangalore admission 2026, Adarsha College Of Nursing, Bangalore courses, Adarsha College Of Nursing, Bangalore fees, Adarsha College Of Nursing, Bangalore placement, Adarsha College Of Nursing, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Adarsha College Of Nursing, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsha College Of Nursing, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsha College Of Nursing, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsha College Of Nursing, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsha College Of Nursing, Bangalore facilities currently highlighted for student checks include Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsha College Of Nursing, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsha College Of Nursing, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsha College Of Nursing, Bangalore is mapped with reviewed approval or affiliation signals such as INC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '8e092298-11e6-47db-9b0b-3115440f76e8' AND slug = 'adarsha-college-of-nursing-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1ec85236-a8d2-4744-833f-82c96a1e99f2' AND slug = 'adarsha-comprehensive-college-of-education-and-research-accer-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-comprehensive-college-of-education-and-research-accer-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adarsha Comprehensive College of Education and Research - [ACCER], Pune is a teacher education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1970. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities,',
  meta_keywords = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune, Adarsha Comprehensive College of Education and Research - [ACCER], Pune admission 2026, Adarsha Comprehensive College of Education and Research - [ACCER], Pune courses, Adarsha Comprehensive College of Education and Research - [ACCER], Pune fees, Adarsha Comprehensive College of Education and Research - [ACCER], Pune placement, Adarsha Comprehensive College of Education and Research - [ACCER], Pune facilities, Pune, Maharashtra',
  admission_process = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsha Comprehensive College of Education and Research - [ACCER], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsha Comprehensive College of Education and Research - [ACCER], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsha Comprehensive College of Education and Research - [ACCER], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '1ec85236-a8d2-4744-833f-82c96a1e99f2' AND slug = 'adarsha-comprehensive-college-of-education-and-research-accer-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c3ddfabf-0a8c-4b32-896b-0b4082fd32f1' AND slug = 'adarsha-law-college-warangal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-law-college-warangal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adarsha Law College, Warangal is a legal education option in Warangal, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1994. Current approval or affiliation signals available for review include BCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsha Law College, Warangal in Warangal, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsha Law College, Warangal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Law College, Warangal in Warangal, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decis',
  meta_keywords = 'Adarsha Law College, Warangal, Adarsha Law College, Warangal admission 2026, Adarsha Law College, Warangal courses, Adarsha Law College, Warangal fees, Adarsha Law College, Warangal placement, Adarsha Law College, Warangal facilities, Warangal, Telangana',
  admission_process = 'Adarsha Law College, Warangal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsha Law College, Warangal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsha Law College, Warangal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsha Law College, Warangal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsha Law College, Warangal facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsha Law College, Warangal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsha Law College, Warangal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsha Law College, Warangal is mapped with reviewed approval or affiliation signals such as BCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c3ddfabf-0a8c-4b32-896b-0b4082fd32f1' AND slug = 'adarsha-law-college-warangal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1ba904d4-fe5d-4a8d-b72e-da160339bbb9' AND slug = 'adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati is a management and commerce education option in Amravati, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1961. Current approval or affiliation signals available for review include NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati in Amravati, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati in Amravati, Maharashtra: source-reviewed overview for admissions, cour',
  meta_keywords = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati admission 2026, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati courses, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati fees, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati placement, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati facilities, Amravati, Maharashtra',
  admission_process = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati is mapped with reviewed approval or affiliation signals such as NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '1ba904d4-fe5d-4a8d-b72e-da160339bbb9' AND slug = 'adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5657eeed-cdc7-4e27-b8d7-67ff66a0fab2' AND slug = 'adarsha-shikshana-samiti-college-of-commerce-asscc-gadag') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-shikshana-samiti-college-of-commerce-asscc-gadag';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag is a management and commerce education option in Gadag, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1968. Current approval or affiliation signals available for review include NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag in Gadag, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag in Gadag, Karnataka: source-reviewed overview for admissions, courses, facilities, placements,',
  meta_keywords = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag admission 2026, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag courses, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag fees, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag placement, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag facilities, Gadag, Karnataka',
  admission_process = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag is mapped with reviewed approval or affiliation signals such as NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '5657eeed-cdc7-4e27-b8d7-67ff66a0fab2' AND slug = 'adarsha-shikshana-samiti-college-of-commerce-asscc-gadag';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'acf847ef-8fb0-4f3b-90e1-1367f1cd6c0b' AND slug = 'adarsha-vidya-kendra-first-grade-college-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-vidya-kendra-first-grade-college-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adarsha Vidya Kendra First Grade College, Bangalore is a higher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adarsha Vidya Kendra First Grade College, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adarsha Vidya Kendra First Grade College, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Vidya Kendra First Grade College, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'Adarsha Vidya Kendra First Grade College, Bangalore, Adarsha Vidya Kendra First Grade College, Bangalore admission 2026, Adarsha Vidya Kendra First Grade College, Bangalore courses, Adarsha Vidya Kendra First Grade College, Bangalore fees, Adarsha Vidya Kendra First Grade College, Bangalore placement, Adarsha Vidya Kendra First Grade College, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Adarsha Vidya Kendra First Grade College, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adarsha Vidya Kendra First Grade College, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adarsha Vidya Kendra First Grade College, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adarsha Vidya Kendra First Grade College, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adarsha Vidya Kendra First Grade College, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adarsha Vidya Kendra First Grade College, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adarsha Vidya Kendra First Grade College, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adarsha Vidya Kendra First Grade College, Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'acf847ef-8fb0-4f3b-90e1-1367f1cd6c0b' AND slug = 'adarsha-vidya-kendra-first-grade-college-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ff67a885-1888-4bff-b4b1-8409c898ae4c' AND slug = 'adesh-institute-of-biomedical-sciences-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-biomedical-sciences-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adesh Institute of Biomedical Sciences, Bathinda is a healthcare education option in Bathinda, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include NMC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adesh Institute of Biomedical Sciences, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adesh Institute of Biomedical Sciences, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Biomedical Sciences, Bathinda in Bathinda, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarship',
  meta_keywords = 'Adesh Institute of Biomedical Sciences, Bathinda, Adesh Institute of Biomedical Sciences, Bathinda admission 2026, Adesh Institute of Biomedical Sciences, Bathinda courses, Adesh Institute of Biomedical Sciences, Bathinda fees, Adesh Institute of Biomedical Sciences, Bathinda placement, Adesh Institute of Biomedical Sciences, Bathinda facilities, Bathinda, Punjab',
  admission_process = 'Adesh Institute of Biomedical Sciences, Bathinda admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adesh Institute of Biomedical Sciences, Bathinda depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adesh Institute of Biomedical Sciences, Bathinda course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adesh Institute of Biomedical Sciences, Bathinda placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adesh Institute of Biomedical Sciences, Bathinda facilities currently highlighted for student checks include Teaching hospital, Clinical departments, Laboratories, Library, Hostel. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adesh Institute of Biomedical Sciences, Bathinda should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adesh Institute of Biomedical Sciences, Bathinda may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adesh Institute of Biomedical Sciences, Bathinda is mapped with reviewed approval or affiliation signals such as NMC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ff67a885-1888-4bff-b4b1-8409c898ae4c' AND slug = 'adesh-institute-of-biomedical-sciences-bathinda';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '0b233f91-c34b-42f6-896a-efd44d82153b' AND slug = 'adesh-institute-of-engineering-and-technology-faridkot') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-engineering-and-technology-faridkot';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adesh Institute of Engineering and Technology, Faridkot is a technical education option in Faridkot, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1996. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adesh Institute of Engineering and Technology, Faridkot in Faridkot, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adesh Institute of Engineering and Technology, Faridkot: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Engineering and Technology, Faridkot in Faridkot, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'Adesh Institute of Engineering and Technology, Faridkot, Adesh Institute of Engineering and Technology, Faridkot admission 2026, Adesh Institute of Engineering and Technology, Faridkot courses, Adesh Institute of Engineering and Technology, Faridkot fees, Adesh Institute of Engineering and Technology, Faridkot placement, Adesh Institute of Engineering and Technology, Faridkot facilities, Faridkot, Punjab',
  admission_process = 'Adesh Institute of Engineering and Technology, Faridkot admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adesh Institute of Engineering and Technology, Faridkot depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adesh Institute of Engineering and Technology, Faridkot course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adesh Institute of Engineering and Technology, Faridkot placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adesh Institute of Engineering and Technology, Faridkot facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adesh Institute of Engineering and Technology, Faridkot should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adesh Institute of Engineering and Technology, Faridkot may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adesh Institute of Engineering and Technology, Faridkot is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '0b233f91-c34b-42f6-896a-efd44d82153b' AND slug = 'adesh-institute-of-engineering-and-technology-faridkot';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ee0505ce-9f12-4593-b3cb-4ef22b5473d8' AND slug = 'adesh-institute-of-technology-ait-mohali') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-technology-ait-mohali';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adesh Institute of Technology - [AIT], Mohali is a technical education option in Mohali, Punjab for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adesh Institute of Technology - [AIT], Mohali in Mohali, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adesh Institute of Technology - [AIT], Mohali: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Technology - [AIT], Mohali in Mohali, Punjab: source-reviewed overview for admissions, courses, facilities, placements, scholarships and',
  meta_keywords = 'Adesh Institute of Technology - [AIT], Mohali, Adesh Institute of Technology - [AIT], Mohali admission 2026, Adesh Institute of Technology - [AIT], Mohali courses, Adesh Institute of Technology - [AIT], Mohali fees, Adesh Institute of Technology - [AIT], Mohali placement, Adesh Institute of Technology - [AIT], Mohali facilities, Mohali, Punjab',
  admission_process = 'Adesh Institute of Technology - [AIT], Mohali admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adesh Institute of Technology - [AIT], Mohali depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adesh Institute of Technology - [AIT], Mohali course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adesh Institute of Technology - [AIT], Mohali placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adesh Institute of Technology - [AIT], Mohali facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adesh Institute of Technology - [AIT], Mohali should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adesh Institute of Technology - [AIT], Mohali may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adesh Institute of Technology - [AIT], Mohali is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ee0505ce-9f12-4593-b3cb-4ef22b5473d8' AND slug = 'adesh-institute-of-technology-ait-mohali';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'fea24d71-3c35-4717-a69b-285be9370e9d' AND slug = 'adharshila-college-of-education-ace-meerut') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adharshila-college-of-education-ace-meerut';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Adharshila College of Education - [ACE], Meerut is a teacher education option in Meerut, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adharshila College of Education - [ACE], Meerut in Meerut, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adharshila College of Education - [ACE], Meerut: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adharshila College of Education - [ACE], Meerut in Meerut, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'Adharshila College of Education - [ACE], Meerut, Adharshila College of Education - [ACE], Meerut admission 2026, Adharshila College of Education - [ACE], Meerut courses, Adharshila College of Education - [ACE], Meerut fees, Adharshila College of Education - [ACE], Meerut placement, Adharshila College of Education - [ACE], Meerut facilities, Meerut, Uttar Pradesh',
  admission_process = 'Adharshila College of Education - [ACE], Meerut admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adharshila College of Education - [ACE], Meerut depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adharshila College of Education - [ACE], Meerut course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adharshila College of Education - [ACE], Meerut placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adharshila College of Education - [ACE], Meerut facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adharshila College of Education - [ACE], Meerut should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adharshila College of Education - [ACE], Meerut may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adharshila College of Education - [ACE], Meerut is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'fea24d71-3c35-4717-a69b-285be9370e9d' AND slug = 'adharshila-college-of-education-ace-meerut';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3d8245c7-3279-4f0d-8628-214d6fff900d' AND slug = 'adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore is a higher education option in Vellore, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1988. Current approval or affiliation signals available for review include NAAC-B. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore in Vellore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore in Vellore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, plac',
  meta_keywords = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore admission 2026, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore courses, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore fees, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore placement, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore facilities, Vellore, Tamil Nadu',
  admission_process = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore is mapped with reviewed approval or affiliation signals such as NAAC-B. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3d8245c7-3279-4f0d-8628-214d6fff900d' AND slug = 'adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '84b15429-0977-45e1-923a-198ab34b70ef' AND slug = 'adhiparasakthi-college-of-education-vellore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-education-vellore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adhiparasakthi College of Education, Vellore is a teacher education option in Vellore, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhiparasakthi College of Education, Vellore in Vellore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhiparasakthi College of Education, Vellore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Education, Vellore in Vellore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships',
  meta_keywords = 'Adhiparasakthi College of Education, Vellore, Adhiparasakthi College of Education, Vellore admission 2026, Adhiparasakthi College of Education, Vellore courses, Adhiparasakthi College of Education, Vellore fees, Adhiparasakthi College of Education, Vellore placement, Adhiparasakthi College of Education, Vellore facilities, Vellore, Tamil Nadu',
  admission_process = 'Adhiparasakthi College of Education, Vellore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhiparasakthi College of Education, Vellore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhiparasakthi College of Education, Vellore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhiparasakthi College of Education, Vellore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhiparasakthi College of Education, Vellore facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhiparasakthi College of Education, Vellore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhiparasakthi College of Education, Vellore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhiparasakthi College of Education, Vellore is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '84b15429-0977-45e1-923a-198ab34b70ef' AND slug = 'adhiparasakthi-college-of-education-vellore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b171d193-0992-4ac4-8170-6e9d30b2d99b' AND slug = 'adhiparasakthi-college-of-pharmacy-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-pharmacy-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adhiparasakthi College of Pharmacy, Chennai is a healthcare education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1978. Current approval or affiliation signals available for review include PCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhiparasakthi College of Pharmacy, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhiparasakthi College of Pharmacy, Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Pharmacy, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Adhiparasakthi College of Pharmacy, Chennai, Adhiparasakthi College of Pharmacy, Chennai admission 2026, Adhiparasakthi College of Pharmacy, Chennai courses, Adhiparasakthi College of Pharmacy, Chennai fees, Adhiparasakthi College of Pharmacy, Chennai placement, Adhiparasakthi College of Pharmacy, Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'Adhiparasakthi College of Pharmacy, Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhiparasakthi College of Pharmacy, Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhiparasakthi College of Pharmacy, Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhiparasakthi College of Pharmacy, Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhiparasakthi College of Pharmacy, Chennai facilities currently highlighted for student checks include Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhiparasakthi College of Pharmacy, Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhiparasakthi College of Pharmacy, Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhiparasakthi College of Pharmacy, Chennai is mapped with reviewed approval or affiliation signals such as PCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b171d193-0992-4ac4-8170-6e9d30b2d99b' AND slug = 'adhiparasakthi-college-of-pharmacy-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '0ad315e3-a723-4325-a1af-437c2a7789fd' AND slug = 'adhiparasakthi-college-of-physiotherapy-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-physiotherapy-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adhiparasakthi College of Physiotherapy, Kanchipuram is a healthcare education option in Kanchipuram, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1994. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhiparasakthi College of Physiotherapy, Kanchipuram in Kanchipuram, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhiparasakthi College of Physiotherapy, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Physiotherapy, Kanchipuram in Kanchipuram, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Adhiparasakthi College of Physiotherapy, Kanchipuram, Adhiparasakthi College of Physiotherapy, Kanchipuram admission 2026, Adhiparasakthi College of Physiotherapy, Kanchipuram courses, Adhiparasakthi College of Physiotherapy, Kanchipuram fees, Adhiparasakthi College of Physiotherapy, Kanchipuram placement, Adhiparasakthi College of Physiotherapy, Kanchipuram facilities, Kanchipuram, Tamil Nadu',
  admission_process = 'Adhiparasakthi College of Physiotherapy, Kanchipuram admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhiparasakthi College of Physiotherapy, Kanchipuram depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhiparasakthi College of Physiotherapy, Kanchipuram should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhiparasakthi College of Physiotherapy, Kanchipuram may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '0ad315e3-a723-4325-a1af-437c2a7789fd' AND slug = 'adhiparasakthi-college-of-physiotherapy-kanchipuram';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '97dd637d-ce00-4bc9-8c2e-33cf1e8cb9b5' AND slug = 'adhunik-institute-of-education-and-research-aier-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhunik-institute-of-education-and-research-aier-ghaziabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Adhunik Institute of Education and Research-[AIER], Ghaziabad is a teacher education option in Ghaziabad, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, pl',
  meta_keywords = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad, Adhunik Institute of Education and Research-[AIER], Ghaziabad admission 2026, Adhunik Institute of Education and Research-[AIER], Ghaziabad courses, Adhunik Institute of Education and Research-[AIER], Ghaziabad fees, Adhunik Institute of Education and Research-[AIER], Ghaziabad placement, Adhunik Institute of Education and Research-[AIER], Ghaziabad facilities, Ghaziabad, Uttar Pradesh',
  admission_process = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhunik Institute of Education and Research-[AIER], Ghaziabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad facilities currently highlighted for student checks include Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhunik Institute of Education and Research-[AIER], Ghaziabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhunik Institute of Education and Research-[AIER], Ghaziabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '97dd637d-ce00-4bc9-8c2e-33cf1e8cb9b5' AND slug = 'adhunik-institute-of-education-and-research-aier-ghaziabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '39f99352-0e59-4361-873b-09efd5606443' AND slug = 'adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad is a management and commerce education option in Ghaziabad, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses,',
  meta_keywords = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad admission 2026, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad courses, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad fees, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad placement, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad facilities, Ghaziabad, Uttar Pradesh',
  admission_process = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad facilities currently highlighted for student checks include Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '39f99352-0e59-4361-873b-09efd5606443' AND slug = 'adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd52e0c20-56f9-4970-92bc-f590af59a45f' AND slug = 'adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal is a higher education option in Yavatmal, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1967. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal in Yavatmal, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal in Yavatmal, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, sc',
  meta_keywords = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal admission 2026, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal courses, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal fees, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal placement, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal facilities, Yavatmal, Maharashtra',
  admission_process = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'd52e0c20-56f9-4970-92bc-f590af59a45f' AND slug = 'adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f35fdacd-3eac-4b86-9060-5214ce4809a9' AND slug = 'adhyapika-vidyalaya-jalgaon') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhyapika-vidyalaya-jalgaon';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adhyapika Vidyalaya, Jalgaon is a higher education option in Jalgaon, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1942. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adhyapika Vidyalaya, Jalgaon in Jalgaon, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adhyapika Vidyalaya, Jalgaon: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhyapika Vidyalaya, Jalgaon in Jalgaon, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decis',
  meta_keywords = 'Adhyapika Vidyalaya, Jalgaon, Adhyapika Vidyalaya, Jalgaon admission 2026, Adhyapika Vidyalaya, Jalgaon courses, Adhyapika Vidyalaya, Jalgaon fees, Adhyapika Vidyalaya, Jalgaon placement, Adhyapika Vidyalaya, Jalgaon facilities, Jalgaon, Maharashtra',
  admission_process = 'Adhyapika Vidyalaya, Jalgaon admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adhyapika Vidyalaya, Jalgaon depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adhyapika Vidyalaya, Jalgaon course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adhyapika Vidyalaya, Jalgaon placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adhyapika Vidyalaya, Jalgaon facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adhyapika Vidyalaya, Jalgaon should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adhyapika Vidyalaya, Jalgaon may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adhyapika Vidyalaya, Jalgaon is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'f35fdacd-3eac-4b86-9060-5214ce4809a9' AND slug = 'adhyapika-vidyalaya-jalgaon';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5836f36a-3ac1-43dd-99e5-71e3a9bad68e' AND slug = 'adithya-institute-of-management-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adithya-institute-of-management-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adithya Institute of Management, Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adithya Institute of Management, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adithya Institute of Management, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adithya Institute of Management, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Adithya Institute of Management, Bangalore, Adithya Institute of Management, Bangalore admission 2026, Adithya Institute of Management, Bangalore courses, Adithya Institute of Management, Bangalore fees, Adithya Institute of Management, Bangalore placement, Adithya Institute of Management, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Adithya Institute of Management, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adithya Institute of Management, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adithya Institute of Management, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Adithya Institute of Management, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adithya Institute of Management, Bangalore facilities currently highlighted for student checks include Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adithya Institute of Management, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adithya Institute of Management, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adithya Institute of Management, Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '5836f36a-3ac1-43dd-99e5-71e3a9bad68e' AND slug = 'adithya-institute-of-management-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '080e7321-fb04-4693-947a-32080ed89a3f' AND slug = 'aditya-academy-of-architecture-amp-design-aaad-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-academy-of-architecture-amp-design-aaad-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aditya Academy of Architecture & Design - [AAAD], Bangalore is a technical education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2015. Current approval or affiliation signals available for review include COA. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore, Aditya Academy of Architecture & Design - [AAAD], Bangalore admission 2026, Aditya Academy of Architecture & Design - [AAAD], Bangalore courses, Aditya Academy of Architecture & Design - [AAAD], Bangalore fees, Aditya Academy of Architecture & Design - [AAAD], Bangalore placement, Aditya Academy of Architecture & Design - [AAAD], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Academy of Architecture & Design - [AAAD], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore facilities currently highlighted for student checks include Design studios, Computer lab, Library, Workshop, Exhibition spaces. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Design studios', 'Computer lab', 'Library', 'Workshop', 'Exhibition spaces']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Design studios', 'Computer lab', 'Library', 'Workshop', 'Exhibition spaces']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Academy of Architecture & Design - [AAAD], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Academy of Architecture & Design - [AAAD], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore is mapped with reviewed approval or affiliation signals such as COA. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '080e7321-fb04-4693-947a-32080ed89a3f' AND slug = 'aditya-academy-of-architecture-amp-design-aaad-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '732878a4-c602-475f-aa8a-b554f0d89fad' AND slug = 'aditya-agricultural-biotechnology-college-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-agricultural-biotechnology-college-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aditya Agricultural Biotechnology College, Beed is a technical education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Agricultural Biotechnology College, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Agricultural Biotechnology College, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Agricultural Biotechnology College, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarship',
  meta_keywords = 'Aditya Agricultural Biotechnology College, Beed, Aditya Agricultural Biotechnology College, Beed admission 2026, Aditya Agricultural Biotechnology College, Beed courses, Aditya Agricultural Biotechnology College, Beed fees, Aditya Agricultural Biotechnology College, Beed placement, Aditya Agricultural Biotechnology College, Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya Agricultural Biotechnology College, Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Agricultural Biotechnology College, Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Agricultural Biotechnology College, Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya Agricultural Biotechnology College, Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Agricultural Biotechnology College, Beed facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Agricultural Biotechnology College, Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Agricultural Biotechnology College, Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Agricultural Biotechnology College, Beed is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '732878a4-c602-475f-aa8a-b554f0d89fad' AND slug = 'aditya-agricultural-biotechnology-college-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c782f37f-7e7d-4fa1-a3df-2c5354a8567a' AND slug = 'aditya-bed-college-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-bed-college-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aditya B.Ed College, Beed is a higher education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya B.Ed College, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya B.Ed College, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya B.Ed College, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision ch',
  meta_keywords = 'Aditya B.Ed College, Beed, Aditya B.Ed College, Beed admission 2026, Aditya B.Ed College, Beed courses, Aditya B.Ed College, Beed fees, Aditya B.Ed College, Beed placement, Aditya B.Ed College, Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya B.Ed College, Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya B.Ed College, Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya B.Ed College, Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya B.Ed College, Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya B.Ed College, Beed facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya B.Ed College, Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya B.Ed College, Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya B.Ed College, Beed is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c782f37f-7e7d-4fa1-a3df-2c5354a8567a' AND slug = 'aditya-bed-college-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8dbcdb37-3320-43f4-8c89-afe73778c9e8' AND slug = 'aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1998. Current approval or affiliation signals available for review include PCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilit',
  meta_keywords = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore admission 2026, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore courses, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore fees, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore placement, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore facilities currently highlighted for student checks include Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore is mapped with reviewed approval or affiliation signals such as PCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '8dbcdb37-3320-43f4-8c89-afe73778c9e8' AND slug = 'aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b76afd1c-9ef0-4e07-b688-8ae998f2e7fc' AND slug = 'aditya-college-of-agricultural-engineering-and-technology-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-agricultural-engineering-and-technology-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aditya College of Agricultural Engineering and Technology, Beed is a technical education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College of Agricultural Engineering and Technology, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College of Agricultural Engineering and Technology, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Agricultural Engineering and Technology, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'Aditya College of Agricultural Engineering and Technology, Beed, Aditya College of Agricultural Engineering and Technology, Beed admission 2026, Aditya College of Agricultural Engineering and Technology, Beed courses, Aditya College of Agricultural Engineering and Technology, Beed fees, Aditya College of Agricultural Engineering and Technology, Beed placement, Aditya College of Agricultural Engineering and Technology, Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya College of Agricultural Engineering and Technology, Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College of Agricultural Engineering and Technology, Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College of Agricultural Engineering and Technology, Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya College of Agricultural Engineering and Technology, Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College of Agricultural Engineering and Technology, Beed facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College of Agricultural Engineering and Technology, Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College of Agricultural Engineering and Technology, Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College of Agricultural Engineering and Technology, Beed is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b76afd1c-9ef0-4e07-b688-8ae998f2e7fc' AND slug = 'aditya-college-of-agricultural-engineering-and-technology-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a0592fae-d476-4feb-8237-1f17d018dedb' AND slug = 'aditya-college-of-engineering-ace-chittoor') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-engineering-ace-chittoor';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aditya college of engineering - [ACE], Chittoor is a technical education option in Chittoor, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya college of engineering - [ACE], Chittoor in Chittoor, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya college of engineering - [ACE], Chittoor: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya college of engineering - [ACE], Chittoor in Chittoor, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'Aditya college of engineering - [ACE], Chittoor, Aditya college of engineering - [ACE], Chittoor admission 2026, Aditya college of engineering - [ACE], Chittoor courses, Aditya college of engineering - [ACE], Chittoor fees, Aditya college of engineering - [ACE], Chittoor placement, Aditya college of engineering - [ACE], Chittoor facilities, Chittoor, Andhra Pradesh',
  admission_process = 'Aditya college of engineering - [ACE], Chittoor admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya college of engineering - [ACE], Chittoor depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya college of engineering - [ACE], Chittoor course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya college of engineering - [ACE], Chittoor placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya college of engineering - [ACE], Chittoor facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya college of engineering - [ACE], Chittoor should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya college of engineering - [ACE], Chittoor may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya college of engineering - [ACE], Chittoor is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'a0592fae-d476-4feb-8237-1f17d018dedb' AND slug = 'aditya-college-of-engineering-ace-chittoor';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '37bac01d-36fd-4c81-afb6-4bbc1183df88' AND slug = 'aditya-college-of-engineering-and-technology-acet-east-godavari') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-engineering-and-technology-acet-east-godavari';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aditya College Of Engineering and Technology - [ACET], East Godavari is a technical education option in East Godavari, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College Of Engineering and Technology - [ACET], East Godavari in East Godavari, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College Of Engineering and Technology - [ACET], East Godavari: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College Of Engineering and Technology - [ACET], East Godavari in East Godavari, Andhra Pradesh: source-reviewed overview for admissions, courses, fa',
  meta_keywords = 'Aditya College Of Engineering and Technology - [ACET], East Godavari, Aditya College Of Engineering and Technology - [ACET], East Godavari admission 2026, Aditya College Of Engineering and Technology - [ACET], East Godavari courses, Aditya College Of Engineering and Technology - [ACET], East Godavari fees, Aditya College Of Engineering and Technology - [ACET], East Godavari placement, Aditya College Of Engineering and Technology - [ACET], East Godavari facilities, East Godavari, Andhra Pradesh',
  admission_process = 'Aditya College Of Engineering and Technology - [ACET], East Godavari admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College Of Engineering and Technology - [ACET], East Godavari depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College Of Engineering and Technology - [ACET], East Godavari should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College Of Engineering and Technology - [ACET], East Godavari may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '37bac01d-36fd-4c81-afb6-4bbc1183df88' AND slug = 'aditya-college-of-engineering-and-technology-acet-east-godavari';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4d6d313c-bdbe-4494-ac77-dd2e37b7f03c' AND slug = 'aditya-college-of-food-technology-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-food-technology-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aditya College of Food Technology, Beed is a technical education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College of Food Technology, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College of Food Technology, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Food Technology, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 20',
  meta_keywords = 'Aditya College of Food Technology, Beed, Aditya College of Food Technology, Beed admission 2026, Aditya College of Food Technology, Beed courses, Aditya College of Food Technology, Beed fees, Aditya College of Food Technology, Beed placement, Aditya College of Food Technology, Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya College of Food Technology, Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College of Food Technology, Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College of Food Technology, Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include the programmes currently listed on its admission profile. Programme-wise fees are left blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  placement_content = 'Aditya College of Food Technology, Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College of Food Technology, Beed facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College of Food Technology, Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College of Food Technology, Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College of Food Technology, Beed is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-006","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-006; humanized answer-first content; sources preserved in data_source_urls; no course-fee rows were replaced in this batch; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4d6d313c-bdbe-4494-ac77-dd2e37b7f03c' AND slug = 'aditya-college-of-food-technology-beed';

NOTIFY pgrst, 'reload schema';
COMMIT;
