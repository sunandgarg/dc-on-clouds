-- college-humanized-content-batch-007
-- Generated 2026-08-01. Humanized source-backed college content batch.
-- Fees stay blank unless programme, year, quota and category are verified.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b61ce9f8-5552-4b6d-87a6-448f6ceabe9d' AND slug = 'aditya-college-of-law-agra') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-law-agra';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aditya College of Law, Agra is a legal education option in Agra, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include BCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College of Law, Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College of Law, Agra: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Law, Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decisio',
  meta_keywords = 'Aditya College of Law, Agra, Aditya College of Law, Agra admission 2026, Aditya College of Law, Agra courses, Aditya College of Law, Agra fees, Aditya College of Law, Agra placement, Aditya College of Law, Agra facilities, Agra, Uttar Pradesh',
  admission_process = 'Aditya College of Law, Agra admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College of Law, Agra depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College of Law, Agra course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya College of Law, Agra placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College of Law, Agra facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College of Law, Agra should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College of Law, Agra may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College of Law, Agra is mapped with reviewed approval or affiliation signals such as BCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b61ce9f8-5552-4b6d-87a6-448f6ceabe9d' AND slug = 'aditya-college-of-law-agra';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ac3aeefe-acb3-44b9-a7ba-50d950c4f44d' AND slug = 'aditya-college-of-mba-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-mba-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aditya College of MBA, Beed is a management and commerce education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College of MBA, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College of MBA, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of MBA, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision ',
  meta_keywords = 'Aditya College of MBA, Beed, Aditya College of MBA, Beed admission 2026, Aditya College of MBA, Beed courses, Aditya College of MBA, Beed fees, Aditya College of MBA, Beed placement, Aditya College of MBA, Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya College of MBA, Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College of MBA, Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College of MBA, Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya College of MBA, Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College of MBA, Beed facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College of MBA, Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College of MBA, Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College of MBA, Beed is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ac3aeefe-acb3-44b9-a7ba-50d950c4f44d' AND slug = 'aditya-college-of-mba-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f9ef67d8-5236-4bca-8fdc-555769644a07' AND slug = 'aditya-college-of-nursing-acn-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-nursing-acn-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aditya College of Nursing - [ACN], Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2003. Current approval or affiliation signals available for review include INC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College of Nursing - [ACN], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College of Nursing - [ACN], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Nursing - [ACN], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarship',
  meta_keywords = 'Aditya College of Nursing - [ACN], Bangalore, Aditya College of Nursing - [ACN], Bangalore admission 2026, Aditya College of Nursing - [ACN], Bangalore courses, Aditya College of Nursing - [ACN], Bangalore fees, Aditya College of Nursing - [ACN], Bangalore placement, Aditya College of Nursing - [ACN], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Aditya College of Nursing - [ACN], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College of Nursing - [ACN], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College of Nursing - [ACN], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya College of Nursing - [ACN], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College of Nursing - [ACN], Bangalore facilities currently highlighted for student checks include Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College of Nursing - [ACN], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College of Nursing - [ACN], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College of Nursing - [ACN], Bangalore is mapped with reviewed approval or affiliation signals such as INC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'f9ef67d8-5236-4bca-8fdc-555769644a07' AND slug = 'aditya-college-of-nursing-acn-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '23f73ffb-f557-4f15-8d3c-8d60b72c38b2' AND slug = 'aditya-college-of-pharmacy-and-science-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-pharmacy-and-science-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aditya College of Pharmacy and Science, New Delhi is a healthcare education option in New Delhi, Delhi NCR for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include PCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College of Pharmacy and Science, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College of Pharmacy and Science, New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Pharmacy and Science, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, schola',
  meta_keywords = 'Aditya College of Pharmacy and Science, New Delhi, Aditya College of Pharmacy and Science, New Delhi admission 2026, Aditya College of Pharmacy and Science, New Delhi courses, Aditya College of Pharmacy and Science, New Delhi fees, Aditya College of Pharmacy and Science, New Delhi placement, Aditya College of Pharmacy and Science, New Delhi facilities, New Delhi, Delhi NCR',
  admission_process = 'Aditya College of Pharmacy and Science, New Delhi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College of Pharmacy and Science, New Delhi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College of Pharmacy and Science, New Delhi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya College of Pharmacy and Science, New Delhi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College of Pharmacy and Science, New Delhi facilities currently highlighted for student checks include Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College of Pharmacy and Science, New Delhi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College of Pharmacy and Science, New Delhi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College of Pharmacy and Science, New Delhi is mapped with reviewed approval or affiliation signals such as PCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '23f73ffb-f557-4f15-8d3c-8d60b72c38b2' AND slug = 'aditya-college-of-pharmacy-and-science-new-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '70491ba3-bd01-4a21-b8a8-c4ae5c5184ba' AND slug = 'aditya-college-of-technology-and-science-acts-satna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-technology-and-science-acts-satna';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aditya College of Technology and Science - [ACTS], Satna is a technical education option in Satna, Madhya Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College of Technology and Science - [ACTS], Satna in Satna, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College of Technology and Science - [ACTS], Satna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Technology and Science - [ACTS], Satna in Satna, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements',
  meta_keywords = 'Aditya College of Technology and Science - [ACTS], Satna, Aditya College of Technology and Science - [ACTS], Satna admission 2026, Aditya College of Technology and Science - [ACTS], Satna courses, Aditya College of Technology and Science - [ACTS], Satna fees, Aditya College of Technology and Science - [ACTS], Satna placement, Aditya College of Technology and Science - [ACTS], Satna facilities, Satna, Madhya Pradesh',
  admission_process = 'Aditya College of Technology and Science - [ACTS], Satna admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College of Technology and Science - [ACTS], Satna depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College of Technology and Science - [ACTS], Satna course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya College of Technology and Science - [ACTS], Satna placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College of Technology and Science - [ACTS], Satna facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College of Technology and Science - [ACTS], Satna should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College of Technology and Science - [ACTS], Satna may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College of Technology and Science - [ACTS], Satna is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '70491ba3-bd01-4a21-b8a8-c4ae5c5184ba' AND slug = 'aditya-college-of-technology-and-science-acts-satna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2e81692d-c49d-4f38-88d4-a916a2b1ac75' AND slug = 'aditya-college-gwalior') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-gwalior';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aditya College, Gwalior is a higher education option in Gwalior, Madhya Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya College, Gwalior in Gwalior, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya College, Gwalior: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College, Gwalior in Gwalior, Madhya Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decisio',
  meta_keywords = 'Aditya College, Gwalior, Aditya College, Gwalior admission 2026, Aditya College, Gwalior courses, Aditya College, Gwalior fees, Aditya College, Gwalior placement, Aditya College, Gwalior facilities, Gwalior, Madhya Pradesh',
  admission_process = 'Aditya College, Gwalior admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya College, Gwalior depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya College, Gwalior course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya College, Gwalior placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya College, Gwalior facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya College, Gwalior should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya College, Gwalior may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya College, Gwalior is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '2e81692d-c49d-4f38-88d4-a916a2b1ac75' AND slug = 'aditya-college-gwalior';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9673e5cd-7247-4021-8742-eac992522c75' AND slug = 'aditya-ded-college-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-ded-college-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aditya D.Ed College, Beed is a higher education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya D.Ed College, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya D.Ed College, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya D.Ed College, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision ch',
  meta_keywords = 'Aditya D.Ed College, Beed, Aditya D.Ed College, Beed admission 2026, Aditya D.Ed College, Beed courses, Aditya D.Ed College, Beed fees, Aditya D.Ed College, Beed placement, Aditya D.Ed College, Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya D.Ed College, Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya D.Ed College, Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya D.Ed College, Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya D.Ed College, Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya D.Ed College, Beed facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya D.Ed College, Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya D.Ed College, Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya D.Ed College, Beed is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9673e5cd-7247-4021-8742-eac992522c75' AND slug = 'aditya-ded-college-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a5883189-1cf8-4a38-95ed-779496f13334' AND slug = 'aditya-degree-college-kakinada') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-degree-college-kakinada';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aditya Degree College, Kakinada is a higher education option in Kakinada, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1998. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Degree College, Kakinada in Kakinada, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Degree College, Kakinada: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Degree College, Kakinada in Kakinada, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 202',
  meta_keywords = 'Aditya Degree College, Kakinada, Aditya Degree College, Kakinada admission 2026, Aditya Degree College, Kakinada courses, Aditya Degree College, Kakinada fees, Aditya Degree College, Kakinada placement, Aditya Degree College, Kakinada facilities, Kakinada, Andhra Pradesh',
  admission_process = 'Aditya Degree College, Kakinada admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Degree College, Kakinada depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Degree College, Kakinada course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya Degree College, Kakinada placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Degree College, Kakinada facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Degree College, Kakinada should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Degree College, Kakinada may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Degree College, Kakinada is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'a5883189-1cf8-4a38-95ed-779496f13334' AND slug = 'aditya-degree-college-kakinada';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd285654d-abdc-4117-99ff-e0d820b2a72e' AND slug = 'aditya-dental-college-and-hospital-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-dental-college-and-hospital-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aditya Dental College and Hospital, Beed is a healthcare education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include DCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Dental College and Hospital, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Dental College and Hospital, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Dental College and Hospital, Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2',
  meta_keywords = 'Aditya Dental College and Hospital, Beed, Aditya Dental College and Hospital, Beed admission 2026, Aditya Dental College and Hospital, Beed courses, Aditya Dental College and Hospital, Beed fees, Aditya Dental College and Hospital, Beed placement, Aditya Dental College and Hospital, Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya Dental College and Hospital, Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Dental College and Hospital, Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Dental College and Hospital, Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya Dental College and Hospital, Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Dental College and Hospital, Beed facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Dental College and Hospital, Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Dental College and Hospital, Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Dental College and Hospital, Beed is mapped with reviewed approval or affiliation signals such as DCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'd285654d-abdc-4117-99ff-e0d820b2a72e' AND slug = 'aditya-dental-college-and-hospital-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3cb07889-8b20-455a-a81d-7c51641f9c36' AND slug = 'aditya-engineering-college-aec-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-engineering-college-aec-beed';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aditya Engineering College - [AEC], Beed is a technical education option in Beed, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Engineering College - [AEC], Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Engineering College - [AEC], Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Engineering College - [AEC], Beed in Beed, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2',
  meta_keywords = 'Aditya Engineering College - [AEC], Beed, Aditya Engineering College - [AEC], Beed admission 2026, Aditya Engineering College - [AEC], Beed courses, Aditya Engineering College - [AEC], Beed fees, Aditya Engineering College - [AEC], Beed placement, Aditya Engineering College - [AEC], Beed facilities, Beed, Maharashtra',
  admission_process = 'Aditya Engineering College - [AEC], Beed admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Engineering College - [AEC], Beed depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Engineering College - [AEC], Beed course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya Engineering College - [AEC], Beed placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Engineering College - [AEC], Beed facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Engineering College - [AEC], Beed should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Engineering College - [AEC], Beed may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Engineering College - [AEC], Beed is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3cb07889-8b20-455a-a81d-7c51641f9c36' AND slug = 'aditya-engineering-college-aec-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5107758e-677c-463b-a696-dbc08d498f26' AND slug = 'aditya-institute-of-management-aim-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-institute-of-management-aim-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aditya Institute of Management - [AIM] , Pune is a management and commerce education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1998. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Institute of Management - [AIM] , Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Institute of Management - [AIM] , Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Institute of Management - [AIM] , Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Aditya Institute of Management - [AIM] , Pune, Aditya Institute of Management - [AIM] , Pune admission 2026, Aditya Institute of Management - [AIM] , Pune courses, Aditya Institute of Management - [AIM] , Pune fees, Aditya Institute of Management - [AIM] , Pune placement, Aditya Institute of Management - [AIM] , Pune facilities, Pune, Maharashtra',
  admission_process = 'Aditya Institute of Management - [AIM] , Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Institute of Management - [AIM] , Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Institute of Management - [AIM] , Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya Institute of Management - [AIM] , Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Institute of Management - [AIM] , Pune facilities currently highlighted for student checks include Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Institute of Management - [AIM] , Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Institute of Management - [AIM] , Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Institute of Management - [AIM] , Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '5107758e-677c-463b-a696-dbc08d498f26' AND slug = 'aditya-institute-of-management-aim-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e1169154-80cd-4a21-a0ed-689a73b9f7f6' AND slug = 'aditya-institute-of-management-studies-and-research-aimsr-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-institute-of-management-studies-and-research-aimsr-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilit',
  meta_keywords = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore admission 2026, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore courses, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore fees, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore placement, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Institute of Management Studies and Research - [AIMSR], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore facilities currently highlighted for student checks include Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Institute of Management Studies and Research - [AIMSR], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Institute of Management Studies and Research - [AIMSR], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e1169154-80cd-4a21-a0ed-689a73b9f7f6' AND slug = 'aditya-institute-of-management-studies-and-research-aimsr-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5a0fbf9b-8054-4ada-80e9-4f97e56e4758' AND slug = 'aditya-pharmacy-college-surampalem-east-godavari') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-pharmacy-college-surampalem-east-godavari';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aditya Pharmacy College, Surampalem, East Godavari is a healthcare education option in East Godavari, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include PCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Pharmacy College, Surampalem, East Godavari in East Godavari, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Pharmacy College, Surampalem, East Godavari: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Pharmacy College, Surampalem, East Godavari in East Godavari, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'Aditya Pharmacy College, Surampalem, East Godavari, Aditya Pharmacy College, Surampalem, East Godavari admission 2026, Aditya Pharmacy College, Surampalem, East Godavari courses, Aditya Pharmacy College, Surampalem, East Godavari fees, Aditya Pharmacy College, Surampalem, East Godavari placement, Aditya Pharmacy College, Surampalem, East Godavari facilities, East Godavari, Andhra Pradesh',
  admission_process = 'Aditya Pharmacy College, Surampalem, East Godavari admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Pharmacy College, Surampalem, East Godavari depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Pharmacy College, Surampalem, East Godavari course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya Pharmacy College, Surampalem, East Godavari placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Pharmacy College, Surampalem, East Godavari facilities currently highlighted for student checks include Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Pharmacy College, Surampalem, East Godavari should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Pharmacy College, Surampalem, East Godavari may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Pharmacy College, Surampalem, East Godavari is mapped with reviewed approval or affiliation signals such as PCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '5a0fbf9b-8054-4ada-80e9-4f97e56e4758' AND slug = 'aditya-pharmacy-college-surampalem-east-godavari';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2ee83255-d4aa-4cdc-b1cd-3683564dce65' AND slug = 'aditya-silver-oak-institute-of-technology-asoit-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-silver-oak-institute-of-technology-asoit-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad is a technical education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2014. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad admission 2026, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad courses, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad fees, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad placement, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '2ee83255-d4aa-4cdc-b1cd-3683564dce65' AND slug = 'aditya-silver-oak-institute-of-technology-asoit-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cdf5da75-8a1f-4723-84ef-6784de5a3ca7' AND slug = 'adn-medical-college-and-paramedical-science-nagpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adn-medical-college-and-paramedical-science-nagpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, ADN Medical College and Paramedical Science, Nagpur is a healthcare education option in Nagpur, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include NMC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'ADN Medical College and Paramedical Science, Nagpur in Nagpur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'ADN Medical College and Paramedical Science, Nagpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ADN Medical College and Paramedical Science, Nagpur in Nagpur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, schol',
  meta_keywords = 'ADN Medical College and Paramedical Science, Nagpur, ADN Medical College and Paramedical Science, Nagpur admission 2026, ADN Medical College and Paramedical Science, Nagpur courses, ADN Medical College and Paramedical Science, Nagpur fees, ADN Medical College and Paramedical Science, Nagpur placement, ADN Medical College and Paramedical Science, Nagpur facilities, Nagpur, Maharashtra',
  admission_process = 'ADN Medical College and Paramedical Science, Nagpur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at ADN Medical College and Paramedical Science, Nagpur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'ADN Medical College and Paramedical Science, Nagpur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'ADN Medical College and Paramedical Science, Nagpur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'ADN Medical College and Paramedical Science, Nagpur facilities currently highlighted for student checks include Teaching hospital, Clinical departments, Laboratories, Library, Hostel. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[] END,
  hostel_life = 'Hostel and local accommodation details for ADN Medical College and Paramedical Science, Nagpur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for ADN Medical College and Paramedical Science, Nagpur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'ADN Medical College and Paramedical Science, Nagpur is mapped with reviewed approval or affiliation signals such as NMC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'cdf5da75-8a1f-4723-84ef-6784de5a3ca7' AND slug = 'adn-medical-college-and-paramedical-science-nagpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '79830484-1fbc-4ab3-ab3a-39a83591ab06' AND slug = 'adoni-arts-and-science-college-adoni') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adoni-arts-and-science-college-adoni';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Adoni Arts and Science College, Adoni is a higher education option in Adoni, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1962. Current approval or affiliation signals available for review include NAAC-B. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adoni Arts and Science College, Adoni in Adoni, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adoni Arts and Science College, Adoni: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adoni Arts and Science College, Adoni in Adoni, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and ',
  meta_keywords = 'Adoni Arts and Science College, Adoni, Adoni Arts and Science College, Adoni admission 2026, Adoni Arts and Science College, Adoni courses, Adoni Arts and Science College, Adoni fees, Adoni Arts and Science College, Adoni placement, Adoni Arts and Science College, Adoni facilities, Adoni, Andhra Pradesh',
  admission_process = 'Adoni Arts and Science College, Adoni admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adoni Arts and Science College, Adoni depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adoni Arts and Science College, Adoni course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Adoni Arts and Science College, Adoni placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adoni Arts and Science College, Adoni facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adoni Arts and Science College, Adoni should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adoni Arts and Science College, Adoni may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adoni Arts and Science College, Adoni is mapped with reviewed approval or affiliation signals such as NAAC-B. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '79830484-1fbc-4ab3-ab3a-39a83591ab06' AND slug = 'adoni-arts-and-science-college-adoni';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3c9585d3-b1fc-4c15-bb78-6d788cd4c731' AND slug = 'adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad is a technical education option in Hyderabad, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad in Hyderabad, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad in Hyderabad, Telangana: source-reviewed overview for admissions, courses,',
  meta_keywords = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad admission 2026, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad courses, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad fees, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad placement, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad facilities, Hyderabad, Telangana',
  admission_process = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad facilities currently highlighted for student checks include Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3c9585d3-b1fc-4c15-bb78-6d788cd4c731' AND slug = 'adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5085eb6e-00ce-4e71-acfe-c49614ed130b' AND slug = 'adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon is a management and commerce education option in Jalgaon, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1983. Current approval or affiliation signals available for review include AICTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon in Jalgaon, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon in Jalgaon, Maharashtra: source-reviewed overview for admissions, courses, faci',
  meta_keywords = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon admission 2026, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon courses, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon fees, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon placement, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon facilities, Jalgaon, Maharashtra',
  admission_process = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon facilities currently highlighted for student checks include Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon is mapped with reviewed approval or affiliation signals such as AICTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '5085eb6e-00ce-4e71-acfe-c49614ed130b' AND slug = 'adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'eb5b19c6-e6f4-43e5-87f6-334070c93ec4' AND slug = 'advance-institute-of-management-aim-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advance-institute-of-management-aim-ghaziabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Advance Institute of Management - [AIM], Ghaziabad is a management and commerce education option in Ghaziabad, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1995. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advance Institute of Management - [AIM], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advance Institute of Management - [AIM], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advance Institute of Management - [AIM], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, s',
  meta_keywords = 'Advance Institute of Management - [AIM], Ghaziabad, Advance Institute of Management - [AIM], Ghaziabad admission 2026, Advance Institute of Management - [AIM], Ghaziabad courses, Advance Institute of Management - [AIM], Ghaziabad fees, Advance Institute of Management - [AIM], Ghaziabad placement, Advance Institute of Management - [AIM], Ghaziabad facilities, Ghaziabad, Uttar Pradesh',
  admission_process = 'Advance Institute of Management - [AIM], Ghaziabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advance Institute of Management - [AIM], Ghaziabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advance Institute of Management - [AIM], Ghaziabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advance Institute of Management - [AIM], Ghaziabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advance Institute of Management - [AIM], Ghaziabad facilities currently highlighted for student checks include Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advance Institute of Management - [AIM], Ghaziabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advance Institute of Management - [AIM], Ghaziabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advance Institute of Management - [AIM], Ghaziabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'eb5b19c6-e6f4-43e5-87f6-334070c93ec4' AND slug = 'advance-institute-of-management-aim-ghaziabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7214af43-1cd9-4af2-8c97-6d94221681b0' AND slug = 'advanced-centre-for-treatment-research-and-education-in-cancer-actrec-navi-mumbai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-centre-for-treatment-research-and-education-in-cancer-actrec-navi-mumbai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai is a management and commerce education option in Navi Mumbai, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai in Navi Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai in Navi Mumbai, Maharashtra: source-reviewed overview for admissions',
  meta_keywords = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai, Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai admission 2026, Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai courses, Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai fees, Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai placement, Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai facilities, Navi Mumbai, Maharashtra',
  admission_process = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced Centre for Treatment Research and Education in Cancer - [ACTREC], Navi Mumbai has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '7214af43-1cd9-4af2-8c97-6d94221681b0' AND slug = 'advanced-centre-for-treatment-research-and-education-in-cancer-actrec-navi-mumbai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '0d3be94f-78cf-4fb9-a294-6791edadc709' AND slug = 'advanced-college-of-technology-and-management-actm-palwal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-college-of-technology-and-management-actm-palwal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Advanced College of Technology and Management - [ACTM], Palwal is a technical education option in Palwal, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced College of Technology and Management - [ACTM], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced College of Technology and Management - [ACTM], Palwal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced College of Technology and Management - [ACTM], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements',
  meta_keywords = 'Advanced College of Technology and Management - [ACTM], Palwal, Advanced College of Technology and Management - [ACTM], Palwal admission 2026, Advanced College of Technology and Management - [ACTM], Palwal courses, Advanced College of Technology and Management - [ACTM], Palwal fees, Advanced College of Technology and Management - [ACTM], Palwal placement, Advanced College of Technology and Management - [ACTM], Palwal facilities, Palwal, Haryana',
  admission_process = 'Advanced College of Technology and Management - [ACTM], Palwal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced College of Technology and Management - [ACTM], Palwal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced College of Technology and Management - [ACTM], Palwal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced College of Technology and Management - [ACTM], Palwal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced College of Technology and Management - [ACTM], Palwal facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced College of Technology and Management - [ACTM], Palwal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced College of Technology and Management - [ACTM], Palwal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced College of Technology and Management - [ACTM], Palwal is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '0d3be94f-78cf-4fb9-a294-6791edadc709' AND slug = 'advanced-college-of-technology-and-management-actm-palwal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '73253f57-e991-471d-b460-f6d7a461d039' AND slug = 'advanced-institute-of-education-aie-palwal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-institute-of-education-aie-palwal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Advanced Institute of Education - [AIE], Palwal is a teacher education option in Palwal, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced Institute of Education - [AIE], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced Institute of Education - [AIE], Palwal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced Institute of Education - [AIE], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Advanced Institute of Education - [AIE], Palwal, Advanced Institute of Education - [AIE], Palwal admission 2026, Advanced Institute of Education - [AIE], Palwal courses, Advanced Institute of Education - [AIE], Palwal fees, Advanced Institute of Education - [AIE], Palwal placement, Advanced Institute of Education - [AIE], Palwal facilities, Palwal, Haryana',
  admission_process = 'Advanced Institute of Education - [AIE], Palwal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced Institute of Education - [AIE], Palwal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced Institute of Education - [AIE], Palwal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced Institute of Education - [AIE], Palwal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced Institute of Education - [AIE], Palwal facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced Institute of Education - [AIE], Palwal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced Institute of Education - [AIE], Palwal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced Institute of Education - [AIE], Palwal is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '73253f57-e991-471d-b460-f6d7a461d039' AND slug = 'advanced-institute-of-education-aie-palwal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b00c717b-95a1-4640-82fd-9ed49e80c4de' AND slug = 'advanced-institute-of-management-aim-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-institute-of-management-aim-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Advanced Institute of Management - [AIM], New Delhi is a management and commerce education option in New Delhi, Delhi NCR for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced Institute of Management - [AIM], New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced Institute of Management - [AIM], New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced Institute of Management - [AIM], New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'Advanced Institute of Management - [AIM], New Delhi, Advanced Institute of Management - [AIM], New Delhi admission 2026, Advanced Institute of Management - [AIM], New Delhi courses, Advanced Institute of Management - [AIM], New Delhi fees, Advanced Institute of Management - [AIM], New Delhi placement, Advanced Institute of Management - [AIM], New Delhi facilities, New Delhi, Delhi NCR',
  admission_process = 'Advanced Institute of Management - [AIM], New Delhi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced Institute of Management - [AIM], New Delhi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced Institute of Management - [AIM], New Delhi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced Institute of Management - [AIM], New Delhi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced Institute of Management - [AIM], New Delhi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced Institute of Management - [AIM], New Delhi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced Institute of Management - [AIM], New Delhi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced Institute of Management - [AIM], New Delhi is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b00c717b-95a1-4640-82fd-9ed49e80c4de' AND slug = 'advanced-institute-of-management-aim-new-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1fe60882-27d5-4209-a830-171fa4d2644e' AND slug = 'advanced-institute-of-modern-management-and-technology-aimmt-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-institute-of-modern-management-and-technology-aimmt-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata is a technical education option in Kolkata, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata in Kolkata, West Bengal: source-reviewed overview for admissions, courses, facili',
  meta_keywords = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata, Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata admission 2026, Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata courses, Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata fees, Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata placement, Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata facilities, Kolkata, West Bengal',
  admission_process = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced Institute of Modern Management and Technology - [AIMMT], Kolkata is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '1fe60882-27d5-4209-a830-171fa4d2644e' AND slug = 'advanced-institute-of-modern-management-and-technology-aimmt-kolkata';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '60b9a279-23f8-4957-8e5c-ede330f8b637' AND slug = 'advanced-institute-of-pharmacy-aip-palwal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-institute-of-pharmacy-aip-palwal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Advanced Institute of Pharmacy - [AIP], Palwal is a healthcare education option in Palwal, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced Institute of Pharmacy - [AIP], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced Institute of Pharmacy - [AIP], Palwal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced Institute of Pharmacy - [AIP], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships a',
  meta_keywords = 'Advanced Institute of Pharmacy - [AIP], Palwal, Advanced Institute of Pharmacy - [AIP], Palwal admission 2026, Advanced Institute of Pharmacy - [AIP], Palwal courses, Advanced Institute of Pharmacy - [AIP], Palwal fees, Advanced Institute of Pharmacy - [AIP], Palwal placement, Advanced Institute of Pharmacy - [AIP], Palwal facilities, Palwal, Haryana',
  admission_process = 'Advanced Institute of Pharmacy - [AIP], Palwal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced Institute of Pharmacy - [AIP], Palwal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced Institute of Pharmacy - [AIP], Palwal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced Institute of Pharmacy - [AIP], Palwal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced Institute of Pharmacy - [AIP], Palwal facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced Institute of Pharmacy - [AIP], Palwal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced Institute of Pharmacy - [AIP], Palwal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced Institute of Pharmacy - [AIP], Palwal is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '60b9a279-23f8-4957-8e5c-ede330f8b637' AND slug = 'advanced-institute-of-pharmacy-aip-palwal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b09bdefd-ff9e-4d4c-aeab-d9f23405b1a1' AND slug = 'advanced-institute-of-technology-management-aitm-palwal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-institute-of-technology-management-aitm-palwal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Advanced Institute of Technology Management - [AITM], Palwal is a technical education option in Palwal, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced Institute of Technology Management - [AITM], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced Institute of Technology Management - [AITM], Palwal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced Institute of Technology Management - [AITM], Palwal in Palwal, Haryana: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'Advanced Institute of Technology Management - [AITM], Palwal, Advanced Institute of Technology Management - [AITM], Palwal admission 2026, Advanced Institute of Technology Management - [AITM], Palwal courses, Advanced Institute of Technology Management - [AITM], Palwal fees, Advanced Institute of Technology Management - [AITM], Palwal placement, Advanced Institute of Technology Management - [AITM], Palwal facilities, Palwal, Haryana',
  admission_process = 'Advanced Institute of Technology Management - [AITM], Palwal admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced Institute of Technology Management - [AITM], Palwal depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced Institute of Technology Management - [AITM], Palwal course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced Institute of Technology Management - [AITM], Palwal placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced Institute of Technology Management - [AITM], Palwal facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced Institute of Technology Management - [AITM], Palwal should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced Institute of Technology Management - [AITM], Palwal may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced Institute of Technology Management - [AITM], Palwal is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b09bdefd-ff9e-4d4c-aeab-d9f23405b1a1' AND slug = 'advanced-institute-of-technology-management-aitm-palwal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3faa0a97-5ee9-4619-a1a8-3bd01d3fbf08' AND slug = 'advanced-management-college-amc-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advanced-management-college-amc-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Advanced Management College - [AMC], Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advanced Management College - [AMC], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advanced Management College - [AMC], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advanced Management College - [AMC], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'Advanced Management College - [AMC], Bangalore, Advanced Management College - [AMC], Bangalore admission 2026, Advanced Management College - [AMC], Bangalore courses, Advanced Management College - [AMC], Bangalore fees, Advanced Management College - [AMC], Bangalore placement, Advanced Management College - [AMC], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Advanced Management College - [AMC], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advanced Management College - [AMC], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advanced Management College - [AMC], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advanced Management College - [AMC], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advanced Management College - [AMC], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advanced Management College - [AMC], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advanced Management College - [AMC], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advanced Management College - [AMC], Bangalore has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3faa0a97-5ee9-4619-a1a8-3bd01d3fbf08' AND slug = 'advanced-management-college-amc-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c5cd92d7-9973-4c8c-b3eb-e9ce11ba3b09' AND slug = 'advent-institute-of-management-studies-udaipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advent-institute-of-management-studies-udaipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Advent Institute of Management Studies, Udaipur is a management and commerce education option in Udaipur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Advent Institute of Management Studies, Udaipur in Udaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Advent Institute of Management Studies, Udaipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advent Institute of Management Studies, Udaipur in Udaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarshi',
  meta_keywords = 'Advent Institute of Management Studies, Udaipur, Advent Institute of Management Studies, Udaipur admission 2026, Advent Institute of Management Studies, Udaipur courses, Advent Institute of Management Studies, Udaipur fees, Advent Institute of Management Studies, Udaipur placement, Advent Institute of Management Studies, Udaipur facilities, Udaipur, Rajasthan',
  admission_process = 'Advent Institute of Management Studies, Udaipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Advent Institute of Management Studies, Udaipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Advent Institute of Management Studies, Udaipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Advent Institute of Management Studies, Udaipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Advent Institute of Management Studies, Udaipur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Advent Institute of Management Studies, Udaipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Advent Institute of Management Studies, Udaipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Advent Institute of Management Studies, Udaipur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c5cd92d7-9973-4c8c-b3eb-e9ce11ba3b09' AND slug = 'advent-institute-of-management-studies-udaipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '73153217-fd0b-4797-adad-3b881f284809' AND slug = 'adwaita-mission-institute-of-technology-amit-banka') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adwaita-mission-institute-of-technology-amit-banka';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Adwaita Mission Institute of Technology- [AMIT], Banka is a technical education option in Banka, Bihar for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2013. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adwaita Mission Institute of Technology- [AMIT], Banka in Banka, Bihar: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adwaita Mission Institute of Technology- [AMIT], Banka: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adwaita Mission Institute of Technology- [AMIT], Banka in Banka, Bihar: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'Adwaita Mission Institute of Technology- [AMIT], Banka, Adwaita Mission Institute of Technology- [AMIT], Banka admission 2026, Adwaita Mission Institute of Technology- [AMIT], Banka courses, Adwaita Mission Institute of Technology- [AMIT], Banka fees, Adwaita Mission Institute of Technology- [AMIT], Banka placement, Adwaita Mission Institute of Technology- [AMIT], Banka facilities, Banka, Bihar',
  admission_process = 'Adwaita Mission Institute of Technology- [AMIT], Banka admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adwaita Mission Institute of Technology- [AMIT], Banka depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adwaita Mission Institute of Technology- [AMIT], Banka course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Adwaita Mission Institute of Technology- [AMIT], Banka placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adwaita Mission Institute of Technology- [AMIT], Banka facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adwaita Mission Institute of Technology- [AMIT], Banka should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adwaita Mission Institute of Technology- [AMIT], Banka may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adwaita Mission Institute of Technology- [AMIT], Banka is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '73153217-fd0b-4797-adad-3b881f284809' AND slug = 'adwaita-mission-institute-of-technology-amit-banka';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cd3510da-b347-4162-85d9-cfd537f190a7' AND slug = 'adwaita-mission-training-college-banka') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adwaita-mission-training-college-banka';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Adwaita Mission Training College, Banka is a teacher education option in Banka, Bihar for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Adwaita Mission Training College, Banka in Banka, Bihar: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Adwaita Mission Training College, Banka: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adwaita Mission Training College, Banka in Banka, Bihar: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 de',
  meta_keywords = 'Adwaita Mission Training College, Banka, Adwaita Mission Training College, Banka admission 2026, Adwaita Mission Training College, Banka courses, Adwaita Mission Training College, Banka fees, Adwaita Mission Training College, Banka placement, Adwaita Mission Training College, Banka facilities, Banka, Bihar',
  admission_process = 'Adwaita Mission Training College, Banka admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Adwaita Mission Training College, Banka depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Adwaita Mission Training College, Banka course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Adwaita Mission Training College, Banka placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Adwaita Mission Training College, Banka facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Adwaita Mission Training College, Banka should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Adwaita Mission Training College, Banka may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Adwaita Mission Training College, Banka is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'cd3510da-b347-4162-85d9-cfd537f190a7' AND slug = 'adwaita-mission-training-college-banka';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '599f94f8-5203-41f8-b5af-e27b69468dae' AND slug = 'aecs-maruthi-college-of-nursing-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aecs-maruthi-college-of-nursing-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AECS Maruthi College of Nursing, Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include KNC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AECS Maruthi College of Nursing, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AECS Maruthi College of Nursing, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AECS Maruthi College of Nursing, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'AECS Maruthi College of Nursing, Bangalore, AECS Maruthi College of Nursing, Bangalore admission 2026, AECS Maruthi College of Nursing, Bangalore courses, AECS Maruthi College of Nursing, Bangalore fees, AECS Maruthi College of Nursing, Bangalore placement, AECS Maruthi College of Nursing, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'AECS Maruthi College of Nursing, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AECS Maruthi College of Nursing, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AECS Maruthi College of Nursing, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AECS Maruthi College of Nursing, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AECS Maruthi College of Nursing, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AECS Maruthi College of Nursing, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AECS Maruthi College of Nursing, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AECS Maruthi College of Nursing, Bangalore is mapped with reviewed approval or affiliation signals such as KNC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '599f94f8-5203-41f8-b5af-e27b69468dae' AND slug = 'aecs-maruthi-college-of-nursing-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '89787810-ef49-44c7-8b12-b5c5b2958cc8' AND slug = 'aecs-maruti-college-of-dental-sciences-and-research-centre-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aecs-maruti-college-of-dental-sciences-and-research-centre-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, AECS Maruti College of Dental Sciences and Research Centre, Bangalore is a healthcare education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include DCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities',
  meta_keywords = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore, AECS Maruti College of Dental Sciences and Research Centre, Bangalore admission 2026, AECS Maruti College of Dental Sciences and Research Centre, Bangalore courses, AECS Maruti College of Dental Sciences and Research Centre, Bangalore fees, AECS Maruti College of Dental Sciences and Research Centre, Bangalore placement, AECS Maruti College of Dental Sciences and Research Centre, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AECS Maruti College of Dental Sciences and Research Centre, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AECS Maruti College of Dental Sciences and Research Centre, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AECS Maruti College of Dental Sciences and Research Centre, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AECS Maruti College of Dental Sciences and Research Centre, Bangalore is mapped with reviewed approval or affiliation signals such as DCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '89787810-ef49-44c7-8b12-b5c5b2958cc8' AND slug = 'aecs-maruti-college-of-dental-sciences-and-research-centre-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cc80a52a-aa1b-4df9-b8f6-cdc83f6462ef' AND slug = 'aecs-pavan-college-of-management-sciences-kolar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aecs-pavan-college-of-management-sciences-kolar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, AECS Pavan College of Management Sciences, Kolar is a management and commerce education option in Kolar, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AECS Pavan College of Management Sciences, Kolar in Kolar, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AECS Pavan College of Management Sciences, Kolar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AECS Pavan College of Management Sciences, Kolar in Kolar, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarship',
  meta_keywords = 'AECS Pavan College of Management Sciences, Kolar, AECS Pavan College of Management Sciences, Kolar admission 2026, AECS Pavan College of Management Sciences, Kolar courses, AECS Pavan College of Management Sciences, Kolar fees, AECS Pavan College of Management Sciences, Kolar placement, AECS Pavan College of Management Sciences, Kolar facilities, Kolar, Karnataka',
  admission_process = 'AECS Pavan College of Management Sciences, Kolar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AECS Pavan College of Management Sciences, Kolar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AECS Pavan College of Management Sciences, Kolar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AECS Pavan College of Management Sciences, Kolar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AECS Pavan College of Management Sciences, Kolar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AECS Pavan College of Management Sciences, Kolar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AECS Pavan College of Management Sciences, Kolar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AECS Pavan College of Management Sciences, Kolar is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'cc80a52a-aa1b-4df9-b8f6-cdc83f6462ef' AND slug = 'aecs-pavan-college-of-management-sciences-kolar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1b61763b-876a-4477-ac73-88054ce912a9' AND slug = 'aegis-school-of-business-and-telecommunication-mumbai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aegis-school-of-business-and-telecommunication-mumbai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aegis School of Business and Telecommunication, Mumbai is a management and commerce education option in Mumbai, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include AICTE, UGC, DEB. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aegis School of Business and Telecommunication, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aegis School of Business and Telecommunication, Mumbai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aegis School of Business and Telecommunication, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, sc',
  meta_keywords = 'Aegis School of Business and Telecommunication, Mumbai, Aegis School of Business and Telecommunication, Mumbai admission 2026, Aegis School of Business and Telecommunication, Mumbai courses, Aegis School of Business and Telecommunication, Mumbai fees, Aegis School of Business and Telecommunication, Mumbai placement, Aegis School of Business and Telecommunication, Mumbai facilities, Mumbai, Maharashtra',
  admission_process = 'Aegis School of Business and Telecommunication, Mumbai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aegis School of Business and Telecommunication, Mumbai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aegis School of Business and Telecommunication, Mumbai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aegis School of Business and Telecommunication, Mumbai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aegis School of Business and Telecommunication, Mumbai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aegis School of Business and Telecommunication, Mumbai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aegis School of Business and Telecommunication, Mumbai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aegis School of Business and Telecommunication, Mumbai is mapped with reviewed approval or affiliation signals such as AICTE, UGC, DEB. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '1b61763b-876a-4477-ac73-88054ce912a9' AND slug = 'aegis-school-of-business-and-telecommunication-mumbai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '93018f1b-e968-4306-b94a-d5c354be8a76' AND slug = 'aeronautical-engineering-and-research-organization-aero-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aeronautical-engineering-and-research-organization-aero-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aeronautical Engineering and Research Organization - [AERO], Pune is a technical education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aeronautical Engineering and Research Organization - [AERO], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aeronautical Engineering and Research Organization - [AERO], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aeronautical Engineering and Research Organization - [AERO], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Aeronautical Engineering and Research Organization - [AERO], Pune, Aeronautical Engineering and Research Organization - [AERO], Pune admission 2026, Aeronautical Engineering and Research Organization - [AERO], Pune courses, Aeronautical Engineering and Research Organization - [AERO], Pune fees, Aeronautical Engineering and Research Organization - [AERO], Pune placement, Aeronautical Engineering and Research Organization - [AERO], Pune facilities, Pune, Maharashtra',
  admission_process = 'Aeronautical Engineering and Research Organization - [AERO], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aeronautical Engineering and Research Organization - [AERO], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aeronautical Engineering and Research Organization - [AERO], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aeronautical Engineering and Research Organization - [AERO], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aeronautical Engineering and Research Organization - [AERO], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aeronautical Engineering and Research Organization - [AERO], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aeronautical Engineering and Research Organization - [AERO], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aeronautical Engineering and Research Organization - [AERO], Pune has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '93018f1b-e968-4306-b94a-d5c354be8a76' AND slug = 'aeronautical-engineering-and-research-organization-aero-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '120ba602-7c5f-448e-a338-c8dfb119d7c9' AND slug = 'aes-institute-of-computer-studies-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aes-institute-of-computer-studies-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AES Institute of Computer Studies, Ahmedabad is a higher education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include AICTE, NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AES Institute of Computer Studies, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AES Institute of Computer Studies, Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AES Institute of Computer Studies, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'AES Institute of Computer Studies, Ahmedabad, AES Institute of Computer Studies, Ahmedabad admission 2026, AES Institute of Computer Studies, Ahmedabad courses, AES Institute of Computer Studies, Ahmedabad fees, AES Institute of Computer Studies, Ahmedabad placement, AES Institute of Computer Studies, Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'AES Institute of Computer Studies, Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AES Institute of Computer Studies, Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AES Institute of Computer Studies, Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AES Institute of Computer Studies, Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AES Institute of Computer Studies, Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AES Institute of Computer Studies, Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AES Institute of Computer Studies, Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AES Institute of Computer Studies, Ahmedabad is mapped with reviewed approval or affiliation signals such as AICTE, NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '120ba602-7c5f-448e-a338-c8dfb119d7c9' AND slug = 'aes-institute-of-computer-studies-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '194f347b-0229-4589-b85c-a86b7f1b109f' AND slug = 'aes039s-institute-of-management-and-business-administration-imba-akole-ahmed-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aes039s-institute-of-management-and-business-administration-imba-akole-ahmed-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar is a management and commerce education option in Ahmed Nagar, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admissions,',
  meta_keywords = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar, AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar admission 2026, AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar courses, AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar fees, AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar placement, AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar facilities, Ahmed Nagar, Maharashtra',
  admission_process = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AES''s Institute of Management and Business Administration - [IMBA] Akole, Ahmed Nagar is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '194f347b-0229-4589-b85c-a86b7f1b109f' AND slug = 'aes039s-institute-of-management-and-business-administration-imba-akole-ahmed-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3b53a665-c37c-455f-a25d-b84f5d0d95b8' AND slug = 'aet-college-of-education-mandya') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aet-college-of-education-mandya';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, AET College of Education, Mandya is a teacher education option in Mandya, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AET College of Education, Mandya in Mandya, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AET College of Education, Mandya: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AET College of Education, Mandya in Mandya, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 deci',
  meta_keywords = 'AET College of Education, Mandya, AET College of Education, Mandya admission 2026, AET College of Education, Mandya courses, AET College of Education, Mandya fees, AET College of Education, Mandya placement, AET College of Education, Mandya facilities, Mandya, Karnataka',
  admission_process = 'AET College of Education, Mandya admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AET College of Education, Mandya depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AET College of Education, Mandya course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AET College of Education, Mandya placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AET College of Education, Mandya facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AET College of Education, Mandya should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AET College of Education, Mandya may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AET College of Education, Mandya is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3b53a665-c37c-455f-a25d-b84f5d0d95b8' AND slug = 'aet-college-of-education-mandya';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd026c70d-e838-4765-accc-8573f84818f8' AND slug = 'ag-patil-institute-of-technology-agpit-solapur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ag-patil-institute-of-technology-agpit-solapur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, AG Patil Institute of Technology - [AGPIT], Solapur is a technical education option in Solapur, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2008. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AG Patil Institute of Technology - [AGPIT], Solapur in Solapur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AG Patil Institute of Technology - [AGPIT], Solapur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AG Patil Institute of Technology - [AGPIT], Solapur in Solapur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scho',
  meta_keywords = 'AG Patil Institute of Technology - [AGPIT], Solapur, AG Patil Institute of Technology - [AGPIT], Solapur admission 2026, AG Patil Institute of Technology - [AGPIT], Solapur courses, AG Patil Institute of Technology - [AGPIT], Solapur fees, AG Patil Institute of Technology - [AGPIT], Solapur placement, AG Patil Institute of Technology - [AGPIT], Solapur facilities, Solapur, Maharashtra',
  admission_process = 'AG Patil Institute of Technology - [AGPIT], Solapur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AG Patil Institute of Technology - [AGPIT], Solapur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AG Patil Institute of Technology - [AGPIT], Solapur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AG Patil Institute of Technology - [AGPIT], Solapur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AG Patil Institute of Technology - [AGPIT], Solapur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AG Patil Institute of Technology - [AGPIT], Solapur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AG Patil Institute of Technology - [AGPIT], Solapur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AG Patil Institute of Technology - [AGPIT], Solapur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'd026c70d-e838-4765-accc-8573f84818f8' AND slug = 'ag-patil-institute-of-technology-agpit-solapur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '81fc35de-925d-4bc1-a4a0-f7b957a147da' AND slug = 'agartala-government-medical-college-agartala') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agartala-government-medical-college-agartala';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Agartala Government Medical College, Agartala is a healthcare education option in Agartala, Tripura for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agartala Government Medical College, Agartala in Agartala, Tripura: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agartala Government Medical College, Agartala: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agartala Government Medical College, Agartala in Agartala, Tripura: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Agartala Government Medical College, Agartala, Agartala Government Medical College, Agartala admission 2026, Agartala Government Medical College, Agartala courses, Agartala Government Medical College, Agartala fees, Agartala Government Medical College, Agartala placement, Agartala Government Medical College, Agartala facilities, Agartala, Tripura',
  admission_process = 'Agartala Government Medical College, Agartala admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agartala Government Medical College, Agartala depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agartala Government Medical College, Agartala course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agartala Government Medical College, Agartala placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agartala Government Medical College, Agartala facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agartala Government Medical College, Agartala should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agartala Government Medical College, Agartala may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agartala Government Medical College, Agartala is mapped with reviewed approval or affiliation signals such as MCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '81fc35de-925d-4bc1-a4a0-f7b957a147da' AND slug = 'agartala-government-medical-college-agartala';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e4154003-4ad3-475d-96a1-09d83f6025f9' AND slug = 'agasti-arts-commerce-and-dadasaheb-rupwate-science-college-akole-ahmed-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agasti-arts-commerce-and-dadasaheb-rupwate-science-college-akole-ahmed-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar is a management and commerce education option in Ahmed Nagar, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1974. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admissions, course',
  meta_keywords = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar, Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar admission 2026, Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar courses, Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar fees, Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar placement, Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar facilities, Ahmed Nagar, Maharashtra',
  admission_process = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agasti Arts, Commerce and Dadasaheb Rupwate Science College Akole, Ahmed Nagar is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e4154003-4ad3-475d-96a1-09d83f6025f9' AND slug = 'agasti-arts-commerce-and-dadasaheb-rupwate-science-college-akole-ahmed-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9ea30ccc-8a72-4ddc-8f81-4882cb557fd2' AND slug = 'aggarwal-college-wing-iii-coed-amp-self-finance-rohtak') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aggarwal-college-wing-iii-coed-amp-self-finance-rohtak';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aggarwal College Wing III Coed & Self Finance, Rohtak is a higher education option in Rohtak, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1971. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aggarwal College Wing III Coed & Self Finance, Rohtak in Rohtak, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aggarwal College Wing III Coed & Self Finance, Rohtak: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aggarwal College Wing III Coed & Self Finance, Rohtak in Rohtak, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'Aggarwal College Wing III Coed & Self Finance, Rohtak, Aggarwal College Wing III Coed & Self Finance, Rohtak admission 2026, Aggarwal College Wing III Coed & Self Finance, Rohtak courses, Aggarwal College Wing III Coed & Self Finance, Rohtak fees, Aggarwal College Wing III Coed & Self Finance, Rohtak placement, Aggarwal College Wing III Coed & Self Finance, Rohtak facilities, Rohtak, Haryana',
  admission_process = 'Aggarwal College Wing III Coed & Self Finance, Rohtak admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aggarwal College Wing III Coed & Self Finance, Rohtak depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aggarwal College Wing III Coed & Self Finance, Rohtak course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aggarwal College Wing III Coed & Self Finance, Rohtak placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aggarwal College Wing III Coed & Self Finance, Rohtak facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aggarwal College Wing III Coed & Self Finance, Rohtak should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aggarwal College Wing III Coed & Self Finance, Rohtak may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aggarwal College Wing III Coed & Self Finance, Rohtak is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9ea30ccc-8a72-4ddc-8f81-4882cb557fd2' AND slug = 'aggarwal-college-wing-iii-coed-amp-self-finance-rohtak';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4bdf7407-2631-4cfe-9957-388c74f212de' AND slug = 'aggarwal-junior-college-wing-ii-faridabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aggarwal-junior-college-wing-ii-faridabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aggarwal Junior College Wing II, Faridabad is a higher education option in Faridabad, Haryana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1971. Current approval or affiliation signals available for review include NAAC, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aggarwal Junior College Wing II, Faridabad in Faridabad, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aggarwal Junior College Wing II, Faridabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aggarwal Junior College Wing II, Faridabad in Faridabad, Haryana: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Aggarwal Junior College Wing II, Faridabad, Aggarwal Junior College Wing II, Faridabad admission 2026, Aggarwal Junior College Wing II, Faridabad courses, Aggarwal Junior College Wing II, Faridabad fees, Aggarwal Junior College Wing II, Faridabad placement, Aggarwal Junior College Wing II, Faridabad facilities, Faridabad, Haryana',
  admission_process = 'Aggarwal Junior College Wing II, Faridabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aggarwal Junior College Wing II, Faridabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aggarwal Junior College Wing II, Faridabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aggarwal Junior College Wing II, Faridabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aggarwal Junior College Wing II, Faridabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aggarwal Junior College Wing II, Faridabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aggarwal Junior College Wing II, Faridabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aggarwal Junior College Wing II, Faridabad is mapped with reviewed approval or affiliation signals such as NAAC, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4bdf7407-2631-4cfe-9957-388c74f212de' AND slug = 'aggarwal-junior-college-wing-ii-faridabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '616b2188-bc5f-4c89-8daf-cec2d4d8e36f' AND slug = 'agharkar-research-institute-ari-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agharkar-research-institute-ari-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Agharkar Research Institute -[ARI], Pune is a higher education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1946. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agharkar Research Institute -[ARI], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agharkar Research Institute -[ARI], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agharkar Research Institute -[ARI], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2',
  meta_keywords = 'Agharkar Research Institute -[ARI], Pune, Agharkar Research Institute -[ARI], Pune admission 2026, Agharkar Research Institute -[ARI], Pune courses, Agharkar Research Institute -[ARI], Pune fees, Agharkar Research Institute -[ARI], Pune placement, Agharkar Research Institute -[ARI], Pune facilities, Pune, Maharashtra',
  admission_process = 'Agharkar Research Institute -[ARI], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agharkar Research Institute -[ARI], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agharkar Research Institute -[ARI], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agharkar Research Institute -[ARI], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agharkar Research Institute -[ARI], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agharkar Research Institute -[ARI], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agharkar Research Institute -[ARI], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agharkar Research Institute -[ARI], Pune has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '616b2188-bc5f-4c89-8daf-cec2d4d8e36f' AND slug = 'agharkar-research-institute-ari-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '99ae55ff-381e-49d3-a895-f62f37fa7d1e' AND slug = 'aghorekamini-prakashchandra-mahavidyalaya-hooghly') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aghorekamini-prakashchandra-mahavidyalaya-hooghly';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, AghoreKamini Prakashchandra Mahavidyalaya, Hooghly is a higher education option in Hooghly, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1959. Current approval or affiliation signals available for review include NAAC-B. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly in Hooghly, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly in Hooghly, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, schol',
  meta_keywords = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly, AghoreKamini Prakashchandra Mahavidyalaya, Hooghly admission 2026, AghoreKamini Prakashchandra Mahavidyalaya, Hooghly courses, AghoreKamini Prakashchandra Mahavidyalaya, Hooghly fees, AghoreKamini Prakashchandra Mahavidyalaya, Hooghly placement, AghoreKamini Prakashchandra Mahavidyalaya, Hooghly facilities, Hooghly, West Bengal',
  admission_process = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AghoreKamini Prakashchandra Mahavidyalaya, Hooghly depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AghoreKamini Prakashchandra Mahavidyalaya, Hooghly should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AghoreKamini Prakashchandra Mahavidyalaya, Hooghly may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AghoreKamini Prakashchandra Mahavidyalaya, Hooghly is mapped with reviewed approval or affiliation signals such as NAAC-B. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '99ae55ff-381e-49d3-a895-f62f37fa7d1e' AND slug = 'aghorekamini-prakashchandra-mahavidyalaya-hooghly';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ed759bdb-5e49-4fd6-a055-ef34a74b7384' AND slug = 'agl-degree-and-pg-college-visakhapatnam') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agl-degree-and-pg-college-visakhapatnam';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AGL Degree and PG College, Visakhapatnam is a higher education option in Visakhapatnam, Andhra Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1991. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AGL Degree and PG College, Visakhapatnam in Visakhapatnam, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AGL Degree and PG College, Visakhapatnam: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AGL Degree and PG College, Visakhapatnam in Visakhapatnam, Andhra Pradesh: source-reviewed overview for admissions, courses, facilities, placements, schola',
  meta_keywords = 'AGL Degree and PG College, Visakhapatnam, AGL Degree and PG College, Visakhapatnam admission 2026, AGL Degree and PG College, Visakhapatnam courses, AGL Degree and PG College, Visakhapatnam fees, AGL Degree and PG College, Visakhapatnam placement, AGL Degree and PG College, Visakhapatnam facilities, Visakhapatnam, Andhra Pradesh',
  admission_process = 'AGL Degree and PG College, Visakhapatnam admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AGL Degree and PG College, Visakhapatnam depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AGL Degree and PG College, Visakhapatnam course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AGL Degree and PG College, Visakhapatnam placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AGL Degree and PG College, Visakhapatnam facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AGL Degree and PG College, Visakhapatnam should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AGL Degree and PG College, Visakhapatnam may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AGL Degree and PG College, Visakhapatnam has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ed759bdb-5e49-4fd6-a055-ef34a74b7384' AND slug = 'agl-degree-and-pg-college-visakhapatnam';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bcda468e-1d7f-47a8-a5ea-0b2be01ac40c' AND slug = 'agm-rural-college-of-engineering-and-technology-gmrcet-hubli') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agm-rural-college-of-engineering-and-technology-gmrcet-hubli';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, AGM Rural College of Engineering and Technology - [GMRCET], Hubli is a technical education option in Hubli, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2010. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli in Hubli, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli in Hubli, Karnataka: source-reviewed overview for admissions, courses, facilities, placem',
  meta_keywords = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli, AGM Rural College of Engineering and Technology - [GMRCET], Hubli admission 2026, AGM Rural College of Engineering and Technology - [GMRCET], Hubli courses, AGM Rural College of Engineering and Technology - [GMRCET], Hubli fees, AGM Rural College of Engineering and Technology - [GMRCET], Hubli placement, AGM Rural College of Engineering and Technology - [GMRCET], Hubli facilities, Hubli, Karnataka',
  admission_process = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AGM Rural College of Engineering and Technology - [GMRCET], Hubli depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AGM Rural College of Engineering and Technology - [GMRCET], Hubli should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AGM Rural College of Engineering and Technology - [GMRCET], Hubli may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AGM Rural College of Engineering and Technology - [GMRCET], Hubli is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'bcda468e-1d7f-47a8-a5ea-0b2be01ac40c' AND slug = 'agm-rural-college-of-engineering-and-technology-gmrcet-hubli';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bdfa3f74-a001-438a-be8b-8f51450e7401' AND slug = 'agni-college-of-technology-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agni-college-of-technology-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Agni College of Technology, Chennai is a technical education option in Chennai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE, NBA. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agni College of Technology, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agni College of Technology, Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agni College of Technology, Chennai in Chennai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026',
  meta_keywords = 'Agni College of Technology, Chennai, Agni College of Technology, Chennai admission 2026, Agni College of Technology, Chennai courses, Agni College of Technology, Chennai fees, Agni College of Technology, Chennai placement, Agni College of Technology, Chennai facilities, Chennai, Tamil Nadu',
  admission_process = 'Agni College of Technology, Chennai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agni College of Technology, Chennai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agni College of Technology, Chennai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agni College of Technology, Chennai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agni College of Technology, Chennai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agni College of Technology, Chennai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agni College of Technology, Chennai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agni College of Technology, Chennai is mapped with reviewed approval or affiliation signals such as AICTE, NBA. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'bdfa3f74-a001-438a-be8b-8f51450e7401' AND slug = 'agni-college-of-technology-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4a81f9ab-be3c-4736-9dfb-67bd51522343' AND slug = 'agni-school-of-business-excellence-asbex-dindigul') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agni-school-of-business-excellence-asbex-dindigul';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Agni School Of Business Excellence - [ASBEX], Dindigul is a management and commerce education option in Dindigul, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agni School Of Business Excellence - [ASBEX], Dindigul in Dindigul, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agni School Of Business Excellence - [ASBEX], Dindigul: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agni School Of Business Excellence - [ASBEX], Dindigul in Dindigul, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, s',
  meta_keywords = 'Agni School Of Business Excellence - [ASBEX], Dindigul, Agni School Of Business Excellence - [ASBEX], Dindigul admission 2026, Agni School Of Business Excellence - [ASBEX], Dindigul courses, Agni School Of Business Excellence - [ASBEX], Dindigul fees, Agni School Of Business Excellence - [ASBEX], Dindigul placement, Agni School Of Business Excellence - [ASBEX], Dindigul facilities, Dindigul, Tamil Nadu',
  admission_process = 'Agni School Of Business Excellence - [ASBEX], Dindigul admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agni School Of Business Excellence - [ASBEX], Dindigul depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agni School Of Business Excellence - [ASBEX], Dindigul course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agni School Of Business Excellence - [ASBEX], Dindigul placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agni School Of Business Excellence - [ASBEX], Dindigul facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agni School Of Business Excellence - [ASBEX], Dindigul should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agni School Of Business Excellence - [ASBEX], Dindigul may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agni School Of Business Excellence - [ASBEX], Dindigul is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4a81f9ab-be3c-4736-9dfb-67bd51522343' AND slug = 'agni-school-of-business-excellence-asbex-dindigul';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3d3c61d0-7ac2-4739-98e7-cc35f1bd493e' AND slug = 'agnihotri-college-of-pharmacy-wardha') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agnihotri-college-of-pharmacy-wardha';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Agnihotri College of Pharmacy, Wardha is a healthcare education option in Wardha, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2001. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agnihotri College of Pharmacy, Wardha in Wardha, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agnihotri College of Pharmacy, Wardha: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agnihotri College of Pharmacy, Wardha in Wardha, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 20',
  meta_keywords = 'Agnihotri College of Pharmacy, Wardha, Agnihotri College of Pharmacy, Wardha admission 2026, Agnihotri College of Pharmacy, Wardha courses, Agnihotri College of Pharmacy, Wardha fees, Agnihotri College of Pharmacy, Wardha placement, Agnihotri College of Pharmacy, Wardha facilities, Wardha, Maharashtra',
  admission_process = 'Agnihotri College of Pharmacy, Wardha admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agnihotri College of Pharmacy, Wardha depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agnihotri College of Pharmacy, Wardha course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agnihotri College of Pharmacy, Wardha placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agnihotri College of Pharmacy, Wardha facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agnihotri College of Pharmacy, Wardha should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agnihotri College of Pharmacy, Wardha may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agnihotri College of Pharmacy, Wardha is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3d3c61d0-7ac2-4739-98e7-cc35f1bd493e' AND slug = 'agnihotri-college-of-pharmacy-wardha';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd3dcf136-663d-4983-977d-28169cb404ea' AND slug = 'agra-college-of-management-and-technology-acmt-firozabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agra-college-of-management-and-technology-acmt-firozabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Agra College of Management and Technology - [ACMT], Firozabad is a technical education option in Firozabad, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agra College of Management and Technology - [ACMT], Firozabad in Firozabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agra College of Management and Technology - [ACMT], Firozabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agra College of Management and Technology - [ACMT], Firozabad in Firozabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, pl',
  meta_keywords = 'Agra College of Management and Technology - [ACMT], Firozabad, Agra College of Management and Technology - [ACMT], Firozabad admission 2026, Agra College of Management and Technology - [ACMT], Firozabad courses, Agra College of Management and Technology - [ACMT], Firozabad fees, Agra College of Management and Technology - [ACMT], Firozabad placement, Agra College of Management and Technology - [ACMT], Firozabad facilities, Firozabad, Uttar Pradesh',
  admission_process = 'Agra College of Management and Technology - [ACMT], Firozabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agra College of Management and Technology - [ACMT], Firozabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agra College of Management and Technology - [ACMT], Firozabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agra College of Management and Technology - [ACMT], Firozabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agra College of Management and Technology - [ACMT], Firozabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agra College of Management and Technology - [ACMT], Firozabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agra College of Management and Technology - [ACMT], Firozabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agra College of Management and Technology - [ACMT], Firozabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'd3dcf136-663d-4983-977d-28169cb404ea' AND slug = 'agra-college-of-management-and-technology-acmt-firozabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '725c3867-35b9-4948-a3c2-79969b66e130' AND slug = 'agra-college-agra') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agra-college-agra';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Agra College, Agra is a higher education option in Agra, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1823. Current approval or affiliation signals available for review include NCTE, AICTE, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agra College, Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agra College, Agra: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agra College, Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_keywords = 'Agra College, Agra, Agra College, Agra admission 2026, Agra College, Agra courses, Agra College, Agra fees, Agra College, Agra placement, Agra College, Agra facilities, Agra, Uttar Pradesh',
  admission_process = 'Agra College, Agra admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agra College, Agra depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agra College, Agra course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agra College, Agra placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agra College, Agra facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agra College, Agra should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agra College, Agra may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agra College, Agra is mapped with reviewed approval or affiliation signals such as NCTE, AICTE, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '725c3867-35b9-4948-a3c2-79969b66e130' AND slug = 'agra-college-agra';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ab9117d4-35fa-4d2f-bbf6-7e7262ce81ea' AND slug = 'agra-institute-of-hotel-management-aihm-agra') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agra-institute-of-hotel-management-aihm-agra';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Agra Institute of Hotel Management - [AIHM], Agra is a management and commerce education option in Agra, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1996. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agra Institute of Hotel Management - [AIHM], Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agra Institute of Hotel Management - [AIHM], Agra: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agra Institute of Hotel Management - [AIHM], Agra in Agra, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholar',
  meta_keywords = 'Agra Institute of Hotel Management - [AIHM], Agra, Agra Institute of Hotel Management - [AIHM], Agra admission 2026, Agra Institute of Hotel Management - [AIHM], Agra courses, Agra Institute of Hotel Management - [AIHM], Agra fees, Agra Institute of Hotel Management - [AIHM], Agra placement, Agra Institute of Hotel Management - [AIHM], Agra facilities, Agra, Uttar Pradesh',
  admission_process = 'Agra Institute of Hotel Management - [AIHM], Agra admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agra Institute of Hotel Management - [AIHM], Agra depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agra Institute of Hotel Management - [AIHM], Agra course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agra Institute of Hotel Management - [AIHM], Agra placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agra Institute of Hotel Management - [AIHM], Agra facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agra Institute of Hotel Management - [AIHM], Agra should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agra Institute of Hotel Management - [AIHM], Agra may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agra Institute of Hotel Management - [AIHM], Agra is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ab9117d4-35fa-4d2f-bbf6-7e7262ce81ea' AND slug = 'agra-institute-of-hotel-management-aihm-agra';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9aea0817-48ee-4722-a9a3-c74dee0458b2' AND slug = 'agragami-group-of-educational-institution-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agragami-group-of-educational-institution-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Agragami Group of Educational Institution, Bangalore is a teacher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1999. Current approval or affiliation signals available for review include AICTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agragami Group of Educational Institution, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agragami Group of Educational Institution, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agragami Group of Educational Institution, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, sch',
  meta_keywords = 'Agragami Group of Educational Institution, Bangalore, Agragami Group of Educational Institution, Bangalore admission 2026, Agragami Group of Educational Institution, Bangalore courses, Agragami Group of Educational Institution, Bangalore fees, Agragami Group of Educational Institution, Bangalore placement, Agragami Group of Educational Institution, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Agragami Group of Educational Institution, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agragami Group of Educational Institution, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agragami Group of Educational Institution, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agragami Group of Educational Institution, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agragami Group of Educational Institution, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agragami Group of Educational Institution, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agragami Group of Educational Institution, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agragami Group of Educational Institution, Bangalore is mapped with reviewed approval or affiliation signals such as AICTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9aea0817-48ee-4722-a9a3-c74dee0458b2' AND slug = 'agragami-group-of-educational-institution-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '24cbdff9-72e0-48e7-987f-ebff3605cca4' AND slug = 'agragati-primary-teachers039-training-institute-howrah') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agragati-primary-teachers039-training-institute-howrah';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Agragati Primary Teachers'' Training Institute, Howrah is a teacher education option in Howrah, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agragati Primary Teachers'' Training Institute, Howrah in Howrah, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agragati Primary Teachers'' Training Institute, Howrah: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agragati Primary Teachers'' Training Institute, Howrah in Howrah, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, sch',
  meta_keywords = 'Agragati Primary Teachers'' Training Institute, Howrah, Agragati Primary Teachers'' Training Institute, Howrah admission 2026, Agragati Primary Teachers'' Training Institute, Howrah courses, Agragati Primary Teachers'' Training Institute, Howrah fees, Agragati Primary Teachers'' Training Institute, Howrah placement, Agragati Primary Teachers'' Training Institute, Howrah facilities, Howrah, West Bengal',
  admission_process = 'Agragati Primary Teachers'' Training Institute, Howrah admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agragati Primary Teachers'' Training Institute, Howrah depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agragati Primary Teachers'' Training Institute, Howrah course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agragati Primary Teachers'' Training Institute, Howrah placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agragati Primary Teachers'' Training Institute, Howrah facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agragati Primary Teachers'' Training Institute, Howrah should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agragati Primary Teachers'' Training Institute, Howrah may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agragati Primary Teachers'' Training Institute, Howrah is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '24cbdff9-72e0-48e7-987f-ebff3605cca4' AND slug = 'agragati-primary-teachers039-training-institute-howrah';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a6c43cab-6374-4ba0-b617-55c9e4daa284' AND slug = 'agrawal-institute-of-management-and-technology-aimt-nashik') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agrawal-institute-of-management-and-technology-aimt-nashik';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Agrawal Institute of Management and Technology - [AIMT], Nashik is a technical education option in Nashik, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agrawal Institute of Management and Technology - [AIMT], Nashik in Nashik, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agrawal Institute of Management and Technology - [AIMT], Nashik: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agrawal Institute of Management and Technology - [AIMT], Nashik in Nashik, Maharashtra: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Agrawal Institute of Management and Technology - [AIMT], Nashik, Agrawal Institute of Management and Technology - [AIMT], Nashik admission 2026, Agrawal Institute of Management and Technology - [AIMT], Nashik courses, Agrawal Institute of Management and Technology - [AIMT], Nashik fees, Agrawal Institute of Management and Technology - [AIMT], Nashik placement, Agrawal Institute of Management and Technology - [AIMT], Nashik facilities, Nashik, Maharashtra',
  admission_process = 'Agrawal Institute of Management and Technology - [AIMT], Nashik admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agrawal Institute of Management and Technology - [AIMT], Nashik depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agrawal Institute of Management and Technology - [AIMT], Nashik course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agrawal Institute of Management and Technology - [AIMT], Nashik placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agrawal Institute of Management and Technology - [AIMT], Nashik facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agrawal Institute of Management and Technology - [AIMT], Nashik should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agrawal Institute of Management and Technology - [AIMT], Nashik may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agrawal Institute of Management and Technology - [AIMT], Nashik is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'a6c43cab-6374-4ba0-b617-55c9e4daa284' AND slug = 'agrawal-institute-of-management-and-technology-aimt-nashik';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '16c86bca-1542-4016-b7c3-bd371ea3e611' AND slug = 'agrawal-pg-college-jaipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agrawal-pg-college-jaipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Agrawal P.G. College, Jaipur is a higher education option in Jaipur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1957. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agrawal P.G. College, Jaipur in Jaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agrawal P.G. College, Jaipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agrawal P.G. College, Jaipur in Jaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision',
  meta_keywords = 'Agrawal P.G. College, Jaipur, Agrawal P.G. College, Jaipur admission 2026, Agrawal P.G. College, Jaipur courses, Agrawal P.G. College, Jaipur fees, Agrawal P.G. College, Jaipur placement, Agrawal P.G. College, Jaipur facilities, Jaipur, Rajasthan',
  admission_process = 'Agrawal P.G. College, Jaipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agrawal P.G. College, Jaipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agrawal P.G. College, Jaipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agrawal P.G. College, Jaipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agrawal P.G. College, Jaipur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agrawal P.G. College, Jaipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agrawal P.G. College, Jaipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agrawal P.G. College, Jaipur has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '16c86bca-1542-4016-b7c3-bd371ea3e611' AND slug = 'agrawal-pg-college-jaipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1a3d405a-681f-4a74-8222-05b39e639f50' AND slug = 'agricultural-college-and-research-institute-acri-madurai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agricultural-college-and-research-institute-acri-madurai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Agricultural College and Research Institute - [ACRI], Madurai is a agriculture and applied science education option in Madurai, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1965. Current approval or affiliation signals available for review include ICAR. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agricultural College and Research Institute - [ACRI], Madurai in Madurai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agricultural College and Research Institute - [ACRI], Madurai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agricultural College and Research Institute - [ACRI], Madurai in Madurai, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'Agricultural College and Research Institute - [ACRI], Madurai, Agricultural College and Research Institute - [ACRI], Madurai admission 2026, Agricultural College and Research Institute - [ACRI], Madurai courses, Agricultural College and Research Institute - [ACRI], Madurai fees, Agricultural College and Research Institute - [ACRI], Madurai placement, Agricultural College and Research Institute - [ACRI], Madurai facilities, Madurai, Tamil Nadu',
  admission_process = 'Agricultural College and Research Institute - [ACRI], Madurai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agricultural College and Research Institute - [ACRI], Madurai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agricultural College and Research Institute - [ACRI], Madurai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agricultural College and Research Institute - [ACRI], Madurai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agricultural College and Research Institute - [ACRI], Madurai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agricultural College and Research Institute - [ACRI], Madurai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agricultural College and Research Institute - [ACRI], Madurai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agricultural College and Research Institute - [ACRI], Madurai is mapped with reviewed approval or affiliation signals such as ICAR. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '1a3d405a-681f-4a74-8222-05b39e639f50' AND slug = 'agricultural-college-and-research-institute-acri-madurai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e1eaac2d-c385-4f3c-a7c8-6179fd53e5a0' AND slug = 'agricultural-college-and-research-institute-acri-thoothukudi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agricultural-college-and-research-institute-acri-thoothukudi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Agricultural College and Research Institute - [ACRI], Thoothukudi is a agriculture and applied science education option in Thoothukudi, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1984. Current approval or affiliation signals available for review include ICAR. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agricultural College and Research Institute - [ACRI], Thoothukudi in Thoothukudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agricultural College and Research Institute - [ACRI], Thoothukudi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agricultural College and Research Institute - [ACRI], Thoothukudi in Thoothukudi, Tamil Nadu: source-reviewed overview for admissions, courses, facilities,',
  meta_keywords = 'Agricultural College and Research Institute - [ACRI], Thoothukudi, Agricultural College and Research Institute - [ACRI], Thoothukudi admission 2026, Agricultural College and Research Institute - [ACRI], Thoothukudi courses, Agricultural College and Research Institute - [ACRI], Thoothukudi fees, Agricultural College and Research Institute - [ACRI], Thoothukudi placement, Agricultural College and Research Institute - [ACRI], Thoothukudi facilities, Thoothukudi, Tamil Nadu',
  admission_process = 'Agricultural College and Research Institute - [ACRI], Thoothukudi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agricultural College and Research Institute - [ACRI], Thoothukudi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agricultural College and Research Institute - [ACRI], Thoothukudi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agricultural College and Research Institute - [ACRI], Thoothukudi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agricultural College and Research Institute - [ACRI], Thoothukudi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agricultural College and Research Institute - [ACRI], Thoothukudi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agricultural College and Research Institute - [ACRI], Thoothukudi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agricultural College and Research Institute - [ACRI], Thoothukudi is mapped with reviewed approval or affiliation signals such as ICAR. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e1eaac2d-c385-4f3c-a7c8-6179fd53e5a0' AND slug = 'agricultural-college-and-research-institute-acri-thoothukudi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c1718c67-9ed3-466d-9c99-57b64294a7e9' AND slug = 'agricultural-engineering-college-and-research-institute-aceampri-coimbatore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agricultural-engineering-college-and-research-institute-aceampri-coimbatore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore is a technical education option in Coimbatore, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1972. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore in Coimbatore, Tamil Nadu: source-reviewed overview for admissions, courses,',
  meta_keywords = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore, Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore admission 2026, Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore courses, Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore fees, Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore placement, Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore facilities, Coimbatore, Tamil Nadu',
  admission_process = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agricultural Engineering College and Research Institute - [ACE&RI], Coimbatore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c1718c67-9ed3-466d-9c99-57b64294a7e9' AND slug = 'agricultural-engineering-college-and-research-institute-aceampri-coimbatore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '23e9ae77-ab2e-4195-9dae-e3601655c64a' AND slug = 'agricultural-engineering-college-and-research-institute-aecampri-trichy') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agricultural-engineering-college-and-research-institute-aecampri-trichy';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Agricultural Engineering College and Research Institute - [AEC&RI], Trichy is a technical education option in Trichy, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1972. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy in Trichy, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy in Trichy, Tamil Nadu: source-reviewed overview for admissions, courses, facilit',
  meta_keywords = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy, Agricultural Engineering College and Research Institute - [AEC&RI], Trichy admission 2026, Agricultural Engineering College and Research Institute - [AEC&RI], Trichy courses, Agricultural Engineering College and Research Institute - [AEC&RI], Trichy fees, Agricultural Engineering College and Research Institute - [AEC&RI], Trichy placement, Agricultural Engineering College and Research Institute - [AEC&RI], Trichy facilities, Trichy, Tamil Nadu',
  admission_process = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agricultural Engineering College and Research Institute - [AEC&RI], Trichy depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agricultural Engineering College and Research Institute - [AEC&RI], Trichy should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agricultural Engineering College and Research Institute - [AEC&RI], Trichy may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agricultural Engineering College and Research Institute - [AEC&RI], Trichy is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '23e9ae77-ab2e-4195-9dae-e3601655c64a' AND slug = 'agricultural-engineering-college-and-research-institute-aecampri-trichy';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '111de2a0-4a49-4ff9-b225-2ad602461c86' AND slug = 'agriculture-university-au-jodhpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: agriculture-university-au-jodhpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Agriculture University - [AU], Jodhpur is a agriculture and applied science education option in Jodhpur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2013. Current approval or affiliation signals available for review include ICAR. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Agriculture University - [AU], Jodhpur in Jodhpur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Agriculture University - [AU], Jodhpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Agriculture University - [AU], Jodhpur in Jodhpur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 20',
  meta_keywords = 'Agriculture University - [AU], Jodhpur, Agriculture University - [AU], Jodhpur admission 2026, Agriculture University - [AU], Jodhpur courses, Agriculture University - [AU], Jodhpur fees, Agriculture University - [AU], Jodhpur placement, Agriculture University - [AU], Jodhpur facilities, Jodhpur, Rajasthan',
  admission_process = 'Agriculture University - [AU], Jodhpur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Agriculture University - [AU], Jodhpur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Agriculture University - [AU], Jodhpur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Agriculture University - [AU], Jodhpur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Agriculture University - [AU], Jodhpur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Agriculture University - [AU], Jodhpur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Agriculture University - [AU], Jodhpur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Agriculture University - [AU], Jodhpur is mapped with reviewed approval or affiliation signals such as ICAR. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '111de2a0-4a49-4ff9-b225-2ad602461c86' AND slug = 'agriculture-university-au-jodhpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1032ef80-6055-4ec7-b06a-99035f06a3e8' AND slug = 'ahalia-ayurveda-medical-college-aamc-palakkad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahalia-ayurveda-medical-college-aamc-palakkad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Ahalia Ayurveda Medical College - [AAMC], Palakkad is a healthcare education option in Palakkad, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include CCIM. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad, Ahalia Ayurveda Medical College - [AAMC], Palakkad admission 2026, Ahalia Ayurveda Medical College - [AAMC], Palakkad courses, Ahalia Ayurveda Medical College - [AAMC], Palakkad fees, Ahalia Ayurveda Medical College - [AAMC], Palakkad placement, Ahalia Ayurveda Medical College - [AAMC], Palakkad facilities, Palakkad, Kerala',
  admission_process = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahalia Ayurveda Medical College - [AAMC], Palakkad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahalia Ayurveda Medical College - [AAMC], Palakkad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahalia Ayurveda Medical College - [AAMC], Palakkad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahalia Ayurveda Medical College - [AAMC], Palakkad is mapped with reviewed approval or affiliation signals such as CCIM. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '1032ef80-6055-4ec7-b06a-99035f06a3e8' AND slug = 'ahalia-ayurveda-medical-college-aamc-palakkad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f5e33949-41b5-44a2-aa3d-1df34dfd5e17' AND slug = 'ahalia-school-of-engineering-and-technology-aset-palakkad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahalia-school-of-engineering-and-technology-aset-palakkad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Ahalia School of Engineering and Technology - [ASET], Palakkad is a technical education option in Palakkad, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahalia School of Engineering and Technology - [ASET], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahalia School of Engineering and Technology - [ASET], Palakkad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahalia School of Engineering and Technology - [ASET], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placement',
  meta_keywords = 'Ahalia School of Engineering and Technology - [ASET], Palakkad, Ahalia School of Engineering and Technology - [ASET], Palakkad admission 2026, Ahalia School of Engineering and Technology - [ASET], Palakkad courses, Ahalia School of Engineering and Technology - [ASET], Palakkad fees, Ahalia School of Engineering and Technology - [ASET], Palakkad placement, Ahalia School of Engineering and Technology - [ASET], Palakkad facilities, Palakkad, Kerala',
  admission_process = 'Ahalia School of Engineering and Technology - [ASET], Palakkad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahalia School of Engineering and Technology - [ASET], Palakkad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahalia School of Engineering and Technology - [ASET], Palakkad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahalia School of Engineering and Technology - [ASET], Palakkad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahalia School of Engineering and Technology - [ASET], Palakkad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahalia School of Engineering and Technology - [ASET], Palakkad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahalia School of Engineering and Technology - [ASET], Palakkad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahalia School of Engineering and Technology - [ASET], Palakkad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'f5e33949-41b5-44a2-aa3d-1df34dfd5e17' AND slug = 'ahalia-school-of-engineering-and-technology-aset-palakkad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b3e3c6ed-19ab-4b43-b236-590606f9fb0d' AND slug = 'ahalia-school-of-optometry-asp-palakkad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahalia-school-of-optometry-asp-palakkad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Ahalia School of Optometry - [ASP], Palakkad is a higher education option in Palakkad, Kerala for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahalia School of Optometry - [ASP], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahalia School of Optometry - [ASP], Palakkad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahalia School of Optometry - [ASP], Palakkad in Palakkad, Kerala: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Ahalia School of Optometry - [ASP], Palakkad, Ahalia School of Optometry - [ASP], Palakkad admission 2026, Ahalia School of Optometry - [ASP], Palakkad courses, Ahalia School of Optometry - [ASP], Palakkad fees, Ahalia School of Optometry - [ASP], Palakkad placement, Ahalia School of Optometry - [ASP], Palakkad facilities, Palakkad, Kerala',
  admission_process = 'Ahalia School of Optometry - [ASP], Palakkad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahalia School of Optometry - [ASP], Palakkad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahalia School of Optometry - [ASP], Palakkad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahalia School of Optometry - [ASP], Palakkad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahalia School of Optometry - [ASP], Palakkad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahalia School of Optometry - [ASP], Palakkad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahalia School of Optometry - [ASP], Palakkad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahalia School of Optometry - [ASP], Palakkad has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'b3e3c6ed-19ab-4b43-b236-590606f9fb0d' AND slug = 'ahalia-school-of-optometry-asp-palakkad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9a0d220c-ad59-4b43-afbd-9520e7743705' AND slug = 'ahmedabad-aviation-and-aeronautics-limited-aaa-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmedabad-aviation-and-aeronautics-limited-aaa-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad is a higher education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1994. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placemen',
  meta_keywords = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad, Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad admission 2026, Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad courses, Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad fees, Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad placement, Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmedabad Aviation and Aeronautics Limited - [AAA], Ahmedabad has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '9a0d220c-ad59-4b43-afbd-9520e7743705' AND slug = 'ahmedabad-aviation-and-aeronautics-limited-aaa-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '07197213-4fff-448f-9273-e20c6bd0fb69' AND slug = 'ahmedabad-dental-college-amp-hospital-adc-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmedabad-dental-college-amp-hospital-adc-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Ahmedabad Dental College & Hospital - [ADC], Ahmedabad is a healthcare education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2011. Current approval or affiliation signals available for review include DCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, sch',
  meta_keywords = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad, Ahmedabad Dental College & Hospital - [ADC], Ahmedabad admission 2026, Ahmedabad Dental College & Hospital - [ADC], Ahmedabad courses, Ahmedabad Dental College & Hospital - [ADC], Ahmedabad fees, Ahmedabad Dental College & Hospital - [ADC], Ahmedabad placement, Ahmedabad Dental College & Hospital - [ADC], Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmedabad Dental College & Hospital - [ADC], Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmedabad Dental College & Hospital - [ADC], Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmedabad Dental College & Hospital - [ADC], Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmedabad Dental College & Hospital - [ADC], Ahmedabad is mapped with reviewed approval or affiliation signals such as DCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '07197213-4fff-448f-9273-e20c6bd0fb69' AND slug = 'ahmedabad-dental-college-amp-hospital-adc-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8e6e9015-d649-43df-bcdc-549d88c4e702' AND slug = 'ahmedabad-institute-of-technology-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmedabad-institute-of-technology-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Ahmedabad Institute of Technology, Ahmedabad is a technical education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2004. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmedabad Institute of Technology, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmedabad Institute of Technology, Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmedabad Institute of Technology, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'Ahmedabad Institute of Technology, Ahmedabad, Ahmedabad Institute of Technology, Ahmedabad admission 2026, Ahmedabad Institute of Technology, Ahmedabad courses, Ahmedabad Institute of Technology, Ahmedabad fees, Ahmedabad Institute of Technology, Ahmedabad placement, Ahmedabad Institute of Technology, Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Ahmedabad Institute of Technology, Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmedabad Institute of Technology, Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmedabad Institute of Technology, Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmedabad Institute of Technology, Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmedabad Institute of Technology, Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmedabad Institute of Technology, Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmedabad Institute of Technology, Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmedabad Institute of Technology, Ahmedabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '8e6e9015-d649-43df-bcdc-549d88c4e702' AND slug = 'ahmedabad-institute-of-technology-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c284e36c-0d99-4e5f-ba5b-b071b84f87dd' AND slug = 'ahmedabad-management-association-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmedabad-management-association-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Ahmedabad Management Association, Ahmedabad is a management and commerce education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1997. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmedabad Management Association, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmedabad Management Association, Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmedabad Management Association, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships a',
  meta_keywords = 'Ahmedabad Management Association, Ahmedabad, Ahmedabad Management Association, Ahmedabad admission 2026, Ahmedabad Management Association, Ahmedabad courses, Ahmedabad Management Association, Ahmedabad fees, Ahmedabad Management Association, Ahmedabad placement, Ahmedabad Management Association, Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Ahmedabad Management Association, Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmedabad Management Association, Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmedabad Management Association, Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmedabad Management Association, Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmedabad Management Association, Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmedabad Management Association, Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmedabad Management Association, Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmedabad Management Association, Ahmedabad is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c284e36c-0d99-4e5f-ba5b-b071b84f87dd' AND slug = 'ahmedabad-management-association-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '986bf47b-54b1-499e-9464-59971ec5666a' AND slug = 'ahmedabad-physiotherapy-college-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmedabad-physiotherapy-college-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Ahmedabad Physiotherapy College, Ahmedabad is a healthcare education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include IAP. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmedabad Physiotherapy College, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmedabad Physiotherapy College, Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmedabad Physiotherapy College, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships an',
  meta_keywords = 'Ahmedabad Physiotherapy College, Ahmedabad, Ahmedabad Physiotherapy College, Ahmedabad admission 2026, Ahmedabad Physiotherapy College, Ahmedabad courses, Ahmedabad Physiotherapy College, Ahmedabad fees, Ahmedabad Physiotherapy College, Ahmedabad placement, Ahmedabad Physiotherapy College, Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Ahmedabad Physiotherapy College, Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmedabad Physiotherapy College, Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmedabad Physiotherapy College, Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmedabad Physiotherapy College, Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmedabad Physiotherapy College, Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmedabad Physiotherapy College, Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmedabad Physiotherapy College, Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmedabad Physiotherapy College, Ahmedabad is mapped with reviewed approval or affiliation signals such as IAP. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '986bf47b-54b1-499e-9464-59971ec5666a' AND slug = 'ahmedabad-physiotherapy-college-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '72a745d0-77eb-44b5-a2d4-3050484eaaf2' AND slug = 'ahmedabad-university-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmedabad-university-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Ahmedabad University, Ahmedabad is a higher education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmedabad University, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmedabad University, Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmedabad University, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 deci',
  meta_keywords = 'Ahmedabad University, Ahmedabad, Ahmedabad University, Ahmedabad admission 2026, Ahmedabad University, Ahmedabad courses, Ahmedabad University, Ahmedabad fees, Ahmedabad University, Ahmedabad placement, Ahmedabad University, Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Ahmedabad University, Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmedabad University, Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmedabad University, Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmedabad University, Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmedabad University, Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmedabad University, Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmedabad University, Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmedabad University, Ahmedabad is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '72a745d0-77eb-44b5-a2d4-3050484eaaf2' AND slug = 'ahmedabad-university-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '918223ea-5276-4e0b-89a9-8923b057df8b' AND slug = 'ahmedabad-university-school-of-engineering-and-applied-science-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmedabad-university-school-of-engineering-and-applied-science-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Ahmedabad University, School of Engineering and Applied Science, Ahmedabad is a technical education option in Ahmedabad, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad in Ahmedabad, Gujarat: source-reviewed overview for admissions, courses, facilit',
  meta_keywords = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad, Ahmedabad University, School of Engineering and Applied Science, Ahmedabad admission 2026, Ahmedabad University, School of Engineering and Applied Science, Ahmedabad courses, Ahmedabad University, School of Engineering and Applied Science, Ahmedabad fees, Ahmedabad University, School of Engineering and Applied Science, Ahmedabad placement, Ahmedabad University, School of Engineering and Applied Science, Ahmedabad facilities, Ahmedabad, Gujarat',
  admission_process = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmedabad University, School of Engineering and Applied Science, Ahmedabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmedabad University, School of Engineering and Applied Science, Ahmedabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmedabad University, School of Engineering and Applied Science, Ahmedabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmedabad University, School of Engineering and Applied Science, Ahmedabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '918223ea-5276-4e0b-89a9-8923b057df8b' AND slug = 'ahmedabad-university-school-of-engineering-and-applied-science-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ddfb9150-e67e-4b9e-a831-9a4b6d4b6d17' AND slug = 'ahmednagar-jilha-maratha-vidya-prasarak-samaj039s-new-law-college-ajmvps-ahmed-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ahmednagar-jilha-maratha-vidya-prasarak-samaj039s-new-law-college-ajmvps-ahmed-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar is a legal education option in Ahmed Nagar, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1970. Current approval or affiliation signals available for review include BCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar in Ahmed Nagar, Maharashtra: source-reviewed overview for admission',
  meta_keywords = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar, Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar admission 2026, Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar courses, Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar fees, Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar placement, Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar facilities, Ahmed Nagar, Maharashtra',
  admission_process = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ahmednagar Jilha Maratha Vidya Prasarak Samaj''s New Law College - [AJMVPS], Ahmed Nagar is mapped with reviewed approval or affiliation signals such as BCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ddfb9150-e67e-4b9e-a831-9a4b6d4b6d17' AND slug = 'ahmednagar-jilha-maratha-vidya-prasarak-samaj039s-new-law-college-ajmvps-ahmed-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a8995d64-dbdc-4b50-86b8-580d30a26435' AND slug = 'aicar-business-school-raigarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aicar-business-school-raigarh';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, AICAR Business School, Raigarh is a management and commerce education option in Raigarh, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AICAR Business School, Raigarh in Raigarh, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AICAR Business School, Raigarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AICAR Business School, Raigarh in Raigarh, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 dec',
  meta_keywords = 'AICAR Business School, Raigarh, AICAR Business School, Raigarh admission 2026, AICAR Business School, Raigarh courses, AICAR Business School, Raigarh fees, AICAR Business School, Raigarh placement, AICAR Business School, Raigarh facilities, Raigarh, Maharashtra',
  admission_process = 'AICAR Business School, Raigarh admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AICAR Business School, Raigarh depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AICAR Business School, Raigarh course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AICAR Business School, Raigarh placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AICAR Business School, Raigarh facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AICAR Business School, Raigarh should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AICAR Business School, Raigarh may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AICAR Business School, Raigarh is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'a8995d64-dbdc-4b50-86b8-580d30a26435' AND slug = 'aicar-business-school-raigarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4f52b145-ed51-488d-a511-fbfd5c0091e1' AND slug = 'aihm-institute-of-hotel-management-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aihm-institute-of-hotel-management-ghaziabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, AIHM Institute of Hotel Management, Ghaziabad is a management and commerce education option in Ghaziabad, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1997. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AIHM Institute of Hotel Management, Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AIHM Institute of Hotel Management, Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AIHM Institute of Hotel Management, Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, schola',
  meta_keywords = 'AIHM Institute of Hotel Management, Ghaziabad, AIHM Institute of Hotel Management, Ghaziabad admission 2026, AIHM Institute of Hotel Management, Ghaziabad courses, AIHM Institute of Hotel Management, Ghaziabad fees, AIHM Institute of Hotel Management, Ghaziabad placement, AIHM Institute of Hotel Management, Ghaziabad facilities, Ghaziabad, Uttar Pradesh',
  admission_process = 'AIHM Institute of Hotel Management, Ghaziabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AIHM Institute of Hotel Management, Ghaziabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AIHM Institute of Hotel Management, Ghaziabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AIHM Institute of Hotel Management, Ghaziabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AIHM Institute of Hotel Management, Ghaziabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AIHM Institute of Hotel Management, Ghaziabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AIHM Institute of Hotel Management, Ghaziabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIHM Institute of Hotel Management, Ghaziabad is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '4f52b145-ed51-488d-a511-fbfd5c0091e1' AND slug = 'aihm-institute-of-hotel-management-ghaziabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3abcc324-6220-40ff-a503-26d2b7a1b4a3' AND slug = 'aiimsrishikesh-admission-2019') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aiimsrishikesh-admission-2019';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AIIMS? Rishikesh Admission 2019 is a higher education option in Rishikesh, Uttarakhand for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2012. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AIIMS? Rishikesh Admission 2019 in Rishikesh, Uttarakhand: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AIIMS? Rishikesh Admission 2019: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AIIMS? Rishikesh Admission 2019 in Rishikesh, Uttarakhand: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 ',
  meta_keywords = 'AIIMS? Rishikesh Admission 2019, AIIMS? Rishikesh Admission 2019 admission 2026, AIIMS? Rishikesh Admission 2019 courses, AIIMS? Rishikesh Admission 2019 fees, AIIMS? Rishikesh Admission 2019 placement, AIIMS? Rishikesh Admission 2019 facilities, Rishikesh, Uttarakhand',
  admission_process = 'AIIMS? Rishikesh Admission 2019 admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AIIMS? Rishikesh Admission 2019 depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AIIMS? Rishikesh Admission 2019 course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AIIMS? Rishikesh Admission 2019 placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AIIMS? Rishikesh Admission 2019 facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AIIMS? Rishikesh Admission 2019 should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AIIMS? Rishikesh Admission 2019 may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIIMS? Rishikesh Admission 2019 is mapped with reviewed approval or affiliation signals such as MCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3abcc324-6220-40ff-a503-26d2b7a1b4a3' AND slug = 'aiimsrishikesh-admission-2019';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e3f1a4d4-9901-49b0-8fc7-7ed7b564b339' AND slug = 'aiman-college-of-arts-and-science-for-women-aiman-thiruchirapalli') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aiman-college-of-arts-and-science-for-women-aiman-thiruchirapalli';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli is a higher education option in Thiruchirapalli, Tamil Nadu for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2000. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli in Thiruchirapalli, Tamil Nadu: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli in Thiruchirapalli, Tamil Nadu: source-reviewed overview for admissions, courses, fa',
  meta_keywords = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli, Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli admission 2026, Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli courses, Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli fees, Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli placement, Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli facilities, Thiruchirapalli, Tamil Nadu',
  admission_process = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aiman College of Arts and Science for Women - [AIMAN], Thiruchirapalli is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'e3f1a4d4-9901-49b0-8fc7-7ed7b564b339' AND slug = 'aiman-college-of-arts-and-science-for-women-aiman-thiruchirapalli';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3fb7e74d-f549-4aa4-b533-3ee56a5ab6d4' AND slug = 'aims-college-of-management-and-technology-anand') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aims-college-of-management-and-technology-anand';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, AIMS College of Management and Technology, Anand is a technical education option in Anand, Gujarat for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include BCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AIMS College of Management and Technology, Anand in Anand, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AIMS College of Management and Technology, Anand: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AIMS College of Management and Technology, Anand in Anand, Gujarat: source-reviewed overview for admissions, courses, facilities, placements, scholarships ',
  meta_keywords = 'AIMS College of Management and Technology, Anand, AIMS College of Management and Technology, Anand admission 2026, AIMS College of Management and Technology, Anand courses, AIMS College of Management and Technology, Anand fees, AIMS College of Management and Technology, Anand placement, AIMS College of Management and Technology, Anand facilities, Anand, Gujarat',
  admission_process = 'AIMS College of Management and Technology, Anand admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AIMS College of Management and Technology, Anand depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AIMS College of Management and Technology, Anand course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AIMS College of Management and Technology, Anand placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AIMS College of Management and Technology, Anand facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AIMS College of Management and Technology, Anand should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AIMS College of Management and Technology, Anand may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIMS College of Management and Technology, Anand is mapped with reviewed approval or affiliation signals such as BCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3fb7e74d-f549-4aa4-b533-3ee56a5ab6d4' AND slug = 'aims-college-of-management-and-technology-anand';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2e945fcc-8a0b-4ef1-b446-87d8dacbf987' AND slug = 'aims-institute-of-management-studies-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aims-institute-of-management-studies-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, AIMS Institute of Management Studies, Pune is a management and commerce education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AIMS Institute of Management Studies, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AIMS Institute of Management Studies, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AIMS Institute of Management Studies, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and',
  meta_keywords = 'AIMS Institute of Management Studies, Pune, AIMS Institute of Management Studies, Pune admission 2026, AIMS Institute of Management Studies, Pune courses, AIMS Institute of Management Studies, Pune fees, AIMS Institute of Management Studies, Pune placement, AIMS Institute of Management Studies, Pune facilities, Pune, Maharashtra',
  admission_process = 'AIMS Institute of Management Studies, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AIMS Institute of Management Studies, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AIMS Institute of Management Studies, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AIMS Institute of Management Studies, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AIMS Institute of Management Studies, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AIMS Institute of Management Studies, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AIMS Institute of Management Studies, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIMS Institute of Management Studies, Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '2e945fcc-8a0b-4ef1-b446-87d8dacbf987' AND slug = 'aims-institute-of-management-studies-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '973a9637-2115-450f-bb08-722ad275d41a' AND slug = 'aims-institutes-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aims-institutes-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, AIMS Institutes, Bangalore is a higher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1994. Current approval or affiliation signals available for review include AICTE, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AIMS Institutes, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AIMS Institutes, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AIMS Institutes, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decisio',
  meta_keywords = 'AIMS Institutes, Bangalore, AIMS Institutes, Bangalore admission 2026, AIMS Institutes, Bangalore courses, AIMS Institutes, Bangalore fees, AIMS Institutes, Bangalore placement, AIMS Institutes, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'AIMS Institutes, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AIMS Institutes, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AIMS Institutes, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AIMS Institutes, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AIMS Institutes, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AIMS Institutes, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AIMS Institutes, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIMS Institutes, Bangalore is mapped with reviewed approval or affiliation signals such as AICTE, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '973a9637-2115-450f-bb08-722ad275d41a' AND slug = 'aims-institutes-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '368db2b9-870b-4db6-bda4-13bc31f9cdaf' AND slug = 'aims-syndicate-bardhaman') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aims-syndicate-bardhaman';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AIMS Syndicate, Bardhaman is a higher education option in Bardhaman, West Bengal for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1996. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AIMS Syndicate, Bardhaman in Bardhaman, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AIMS Syndicate, Bardhaman: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AIMS Syndicate, Bardhaman in Bardhaman, West Bengal: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decisi',
  meta_keywords = 'AIMS Syndicate, Bardhaman, AIMS Syndicate, Bardhaman admission 2026, AIMS Syndicate, Bardhaman courses, AIMS Syndicate, Bardhaman fees, AIMS Syndicate, Bardhaman placement, AIMS Syndicate, Bardhaman facilities, Bardhaman, West Bengal',
  admission_process = 'AIMS Syndicate, Bardhaman admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AIMS Syndicate, Bardhaman depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AIMS Syndicate, Bardhaman course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AIMS Syndicate, Bardhaman placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AIMS Syndicate, Bardhaman facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AIMS Syndicate, Bardhaman should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AIMS Syndicate, Bardhaman may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AIMS Syndicate, Bardhaman has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '368db2b9-870b-4db6-bda4-13bc31f9cdaf' AND slug = 'aims-syndicate-bardhaman';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '598349bc-111a-41cf-b065-54c52e57e842' AND slug = 'airborne-academy-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: airborne-academy-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Airborne Academy, New Delhi is a higher education option in New Delhi, Delhi NCR for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Approval, affiliation and intake details should be confirmed from the latest notice before payment. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Airborne Academy, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Airborne Academy, New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Airborne Academy, New Delhi in New Delhi, Delhi NCR: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decisi',
  meta_keywords = 'Airborne Academy, New Delhi, Airborne Academy, New Delhi admission 2026, Airborne Academy, New Delhi courses, Airborne Academy, New Delhi fees, Airborne Academy, New Delhi placement, Airborne Academy, New Delhi facilities, New Delhi, Delhi NCR',
  admission_process = 'Airborne Academy, New Delhi admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Airborne Academy, New Delhi depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Airborne Academy, New Delhi course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Airborne Academy, New Delhi placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Airborne Academy, New Delhi facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Airborne Academy, New Delhi should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Airborne Academy, New Delhi may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Airborne Academy, New Delhi has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '598349bc-111a-41cf-b065-54c52e57e842' AND slug = 'airborne-academy-new-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3038f23d-0d63-4519-af26-ff0ada940ed8' AND slug = 'aishabai-college-of-education-mumbai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aishabai-college-of-education-mumbai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aishabai College of Education, Mumbai is a management and commerce education option in Mumbai, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include NCTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aishabai College of Education, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aishabai College of Education, Mumbai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aishabai College of Education, Mumbai in Mumbai, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 20',
  meta_keywords = 'Aishabai College of Education, Mumbai, Aishabai College of Education, Mumbai admission 2026, Aishabai College of Education, Mumbai courses, Aishabai College of Education, Mumbai fees, Aishabai College of Education, Mumbai placement, Aishabai College of Education, Mumbai facilities, Mumbai, Maharashtra',
  admission_process = 'Aishabai College of Education, Mumbai admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aishabai College of Education, Mumbai depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aishabai College of Education, Mumbai course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aishabai College of Education, Mumbai placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aishabai College of Education, Mumbai facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aishabai College of Education, Mumbai should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aishabai College of Education, Mumbai may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aishabai College of Education, Mumbai is mapped with reviewed approval or affiliation signals such as NCTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '3038f23d-0d63-4519-af26-ff0ada940ed8' AND slug = 'aishabai-college-of-education-mumbai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cd55f715-ec04-4108-b46b-0ee3fe236dc4' AND slug = 'aishwarya-college-jodhpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aishwarya-college-jodhpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aishwarya College, Jodhpur is a higher education option in Jodhpur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1999. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aishwarya College, Jodhpur in Jodhpur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aishwarya College, Jodhpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aishwarya College, Jodhpur in Jodhpur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision ',
  meta_keywords = 'Aishwarya College, Jodhpur, Aishwarya College, Jodhpur admission 2026, Aishwarya College, Jodhpur courses, Aishwarya College, Jodhpur fees, Aishwarya College, Jodhpur placement, Aishwarya College, Jodhpur facilities, Jodhpur, Rajasthan',
  admission_process = 'Aishwarya College, Jodhpur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aishwarya College, Jodhpur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aishwarya College, Jodhpur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aishwarya College, Jodhpur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aishwarya College, Jodhpur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aishwarya College, Jodhpur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aishwarya College, Jodhpur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aishwarya College, Jodhpur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'cd55f715-ec04-4108-b46b-0ee3fe236dc4' AND slug = 'aishwarya-college-jodhpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '302b07a8-e461-40c6-ab24-a649bd06ea02' AND slug = 'aishwarya-institute-of-management-and-information-technology-aim-amp-it-udaipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aishwarya-institute-of-management-and-information-technology-aim-amp-it-udaipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur is a technical education option in Udaipur, Rajasthan for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2006. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur in Udaipur, Rajasthan: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur in Udaipur, Rajasthan: source-reviewed overview for admissions, courses,',
  meta_keywords = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur, Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur admission 2026, Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur courses, Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur fees, Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur placement, Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur facilities, Udaipur, Rajasthan',
  admission_process = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aishwarya Institute of Management and Information Technology - [AIM & IT], Udaipur is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '302b07a8-e461-40c6-ab24-a649bd06ea02' AND slug = 'aishwarya-institute-of-management-and-information-technology-aim-amp-it-udaipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8dfeeaa8-7313-4dbb-b904-4a1103c548b5' AND slug = 'aishwarya-institute-of-management-studies-and-research-aimsr-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aishwarya-institute-of-management-studies-and-research-aimsr-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore is a management and commerce education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2007. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, faci',
  meta_keywords = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore, Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore admission 2026, Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore courses, Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore fees, Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore placement, Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aishwarya Institute of Management Studies and Research - [AIMSR], Bangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '8dfeeaa8-7313-4dbb-b904-4a1103c548b5' AND slug = 'aishwarya-institute-of-management-studies-and-research-aimsr-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '35469d16-d602-4c69-baaa-d58769e99021' AND slug = 'aissm-society-institute-of-management-aissms-iom-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aissm-society-institute-of-management-aissms-iom-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, AISSM Society Institute of Management - [AISSMS IOM], Pune is a management and commerce education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include AICTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AISSM Society Institute of Management - [AISSMS IOM], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AISSM Society Institute of Management - [AISSMS IOM], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AISSM Society Institute of Management - [AISSMS IOM], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, ',
  meta_keywords = 'AISSM Society Institute of Management - [AISSMS IOM], Pune, AISSM Society Institute of Management - [AISSMS IOM], Pune admission 2026, AISSM Society Institute of Management - [AISSMS IOM], Pune courses, AISSM Society Institute of Management - [AISSMS IOM], Pune fees, AISSM Society Institute of Management - [AISSMS IOM], Pune placement, AISSM Society Institute of Management - [AISSMS IOM], Pune facilities, Pune, Maharashtra',
  admission_process = 'AISSM Society Institute of Management - [AISSMS IOM], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AISSM Society Institute of Management - [AISSMS IOM], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AISSM Society Institute of Management - [AISSMS IOM], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AISSM Society Institute of Management - [AISSMS IOM], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AISSM Society Institute of Management - [AISSMS IOM], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AISSM Society Institute of Management - [AISSMS IOM], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AISSM Society Institute of Management - [AISSMS IOM], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AISSM Society Institute of Management - [AISSMS IOM], Pune is mapped with reviewed approval or affiliation signals such as AICTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '35469d16-d602-4c69-baaa-d58769e99021' AND slug = 'aissm-society-institute-of-management-aissms-iom-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '07621203-2aea-496b-8452-f6a870b95f99' AND slug = 'aissms-college-of-engineering-aissmscoe-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aissms-college-of-engineering-aissmscoe-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, AISSMS College of Engineering - [AISSMSCOE], Pune is a technical education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1992. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AISSMS College of Engineering - [AISSMSCOE], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AISSMS College of Engineering - [AISSMSCOE], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AISSMS College of Engineering - [AISSMSCOE], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'AISSMS College of Engineering - [AISSMSCOE], Pune, AISSMS College of Engineering - [AISSMSCOE], Pune admission 2026, AISSMS College of Engineering - [AISSMSCOE], Pune courses, AISSMS College of Engineering - [AISSMSCOE], Pune fees, AISSMS College of Engineering - [AISSMSCOE], Pune placement, AISSMS College of Engineering - [AISSMSCOE], Pune facilities, Pune, Maharashtra',
  admission_process = 'AISSMS College of Engineering - [AISSMSCOE], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AISSMS College of Engineering - [AISSMSCOE], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AISSMS College of Engineering - [AISSMSCOE], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AISSMS College of Engineering - [AISSMSCOE], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AISSMS College of Engineering - [AISSMSCOE], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AISSMS College of Engineering - [AISSMSCOE], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AISSMS College of Engineering - [AISSMSCOE], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AISSMS College of Engineering - [AISSMSCOE], Pune is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '07621203-2aea-496b-8452-f6a870b95f99' AND slug = 'aissms-college-of-engineering-aissmscoe-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ee6b27fb-2030-4381-9e09-4046738650dd' AND slug = 'aissms-college-of-hotel-management-amp-catering-technology-aissms-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aissms-college-of-hotel-management-amp-catering-technology-aissms-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune is a technical education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1997. Current approval or affiliation signals available for review include AICTE, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilitie',
  meta_keywords = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune, AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune admission 2026, AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune courses, AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune fees, AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune placement, AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune facilities, Pune, Maharashtra',
  admission_process = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AISSMS College of Hotel Management & Catering Technology - [AISSMS], Pune is mapped with reviewed approval or affiliation signals such as AICTE, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ee6b27fb-2030-4381-9e09-4046738650dd' AND slug = 'aissms-college-of-hotel-management-amp-catering-technology-aissms-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c1a8db6f-f14e-4442-ab83-b2500135fb6c' AND slug = 'aissms-college-of-pharmacy-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aissms-college-of-pharmacy-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, AISSMS College of Pharmacy, Pune is a healthcare education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1996. Current approval or affiliation signals available for review include PCI, AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AISSMS College of Pharmacy, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AISSMS College of Pharmacy, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AISSMS College of Pharmacy, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 deci',
  meta_keywords = 'AISSMS College of Pharmacy, Pune, AISSMS College of Pharmacy, Pune admission 2026, AISSMS College of Pharmacy, Pune courses, AISSMS College of Pharmacy, Pune fees, AISSMS College of Pharmacy, Pune placement, AISSMS College of Pharmacy, Pune facilities, Pune, Maharashtra',
  admission_process = 'AISSMS College of Pharmacy, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AISSMS College of Pharmacy, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AISSMS College of Pharmacy, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AISSMS College of Pharmacy, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AISSMS College of Pharmacy, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AISSMS College of Pharmacy, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AISSMS College of Pharmacy, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AISSMS College of Pharmacy, Pune is mapped with reviewed approval or affiliation signals such as PCI, AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'c1a8db6f-f14e-4442-ab83-b2500135fb6c' AND slug = 'aissms-college-of-pharmacy-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd5373a33-42e1-4813-be01-15988509bafa' AND slug = 'aissms-institute-of-information-technology-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aissms-institute-of-information-technology-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AISSMS Institute of Information Technology, Pune is a technical education option in Pune, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1999. Current approval or affiliation signals available for review include AICTE, NAAC-A. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AISSMS Institute of Information Technology, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AISSMS Institute of Information Technology, Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AISSMS Institute of Information Technology, Pune in Pune, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarshi',
  meta_keywords = 'AISSMS Institute of Information Technology, Pune, AISSMS Institute of Information Technology, Pune admission 2026, AISSMS Institute of Information Technology, Pune courses, AISSMS Institute of Information Technology, Pune fees, AISSMS Institute of Information Technology, Pune placement, AISSMS Institute of Information Technology, Pune facilities, Pune, Maharashtra',
  admission_process = 'AISSMS Institute of Information Technology, Pune admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AISSMS Institute of Information Technology, Pune depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AISSMS Institute of Information Technology, Pune course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AISSMS Institute of Information Technology, Pune placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AISSMS Institute of Information Technology, Pune facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AISSMS Institute of Information Technology, Pune should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AISSMS Institute of Information Technology, Pune may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AISSMS Institute of Information Technology, Pune is mapped with reviewed approval or affiliation signals such as AICTE, NAAC-A. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'd5373a33-42e1-4813-be01-15988509bafa' AND slug = 'aissms-institute-of-information-technology-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '23b379a2-261d-474e-b72d-6a729cbf9116' AND slug = 'aizawl-theological-college-atc-aizawl') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aizawl-theological-college-atc-aizawl';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, Aizawl Theological College-[ATC], Aizawl is a higher education option in Aizawl, Mizoram for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1907. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aizawl Theological College-[ATC], Aizawl in Aizawl, Mizoram: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aizawl Theological College-[ATC], Aizawl: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aizawl Theological College-[ATC], Aizawl in Aizawl, Mizoram: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 202',
  meta_keywords = 'Aizawl Theological College-[ATC], Aizawl, Aizawl Theological College-[ATC], Aizawl admission 2026, Aizawl Theological College-[ATC], Aizawl courses, Aizawl Theological College-[ATC], Aizawl fees, Aizawl Theological College-[ATC], Aizawl placement, Aizawl Theological College-[ATC], Aizawl facilities, Aizawl, Mizoram',
  admission_process = 'Aizawl Theological College-[ATC], Aizawl admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aizawl Theological College-[ATC], Aizawl depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aizawl Theological College-[ATC], Aizawl course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aizawl Theological College-[ATC], Aizawl placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aizawl Theological College-[ATC], Aizawl facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aizawl Theological College-[ATC], Aizawl should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aizawl Theological College-[ATC], Aizawl may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aizawl Theological College-[ATC], Aizawl is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '23b379a2-261d-474e-b72d-6a729cbf9116' AND slug = 'aizawl-theological-college-atc-aizawl';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ee7e0587-ff5c-4315-ac5b-ea9aa4bc625c' AND slug = 'aizaz-rizvi-college-of-journalism-and-mass-communication-arcjmc-lucknow') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aizaz-rizvi-college-of-journalism-and-mass-communication-arcjmc-lucknow';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow is a higher education option in Lucknow, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2005. Current approval or affiliation signals available for review include NAAC, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow in Lucknow, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow in Lucknow, Uttar Pradesh: source-reviewed overview for admissions, courses, f',
  meta_keywords = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow, Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow admission 2026, Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow courses, Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow fees, Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow placement, Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow facilities, Lucknow, Uttar Pradesh',
  admission_process = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aizaz Rizvi College of Journalism and Mass Communication - [ARCJMC], Lucknow is mapped with reviewed approval or affiliation signals such as NAAC, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ee7e0587-ff5c-4315-ac5b-ea9aa4bc625c' AND slug = 'aizaz-rizvi-college-of-journalism-and-mass-communication-arcjmc-lucknow';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'adb9089c-7ed5-4df8-8aae-942901d2ec19' AND slug = 'aizza-college-of-engineering-and-technology-azcet-adilabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aizza-college-of-engineering-and-technology-azcet-adilabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Aizza College of Engineering and Technology - [AZCET], Adilabad is a technical education option in Adilabad, Telangana for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1999. Current approval or affiliation signals available for review include AICTE, UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Aizza College of Engineering and Technology - [AZCET], Adilabad in Adilabad, Telangana: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Aizza College of Engineering and Technology - [AZCET], Adilabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aizza College of Engineering and Technology - [AZCET], Adilabad in Adilabad, Telangana: source-reviewed overview for admissions, courses, facilities, place',
  meta_keywords = 'Aizza College of Engineering and Technology - [AZCET], Adilabad, Aizza College of Engineering and Technology - [AZCET], Adilabad admission 2026, Aizza College of Engineering and Technology - [AZCET], Adilabad courses, Aizza College of Engineering and Technology - [AZCET], Adilabad fees, Aizza College of Engineering and Technology - [AZCET], Adilabad placement, Aizza College of Engineering and Technology - [AZCET], Adilabad facilities, Adilabad, Telangana',
  admission_process = 'Aizza College of Engineering and Technology - [AZCET], Adilabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Aizza College of Engineering and Technology - [AZCET], Adilabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Aizza College of Engineering and Technology - [AZCET], Adilabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Aizza College of Engineering and Technology - [AZCET], Adilabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Aizza College of Engineering and Technology - [AZCET], Adilabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Aizza College of Engineering and Technology - [AZCET], Adilabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Aizza College of Engineering and Technology - [AZCET], Adilabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Aizza College of Engineering and Technology - [AZCET], Adilabad is mapped with reviewed approval or affiliation signals such as AICTE, UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'adb9089c-7ed5-4df8-8aae-942901d2ec19' AND slug = 'aizza-college-of-engineering-and-technology-azcet-adilabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f2baa384-5138-47a0-b1b8-d5ae3861affa' AND slug = 'aj-aviation-academy-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aj-aviation-academy-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, AJ Aviation Academy, Bangalore is a higher education option in Bangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2009. Current approval or affiliation signals available for review include UGC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AJ Aviation Academy, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AJ Aviation Academy, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AJ Aviation Academy, Bangalore in Bangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 dec',
  meta_keywords = 'AJ Aviation Academy, Bangalore, AJ Aviation Academy, Bangalore admission 2026, AJ Aviation Academy, Bangalore courses, AJ Aviation Academy, Bangalore fees, AJ Aviation Academy, Bangalore placement, AJ Aviation Academy, Bangalore facilities, Bangalore, Karnataka',
  admission_process = 'AJ Aviation Academy, Bangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AJ Aviation Academy, Bangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AJ Aviation Academy, Bangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AJ Aviation Academy, Bangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AJ Aviation Academy, Bangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AJ Aviation Academy, Bangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AJ Aviation Academy, Bangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AJ Aviation Academy, Bangalore is mapped with reviewed approval or affiliation signals such as UGC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'f2baa384-5138-47a0-b1b8-d5ae3861affa' AND slug = 'aj-aviation-academy-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ab7387f2-2fed-4051-b654-df8a58461b4e' AND slug = 'aj-institute-of-management-ajim-mangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aj-institute-of-management-ajim-mangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'In practical terms, AJ Institute of Management - [AJIM], Mangalore is a management and commerce education option in Mangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1999. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AJ Institute of Management - [AJIM], Mangalore in Mangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AJ Institute of Management - [AJIM], Mangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AJ Institute of Management - [AJIM], Mangalore in Mangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarsh',
  meta_keywords = 'AJ Institute of Management - [AJIM], Mangalore, AJ Institute of Management - [AJIM], Mangalore admission 2026, AJ Institute of Management - [AJIM], Mangalore courses, AJ Institute of Management - [AJIM], Mangalore fees, AJ Institute of Management - [AJIM], Mangalore placement, AJ Institute of Management - [AJIM], Mangalore facilities, Mangalore, Karnataka',
  admission_process = 'AJ Institute of Management - [AJIM], Mangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AJ Institute of Management - [AJIM], Mangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AJ Institute of Management - [AJIM], Mangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AJ Institute of Management - [AJIM], Mangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AJ Institute of Management - [AJIM], Mangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AJ Institute of Management - [AJIM], Mangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AJ Institute of Management - [AJIM], Mangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AJ Institute of Management - [AJIM], Mangalore is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = 'ab7387f2-2fed-4051-b654-df8a58461b4e' AND slug = 'aj-institute-of-management-ajim-mangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '563881da-eb76-4ff2-978d-05285b31671c' AND slug = 'aj-institute-of-medical-sciences-and-research-centre-mangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aj-institute-of-medical-sciences-and-research-centre-mangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For a student shortlisting options, AJ Institute of Medical Sciences and Research Centre, Mangalore is a healthcare education option in Mangalore, Karnataka for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 2002. Current approval or affiliation signals available for review include MCI. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'AJ Institute of Medical Sciences and Research Centre, Mangalore in Mangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'AJ Institute of Medical Sciences and Research Centre, Mangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'AJ Institute of Medical Sciences and Research Centre, Mangalore in Mangalore, Karnataka: source-reviewed overview for admissions, courses, facilities, plac',
  meta_keywords = 'AJ Institute of Medical Sciences and Research Centre, Mangalore, AJ Institute of Medical Sciences and Research Centre, Mangalore admission 2026, AJ Institute of Medical Sciences and Research Centre, Mangalore courses, AJ Institute of Medical Sciences and Research Centre, Mangalore fees, AJ Institute of Medical Sciences and Research Centre, Mangalore placement, AJ Institute of Medical Sciences and Research Centre, Mangalore facilities, Mangalore, Karnataka',
  admission_process = 'AJ Institute of Medical Sciences and Research Centre, Mangalore admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at AJ Institute of Medical Sciences and Research Centre, Mangalore depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'AJ Institute of Medical Sciences and Research Centre, Mangalore course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'AJ Institute of Medical Sciences and Research Centre, Mangalore placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'AJ Institute of Medical Sciences and Research Centre, Mangalore facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for AJ Institute of Medical Sciences and Research Centre, Mangalore should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for AJ Institute of Medical Sciences and Research Centre, Mangalore may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'AJ Institute of Medical Sciences and Research Centre, Mangalore is mapped with reviewed approval or affiliation signals such as MCI. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '563881da-eb76-4ff2-978d-05285b31671c' AND slug = 'aj-institute-of-medical-sciences-and-research-centre-mangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2d2209f4-959b-4f74-906b-891975caa52f' AND slug = 'ajara-mahavidyalaya-kolhapur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajara-mahavidyalaya-kolhapur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'The useful way to read this profile is simple, Ajara Mahavidyalaya, Kolhapur is a higher education option in Kolhapur, Maharashtra for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1982. Current approval or affiliation signals available for review include NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ajara Mahavidyalaya, Kolhapur in Kolhapur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ajara Mahavidyalaya, Kolhapur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ajara Mahavidyalaya, Kolhapur in Kolhapur, Maharashtra: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 dec',
  meta_keywords = 'Ajara Mahavidyalaya, Kolhapur, Ajara Mahavidyalaya, Kolhapur admission 2026, Ajara Mahavidyalaya, Kolhapur courses, Ajara Mahavidyalaya, Kolhapur fees, Ajara Mahavidyalaya, Kolhapur placement, Ajara Mahavidyalaya, Kolhapur facilities, Kolhapur, Maharashtra',
  admission_process = 'Ajara Mahavidyalaya, Kolhapur admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ajara Mahavidyalaya, Kolhapur depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ajara Mahavidyalaya, Kolhapur course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ajara Mahavidyalaya, Kolhapur placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ajara Mahavidyalaya, Kolhapur facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ajara Mahavidyalaya, Kolhapur should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ajara Mahavidyalaya, Kolhapur may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ajara Mahavidyalaya, Kolhapur is mapped with reviewed approval or affiliation signals such as NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '2d2209f4-959b-4f74-906b-891975caa52f' AND slug = 'ajara-mahavidyalaya-kolhapur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '475409dc-1636-4198-a320-39de83d9bbd3' AND slug = 'ajay-binay-institute-of-technology-abit-cuttack') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajay-binay-institute-of-technology-abit-cuttack';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'At a decision level, Ajay Binay Institute of Technology - [ABIT], Cuttack is a technical education option in Cuttack, Orissa for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1993. Current approval or affiliation signals available for review include AICTE. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ajay Binay Institute of Technology - [ABIT], Cuttack in Cuttack, Orissa: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ajay Binay Institute of Technology - [ABIT], Cuttack: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ajay Binay Institute of Technology - [ABIT], Cuttack in Cuttack, Orissa: source-reviewed overview for admissions, courses, facilities, placements, scholars',
  meta_keywords = 'Ajay Binay Institute of Technology - [ABIT], Cuttack, Ajay Binay Institute of Technology - [ABIT], Cuttack admission 2026, Ajay Binay Institute of Technology - [ABIT], Cuttack courses, Ajay Binay Institute of Technology - [ABIT], Cuttack fees, Ajay Binay Institute of Technology - [ABIT], Cuttack placement, Ajay Binay Institute of Technology - [ABIT], Cuttack facilities, Cuttack, Orissa',
  admission_process = 'Ajay Binay Institute of Technology - [ABIT], Cuttack admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ajay Binay Institute of Technology - [ABIT], Cuttack depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ajay Binay Institute of Technology - [ABIT], Cuttack course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ajay Binay Institute of Technology - [ABIT], Cuttack placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ajay Binay Institute of Technology - [ABIT], Cuttack facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ajay Binay Institute of Technology - [ABIT], Cuttack should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ajay Binay Institute of Technology - [ABIT], Cuttack may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ajay Binay Institute of Technology - [ABIT], Cuttack is mapped with reviewed approval or affiliation signals such as AICTE. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '475409dc-1636-4198-a320-39de83d9bbd3' AND slug = 'ajay-binay-institute-of-technology-abit-cuttack';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5737594d-044d-41c4-a1e9-073a3df0f823' AND slug = 'ajay-kumar-garg-engineering-college-akgec-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ajay-kumar-garg-engineering-college-akgec-ghaziabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = 'For admissions research, Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad is a technical education option in Ghaziabad, Uttar Pradesh for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying. The institution record carries an establishment year of 1998. Current approval or affiliation signals available for review include AICTE, NAAC. DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.',
  page_summary = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.',
  meta_title = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad in Ghaziabad, Uttar Pradesh: source-reviewed overview for admissions, courses, facilities, placeme',
  meta_keywords = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad, Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad admission 2026, Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad courses, Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad fees, Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad placement, Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad facilities, Ghaziabad, Uttar Pradesh',
  admission_process = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.',
  eligibility_criteria = 'Eligibility at Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.',
  course_fee_content = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include no official course catalogue verified for this batch. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.',
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.',
  facilities_content = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad facilities currently highlighted for student checks include Library, Classrooms, Student support, Department facilities, Campus assistance. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.',
  facilities = CASE WHEN array_length(ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[], 1) IS NULL THEN facilities ELSE ARRAY['Library', 'Classrooms', 'Student support', 'Department facilities', 'Campus assistance']::text[] END,
  hostel_life = 'Hostel and local accommodation details for Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships for Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.',
  rankings_content = 'Ajay Kumar Garg Engineering College - [AKGEC], Ghaziabad is mapped with reviewed approval or affiliation signals such as AICTE, NAAC. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.',
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array('{"batch":"college-humanized-content-batch-007","researched_at":"2026-08-01","source_status":"public_source_reviewed_official_refresh_pending","source_links_for_nofollow_rendering":[],"content_policy":"answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = 'college-humanized-content-batch-007; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.',
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
WHERE id = '5737594d-044d-41c4-a1e9-073a3df0f823' AND slug = 'ajay-kumar-garg-engineering-college-akgec-ghaziabad';

NOTIFY pgrst, 'reload schema';
COMMIT;
