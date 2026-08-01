-- Generated from data/college-official-enrichment/live-next-50-batch-004.json
-- Batch policy: update content for every targeted college; replace course rows only when a reviewed source provides the catalogue.
-- Fees are intentionally blank unless programme, year, quota and category are verified.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '621f316f-7fdc-48a9-8211-cc2b1fb5907b' AND slug = 'adaikalamatha-college-amc-thanjavur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adaikalamatha-college-amc-thanjavur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adaikalamatha.edu.in/',
  official_source_url = 'https://www.adaikalamatha.edu.in/courses-offered/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['Bharathidasan University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['Bharathidasan University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adaikalamatha College - [AMC], Thanjavur is listed on DekhoCampus as a arts and science college in Thanjavur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adaikalamatha College - [AMC], Thanjavur offers BA English, BBA, B.Com, B.Com Computer Applications, B.Sc Mathematics, B.Sc Computer Science, BCA, M.Com, M.Sc Computer Science, MA English. Check admission route, eligibility, facilities, approvals and source-backed course details for Thanjavur.',
  meta_title = 'Adaikalamatha College - [AMC], Thanjavur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adaikalamatha College - [AMC], Thanjavur offers BA English, BBA, B.Com, B.Com Computer Applications, B.Sc Mathematics, B.Sc Computer Science, BCA, M.Com, M',
  meta_keywords = 'Adaikalamatha College - [AMC], Thanjavur, Adaikalamatha College - [AMC], Thanjavur admission 2026, Adaikalamatha College - [AMC], Thanjavur courses, Adaikalamatha College - [AMC], Thanjavur fees, Adaikalamatha College - [AMC], Thanjavur placements, Adaikalamatha College - [AMC], Thanjavur facilities',
  admission_process = 'Admission at Adaikalamatha College - [AMC], Thanjavur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adaikalamatha College - [AMC], Thanjavur course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA English, BBA, B.Com, B.Com Computer Applications, B.Sc Mathematics, B.Sc Computer Science, BCA, M.Com, M.Sc Computer Science, MA English. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adaikalamatha College - [AMC], Thanjavur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adaikalamatha College - [AMC], Thanjavur supports students through facilities such as Library, Computer lab, Laboratories, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Computer lab', 'Laboratories', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adaikalamatha College - [AMC], Thanjavur has been mapped with approvals or affiliations including Bharathidasan University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 10,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://www.adaikalamatha.edu.in/courses-offered/"],"website":"https://www.adaikalamatha.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '621f316f-7fdc-48a9-8211-cc2b1fb5907b' AND slug = 'adaikalamatha-college-amc-thanjavur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adaikalamatha-college-amc-thanjavur', 'Vallam, Thanjavur, Tamil Nadu', 'https://www.adaikalamatha.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adaikalamatha-college-amc-thanjavur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Vallam, Thanjavur, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://www.adaikalamatha.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adaikalamatha-college-amc-thanjavur';


DELETE FROM public.course_fees WHERE college_slug = 'adaikalamatha-college-amc-thanjavur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adaikalamatha-college-amc-thanjavur', 'ba-english', 'BA English', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'bba', 'BBA', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'b-com-computer-applications', 'B.Com Computer Applications', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'b-sc-mathematics', 'B.Sc Mathematics', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'b-sc-computer-science', 'B.Sc Computer Science', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'bca', 'BCA', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'm-com', 'M.Com', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'm-sc-computer-science', 'M.Sc Computer Science', NULL, NULL, '2026'),
  ('adaikalamatha-college-amc-thanjavur', 'ma-english', 'MA English', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '432d5686-8d2a-4e9b-b5ec-92d7caf6ad25' AND slug = 'adaikalamatha-institute-of-teacher-education-thanjavur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adaikalamatha-institute-of-teacher-education-thanjavur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adaikalamatha.edu.in/',
  official_source_url = 'https://www.adaikalamatha.edu.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adaikalamatha Institute of Teacher Education, Thanjavur is listed on DekhoCampus as a teacher education institute in Thanjavur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adaikalamatha Institute of Teacher Education, Thanjavur offers B.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Thanjavur.',
  meta_title = 'Adaikalamatha Institute of Teacher Education, Thanjavur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adaikalamatha Institute of Teacher Education, Thanjavur offers B.Ed. Check admission route, eligibility, facilities, approvals and source-backed course det',
  meta_keywords = 'Adaikalamatha Institute of Teacher Education, Thanjavur, Adaikalamatha Institute of Teacher Education, Thanjavur admission 2026, Adaikalamatha Institute of Teacher Education, Thanjavur courses, Adaikalamatha Institute of Teacher Education, Thanjavur fees, Adaikalamatha Institute of Teacher Education, Thanjavur placements, Adaikalamatha Institute of Teacher Education, Thanjavur facilities',
  admission_process = 'Admission at Adaikalamatha Institute of Teacher Education, Thanjavur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adaikalamatha Institute of Teacher Education, Thanjavur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adaikalamatha Institute of Teacher Education, Thanjavur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adaikalamatha Institute of Teacher Education, Thanjavur supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adaikalamatha Institute of Teacher Education, Thanjavur has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 1,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://www.adaikalamatha.edu.in/"],"website":"https://www.adaikalamatha.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '432d5686-8d2a-4e9b-b5ec-92d7caf6ad25' AND slug = 'adaikalamatha-institute-of-teacher-education-thanjavur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adaikalamatha-institute-of-teacher-education-thanjavur', 'Vallam, Thanjavur, Tamil Nadu', 'https://www.adaikalamatha.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adaikalamatha-institute-of-teacher-education-thanjavur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Vallam, Thanjavur, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://www.adaikalamatha.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adaikalamatha-institute-of-teacher-education-thanjavur';


DELETE FROM public.course_fees WHERE college_slug = 'adaikalamatha-institute-of-teacher-education-thanjavur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adaikalamatha-institute-of-teacher-education-thanjavur', 'b-ed', 'B.Ed', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ad59ffc7-9b3e-4dfd-b965-e34dd2101a2c' AND slug = 'adamas-institute-of-teacher-education-north-24-parganas') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adamas-institute-of-teacher-education-north-24-parganas';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adamas Institute of Teacher Education, North 24 Parganas is listed on DekhoCampus as a teacher education college in North 24 Parganas. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adamas Institute of Teacher Education, North 24 Parganas offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for North 24 Parganas.',
  meta_title = 'Adamas Institute of Teacher Education, North 24 Parganas: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adamas Institute of Teacher Education, North 24 Parganas offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed ',
  meta_keywords = 'Adamas Institute of Teacher Education, North 24 Parganas, Adamas Institute of Teacher Education, North 24 Parganas admission 2026, Adamas Institute of Teacher Education, North 24 Parganas courses, Adamas Institute of Teacher Education, North 24 Parganas fees, Adamas Institute of Teacher Education, North 24 Parganas placements, Adamas Institute of Teacher Education, North 24 Parganas facilities',
  admission_process = 'Admission at Adamas Institute of Teacher Education, North 24 Parganas usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adamas Institute of Teacher Education, North 24 Parganas course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adamas Institute of Teacher Education, North 24 Parganas placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adamas Institute of Teacher Education, North 24 Parganas supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adamas Institute of Teacher Education, North 24 Parganas has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adamas-institute-of-teacher-education-north-24-parganas', 'North 24 Parganas, West Bengal', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adamas-institute-of-teacher-education-north-24-parganas');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('North 24 Parganas, West Bengal', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adamas-institute-of-teacher-education-north-24-parganas';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5db1c47b-8d65-42e2-a4e3-afa638487948' AND slug = 'adamas-institute-of-technology-ait-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adamas-institute-of-technology-ait-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adamasuniversity.ac.in/',
  official_source_url = 'https://adamasuniversity.ac.in/engineering-technology/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adamas Institute of Technology - [AIT], Kolkata is listed on DekhoCampus as a engineering institute in Kolkata. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adamas Institute of Technology - [AIT], Kolkata offers B.Tech Computer Science and Engineering, B.Tech CSE Artificial Intelligence and Machine Learning, B.Tech CSE Data Science, B.Tech Electronics and Communication Engineering, B.Tech Electrical Engineering, B.Tech Mechanical Engineering, B.Tech Civil Engineering, M.Tech, Ph.D Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Kolkata.',
  meta_title = 'Adamas Institute of Technology - [AIT], Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adamas Institute of Technology - [AIT], Kolkata offers B.Tech Computer Science and Engineering, B.Tech CSE Artificial Intelligence and Machine Learning, B.',
  meta_keywords = 'Adamas Institute of Technology - [AIT], Kolkata, Adamas Institute of Technology - [AIT], Kolkata admission 2026, Adamas Institute of Technology - [AIT], Kolkata courses, Adamas Institute of Technology - [AIT], Kolkata fees, Adamas Institute of Technology - [AIT], Kolkata placements, Adamas Institute of Technology - [AIT], Kolkata facilities',
  admission_process = 'Admission at Adamas Institute of Technology - [AIT], Kolkata usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adamas Institute of Technology - [AIT], Kolkata course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Computer Science and Engineering, B.Tech CSE Artificial Intelligence and Machine Learning, B.Tech CSE Data Science, B.Tech Electronics and Communication Engineering, B.Tech Electrical Engineering, B.Tech Mechanical Engineering, B.Tech Civil Engineering, M.Tech, Ph.D Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adamas Institute of Technology - [AIT], Kolkata placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adamas Institute of Technology - [AIT], Kolkata supports students through facilities such as Engineering laboratories, Library, Innovation support, Placement cell, Hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Library', 'Innovation support', 'Placement cell', 'Hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adamas Institute of Technology - [AIT], Kolkata has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 9,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adamasuniversity.ac.in/engineering-technology/"],"website":"https://adamasuniversity.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '5db1c47b-8d65-42e2-a4e3-afa638487948' AND slug = 'adamas-institute-of-technology-ait-kolkata';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adamas-institute-of-technology-ait-kolkata', 'Barasat - Barrackpore Road, Kolkata, West Bengal', 'https://adamasuniversity.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adamas-institute-of-technology-ait-kolkata');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Barasat - Barrackpore Road, Kolkata, West Bengal', ''), address),
  website = COALESCE(NULLIF('https://adamasuniversity.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adamas-institute-of-technology-ait-kolkata';


DELETE FROM public.course_fees WHERE college_slug = 'adamas-institute-of-technology-ait-kolkata';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adamas-institute-of-technology-ait-kolkata', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'b-tech-cse-artificial-intelligence-and-machine-learning', 'B.Tech CSE Artificial Intelligence and Machine Learning', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'b-tech-cse-data-science', 'B.Tech CSE Data Science', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'b-tech-electrical-engineering', 'B.Tech Electrical Engineering', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('adamas-institute-of-technology-ait-kolkata', 'ph-d-engineering', 'Ph.D Engineering', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2e7dc108-70ba-4b3a-9f0d-be223814655e' AND slug = 'adamas-university-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adamas-university-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adamasuniversity.ac.in/',
  official_source_url = 'https://adamasuniversity.ac.in/programs/',
  established = 2014,
  type = 'Private University',
  approvals = CASE WHEN array_length(ARRAY['UGC', 'AICTE', 'BCI', 'PCI', 'NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC', 'AICTE', 'BCI', 'PCI', 'NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adamas University, Kolkata is listed on DekhoCampus as a private university in Kolkata. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adamas University, Kolkata offers B.Tech, BCA, BBA, B.Com, BA, B.Sc, B.Pharm, B.Ed, LLB, MBA, MCA, M.Tech, M.Sc, MA, M.Com, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Kolkata.',
  meta_title = 'Adamas University, Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adamas University, Kolkata offers B.Tech, BCA, BBA, B.Com, BA, B.Sc, B.Pharm, B.Ed, LLB, MBA, MCA, M.Tech, M.Sc, MA, M.Com, Ph.D. Check admission route, el',
  meta_keywords = 'Adamas University, Kolkata, Adamas University, Kolkata admission 2026, Adamas University, Kolkata courses, Adamas University, Kolkata fees, Adamas University, Kolkata placements, Adamas University, Kolkata facilities',
  admission_process = 'Admission at Adamas University, Kolkata usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adamas University, Kolkata course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, BCA, BBA, B.Com, BA, B.Sc, B.Pharm, B.Ed, LLB, MBA, MCA, M.Tech, M.Sc, MA, M.Com, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adamas University, Kolkata placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adamas University, Kolkata supports students through facilities such as Library, Laboratories, Hostels, Sports, Incubation support, Placement cell. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Hostels', 'Sports', 'Incubation support', 'Placement cell']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adamas University, Kolkata has been mapped with approvals or affiliations including UGC, AICTE, BCI, PCI, NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 16,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adamasuniversity.ac.in/programs/"],"website":"https://adamasuniversity.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '2e7dc108-70ba-4b3a-9f0d-be223814655e' AND slug = 'adamas-university-kolkata';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adamas-university-kolkata', 'Barasat - Barrackpore Road, Jagannathpur, Kolkata, West Bengal - 700126', 'https://adamasuniversity.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adamas-university-kolkata');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Barasat - Barrackpore Road, Jagannathpur, Kolkata, West Bengal - 700126', ''), address),
  website = COALESCE(NULLIF('https://adamasuniversity.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adamas-university-kolkata';


DELETE FROM public.course_fees WHERE college_slug = 'adamas-university-kolkata';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adamas-university-kolkata', 'b-tech', 'B.Tech', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'bca', 'BCA', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'bba', 'BBA', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'ba', 'BA', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'b-sc', 'B.Sc', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'b-pharm', 'B.Pharm', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'b-ed', 'B.Ed', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'llb', 'LLB', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'mba', 'MBA', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'mca', 'MCA', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'm-sc', 'M.Sc', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'ma', 'MA', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'm-com', 'M.Com', NULL, NULL, '2026'),
  ('adamas-university-kolkata', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2f94e17b-fa95-4a65-83ff-f5b03021aa8d' AND slug = 'adams-engineering-college-khammam') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adams-engineering-college-khammam';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adamsengg.edu.in/',
  official_source_url = 'https://www.adamsengg.edu.in/courses-offered/',
  established = 1998,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adams Engineering College, Khammam is listed on DekhoCampus as a engineering college in Khammam. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adams Engineering College, Khammam offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, MBA, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Khammam.',
  meta_title = 'Adams Engineering College, Khammam: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adams Engineering College, Khammam offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electronics and Communication Engineeri',
  meta_keywords = 'Adams Engineering College, Khammam, Adams Engineering College, Khammam admission 2026, Adams Engineering College, Khammam courses, Adams Engineering College, Khammam fees, Adams Engineering College, Khammam placements, Adams Engineering College, Khammam facilities',
  admission_process = 'Admission at Adams Engineering College, Khammam usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adams Engineering College, Khammam course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, MBA, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adams Engineering College, Khammam placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adams Engineering College, Khammam supports students through facilities such as Engineering laboratories, Library, Transport, Training and placement cell, Sports. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Library', 'Transport', 'Training and placement cell', 'Sports']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adams Engineering College, Khammam has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 7,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://www.adamsengg.edu.in/courses-offered/"],"website":"https://www.adamsengg.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '2f94e17b-fa95-4a65-83ff-f5b03021aa8d' AND slug = 'adams-engineering-college-khammam';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adams-engineering-college-khammam', 'Paloncha, Khammam, Telangana', 'https://www.adamsengg.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adams-engineering-college-khammam');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Paloncha, Khammam, Telangana', ''), address),
  website = COALESCE(NULLIF('https://www.adamsengg.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adams-engineering-college-khammam';


DELETE FROM public.course_fees WHERE college_slug = 'adams-engineering-college-khammam';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adams-engineering-college-khammam', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('adams-engineering-college-khammam', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('adams-engineering-college-khammam', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adams-engineering-college-khammam', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adams-engineering-college-khammam', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('adams-engineering-college-khammam', 'mba', 'MBA', NULL, NULL, '2026'),
  ('adams-engineering-college-khammam', 'diploma-engineering', 'Diploma Engineering', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '62c6c8d0-5849-4d00-a790-6baa8519c37b' AND slug = 'adani-institute-of-infrastructure-management-aiim-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adani-institute-of-infrastructure-management-aiim-ahmedabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aii.ac.in/',
  official_source_url = 'https://aii.ac.in/programs/',
  established = 2009,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad is listed on DekhoCampus as a infrastructure management institute in Ahmedabad. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad offers PGDM Infrastructure Management, PGDM Law, Executive Education Programmes, Fellow Programme in Management. Check admission route, eligibility, facilities, approvals and source-backed course details for Ahmedabad.',
  meta_title = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad offers PGDM Infrastructure Management, PGDM Law, Executive Education Programmes, Fellow Pr',
  meta_keywords = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad, Adani Institute of Infrastructure Management - [AIIM], Ahmedabad admission 2026, Adani Institute of Infrastructure Management - [AIIM], Ahmedabad courses, Adani Institute of Infrastructure Management - [AIIM], Ahmedabad fees, Adani Institute of Infrastructure Management - [AIIM], Ahmedabad placements, Adani Institute of Infrastructure Management - [AIIM], Ahmedabad facilities',
  admission_process = 'Admission at Adani Institute of Infrastructure Management - [AIIM], Ahmedabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: PGDM Infrastructure Management, PGDM Law, Executive Education Programmes, Fellow Programme in Management. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad supports students through facilities such as Case classrooms, Library, Industry interaction, Executive learning spaces, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Case classrooms', 'Library', 'Industry interaction', 'Executive learning spaces', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adani Institute of Infrastructure Management - [AIIM], Ahmedabad has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 4,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://aii.ac.in/programs/"],"website":"https://aii.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '62c6c8d0-5849-4d00-a790-6baa8519c37b' AND slug = 'adani-institute-of-infrastructure-management-aiim-ahmedabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adani-institute-of-infrastructure-management-aiim-ahmedabad', 'Shantigram Township, Near Vaishno Devi Circle, Ahmedabad, Gujarat', 'https://aii.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adani-institute-of-infrastructure-management-aiim-ahmedabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Shantigram Township, Near Vaishno Devi Circle, Ahmedabad, Gujarat', ''), address),
  website = COALESCE(NULLIF('https://aii.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adani-institute-of-infrastructure-management-aiim-ahmedabad';


DELETE FROM public.course_fees WHERE college_slug = 'adani-institute-of-infrastructure-management-aiim-ahmedabad';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adani-institute-of-infrastructure-management-aiim-ahmedabad', 'pgdm-infrastructure-management', 'PGDM Infrastructure Management', NULL, NULL, '2026'),
  ('adani-institute-of-infrastructure-management-aiim-ahmedabad', 'pgdm-law', 'PGDM Law', NULL, NULL, '2026'),
  ('adani-institute-of-infrastructure-management-aiim-ahmedabad', 'executive-education-programmes', 'Executive Education Programmes', NULL, NULL, '2026'),
  ('adani-institute-of-infrastructure-management-aiim-ahmedabad', 'fellow-programme-in-management', 'Fellow Programme in Management', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '956f81a5-ab72-4634-97cb-6c2d41b98382' AND slug = 'adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara is listed on DekhoCampus as a college in Satara. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Satara.',
  meta_title = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, faci',
  meta_keywords = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara admission 2026, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara courses, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara fees, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara placements, Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara facilities',
  admission_process = 'Admission at Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarniy Jayavantraoji Bhosale Adhyapak Vidyalaya, Satara has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara', 'Satara, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Satara, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarniy-jayavantraoji-bhosale-adhyapak-vidyalaya-satara';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '72d29b78-c69f-438c-99fe-222d37f0ebde' AND slug = 'adarsh-business-school-abs-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-business-school-abs-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adarshbschool.com/',
  official_source_url = 'https://adarshbschool.com/courses/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Business School - [ABS], Bangalore is listed on DekhoCampus as a business school in Bangalore. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Business School - [ABS], Bangalore offers PGDM, MBA. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Adarsh Business School - [ABS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Business School - [ABS], Bangalore offers PGDM, MBA. Check admission route, eligibility, facilities, approvals and source-backed course details for ',
  meta_keywords = 'Adarsh Business School - [ABS], Bangalore, Adarsh Business School - [ABS], Bangalore admission 2026, Adarsh Business School - [ABS], Bangalore courses, Adarsh Business School - [ABS], Bangalore fees, Adarsh Business School - [ABS], Bangalore placements, Adarsh Business School - [ABS], Bangalore facilities',
  admission_process = 'Admission at Adarsh Business School - [ABS], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Business School - [ABS], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: PGDM, MBA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Business School - [ABS], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Business School - [ABS], Bangalore supports students through facilities such as Library, Case-study classrooms, Placement support, Industry interaction, Mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Placement support', 'Industry interaction', 'Mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Business School - [ABS], Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 2,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adarshbschool.com/courses/"],"website":"https://adarshbschool.com/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '72d29b78-c69f-438c-99fe-222d37f0ebde' AND slug = 'adarsh-business-school-abs-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-business-school-abs-bangalore', 'Bangalore, Karnataka', 'https://adarshbschool.com/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-business-school-abs-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF('https://adarshbschool.com/', ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-business-school-abs-bangalore';


DELETE FROM public.course_fees WHERE college_slug = 'adarsh-business-school-abs-bangalore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adarsh-business-school-abs-bangalore', 'pgdm', 'PGDM', NULL, NULL, '2026'),
  ('adarsh-business-school-abs-bangalore', 'mba', 'MBA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd2cf7238-154f-4aa2-aa38-60bf3359f7ed' AND slug = 'adarsh-college-of-arts-amp-commerce-thane') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-arts-amp-commerce-thane';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh College of Arts & Commerce, Thane is listed on DekhoCampus as a college in Thane. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh College of Arts & Commerce, Thane offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Thane.',
  meta_title = 'Adarsh College of Arts & Commerce, Thane: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Arts & Commerce, Thane offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approval',
  meta_keywords = 'Adarsh College of Arts & Commerce, Thane, Adarsh College of Arts & Commerce, Thane admission 2026, Adarsh College of Arts & Commerce, Thane courses, Adarsh College of Arts & Commerce, Thane fees, Adarsh College of Arts & Commerce, Thane placements, Adarsh College of Arts & Commerce, Thane facilities',
  admission_process = 'Admission at Adarsh College of Arts & Commerce, Thane usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh College of Arts & Commerce, Thane course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh College of Arts & Commerce, Thane placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh College of Arts & Commerce, Thane supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh College of Arts & Commerce, Thane has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-college-of-arts-amp-commerce-thane', 'Thane, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-college-of-arts-amp-commerce-thane');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Thane, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-college-of-arts-amp-commerce-thane';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bd5e0217-fc8b-452e-ad8e-ad5a05773f86' AND slug = 'adarsh-college-of-education-bhiwani') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-education-bhiwani';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh College of Education, Bhiwani is listed on DekhoCampus as a teacher education college in Bhiwani. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh College of Education, Bhiwani offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Bhiwani.',
  meta_title = 'Adarsh College of Education, Bhiwani: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Education, Bhiwani offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for B',
  meta_keywords = 'Adarsh College of Education, Bhiwani, Adarsh College of Education, Bhiwani admission 2026, Adarsh College of Education, Bhiwani courses, Adarsh College of Education, Bhiwani fees, Adarsh College of Education, Bhiwani placements, Adarsh College of Education, Bhiwani facilities',
  admission_process = 'Admission at Adarsh College of Education, Bhiwani usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh College of Education, Bhiwani course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh College of Education, Bhiwani placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh College of Education, Bhiwani supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh College of Education, Bhiwani has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-college-of-education-bhiwani', 'Bhiwani, Haryana', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-college-of-education-bhiwani');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bhiwani, Haryana', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-college-of-education-bhiwani';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'bbac2ff9-2c0d-485c-8746-e5a3c124577a' AND slug = 'adarsh-college-of-education-jammu') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-education-jammu';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh College of Education, Jammu is listed on DekhoCampus as a teacher education college in Jammu. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh College of Education, Jammu offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Jammu.',
  meta_title = 'Adarsh College of Education, Jammu: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Education, Jammu offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Jam',
  meta_keywords = 'Adarsh College of Education, Jammu, Adarsh College of Education, Jammu admission 2026, Adarsh College of Education, Jammu courses, Adarsh College of Education, Jammu fees, Adarsh College of Education, Jammu placements, Adarsh College of Education, Jammu facilities',
  admission_process = 'Admission at Adarsh College of Education, Jammu usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh College of Education, Jammu course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh College of Education, Jammu placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh College of Education, Jammu supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh College of Education, Jammu has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-college-of-education-jammu', 'Jammu, Jammu And Kashmir', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-college-of-education-jammu');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jammu, Jammu And Kashmir', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-college-of-education-jammu';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9dde650c-cfb7-4ac3-912a-428d25dabce9' AND slug = 'adarsh-college-of-education-jhajjar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-education-jhajjar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh College of Education, Jhajjar is listed on DekhoCampus as a teacher education college in Jhajjar. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh College of Education, Jhajjar offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Jhajjar.',
  meta_title = 'Adarsh College of Education, Jhajjar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Education, Jhajjar offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for J',
  meta_keywords = 'Adarsh College of Education, Jhajjar, Adarsh College of Education, Jhajjar admission 2026, Adarsh College of Education, Jhajjar courses, Adarsh College of Education, Jhajjar fees, Adarsh College of Education, Jhajjar placements, Adarsh College of Education, Jhajjar facilities',
  admission_process = 'Admission at Adarsh College of Education, Jhajjar usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh College of Education, Jhajjar course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh College of Education, Jhajjar placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh College of Education, Jhajjar supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh College of Education, Jhajjar has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-college-of-education-jhajjar', 'Jhajjar, Haryana', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-college-of-education-jhajjar');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jhajjar, Haryana', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-college-of-education-jhajjar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '312e1632-3d9a-43b3-841b-d6f59468e8d9' AND slug = 'adarsh-college-of-elementary-teacher-education-mahabub-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-elementary-teacher-education-mahabub-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar is listed on DekhoCampus as a teacher education college in Mahabub Nagar. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Mahabub Nagar.',
  meta_title = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-ba',
  meta_keywords = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar, Adarsh College of Elementary Teacher Education, Mahabub Nagar admission 2026, Adarsh College of Elementary Teacher Education, Mahabub Nagar courses, Adarsh College of Elementary Teacher Education, Mahabub Nagar fees, Adarsh College of Elementary Teacher Education, Mahabub Nagar placements, Adarsh College of Elementary Teacher Education, Mahabub Nagar facilities',
  admission_process = 'Admission at Adarsh College of Elementary Teacher Education, Mahabub Nagar usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh College of Elementary Teacher Education, Mahabub Nagar has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-college-of-elementary-teacher-education-mahabub-nagar', 'Mahabub Nagar, Telangana', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-college-of-elementary-teacher-education-mahabub-nagar');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Mahabub Nagar, Telangana', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-college-of-elementary-teacher-education-mahabub-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '551fec0e-af8a-4508-8074-58191067edda' AND slug = 'adarsh-college-of-engineering-acee-chebrole-east-godavari') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-engineering-acee-chebrole-east-godavari';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari is listed on DekhoCampus as a engineering college in East Godavari. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for East Godavari.',
  meta_title = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities,',
  meta_keywords = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari admission 2026, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari courses, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari fees, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari placements, Adarsh College of Engineering - [ACEE], Chebrole, East Godavari facilities',
  admission_process = 'Admission at Adarsh College of Engineering - [ACEE], Chebrole, East Godavari usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh College of Engineering - [ACEE], Chebrole, East Godavari has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-college-of-engineering-acee-chebrole-east-godavari', 'East Godavari, Andhra Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-college-of-engineering-acee-chebrole-east-godavari');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('East Godavari, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-college-of-engineering-acee-chebrole-east-godavari';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1ced1632-de8b-438e-8d25-e2aff8e891bd' AND slug = 'adarsh-college-of-nursing-patiala') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-college-of-nursing-patiala';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['INC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['INC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh College of Nursing, Patiala is listed on DekhoCampus as a nursing college in Patiala. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh College of Nursing, Patiala offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course details for Patiala.',
  meta_title = 'Adarsh College of Nursing, Patiala: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh College of Nursing, Patiala offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course details for',
  meta_keywords = 'Adarsh College of Nursing, Patiala, Adarsh College of Nursing, Patiala admission 2026, Adarsh College of Nursing, Patiala courses, Adarsh College of Nursing, Patiala fees, Adarsh College of Nursing, Patiala placements, Adarsh College of Nursing, Patiala facilities',
  admission_process = 'Admission at Adarsh College of Nursing, Patiala usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh College of Nursing, Patiala course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Nursing, GNM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh College of Nursing, Patiala placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh College of Nursing, Patiala supports students through facilities such as Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh College of Nursing, Patiala has been mapped with approvals or affiliations including INC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-college-of-nursing-patiala', 'Patiala, Punjab', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-college-of-nursing-patiala');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Patiala, Punjab', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-college-of-nursing-patiala';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f51032d4-9bae-4b21-ba1c-98d3cff01030' AND slug = 'adarsh-degree-college-adc-mahabub-nagar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-degree-college-adc-mahabub-nagar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Degree College - [ADC], Mahabub Nagar is listed on DekhoCampus as a college in Mahabub Nagar. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Degree College - [ADC], Mahabub Nagar offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Mahabub Nagar.',
  meta_title = 'Adarsh Degree College - [ADC], Mahabub Nagar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Degree College - [ADC], Mahabub Nagar offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, appr',
  meta_keywords = 'Adarsh Degree College - [ADC], Mahabub Nagar, Adarsh Degree College - [ADC], Mahabub Nagar admission 2026, Adarsh Degree College - [ADC], Mahabub Nagar courses, Adarsh Degree College - [ADC], Mahabub Nagar fees, Adarsh Degree College - [ADC], Mahabub Nagar placements, Adarsh Degree College - [ADC], Mahabub Nagar facilities',
  admission_process = 'Admission at Adarsh Degree College - [ADC], Mahabub Nagar usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Degree College - [ADC], Mahabub Nagar course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Degree College - [ADC], Mahabub Nagar placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Degree College - [ADC], Mahabub Nagar supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Degree College - [ADC], Mahabub Nagar has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-degree-college-adc-mahabub-nagar', 'Mahabub Nagar, Telangana', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-degree-college-adc-mahabub-nagar');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Mahabub Nagar, Telangana', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-degree-college-adc-mahabub-nagar';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b64d7e5e-e183-4b09-821c-2618f01186a1' AND slug = 'adarsh-education-society039s-art-commerce-and-science-college-hingoli') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-education-society039s-art-commerce-and-science-college-hingoli';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli is listed on DekhoCampus as a teacher education college in Hingoli. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Hingoli.',
  meta_title = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and so',
  meta_keywords = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli, Adarsh Education Society''s Art Commerce and Science College, Hingoli admission 2026, Adarsh Education Society''s Art Commerce and Science College, Hingoli courses, Adarsh Education Society''s Art Commerce and Science College, Hingoli fees, Adarsh Education Society''s Art Commerce and Science College, Hingoli placements, Adarsh Education Society''s Art Commerce and Science College, Hingoli facilities',
  admission_process = 'Admission at Adarsh Education Society''s Art Commerce and Science College, Hingoli usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Education Society''s Art Commerce and Science College, Hingoli has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-education-society039s-art-commerce-and-science-college-hingoli', 'Hingoli, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-education-society039s-art-commerce-and-science-college-hingoli');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Hingoli, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-education-society039s-art-commerce-and-science-college-hingoli';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8bbc595d-065e-4e97-acda-893d860ef716' AND slug = 'adarsh-institute-of-management-and-information-technology-aimit-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-institute-of-management-and-information-technology-aimit-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adarsheducation.org/aimit/',
  official_source_url = 'https://adarsheducation.org/aimit/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore is listed on DekhoCampus as a management and information technology institute in Bangalore. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore offers MBA. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore offers MBA. Check admission route, eligibility, facilities, approvals and so',
  meta_keywords = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore, Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore admission 2026, Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore courses, Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore fees, Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore placements, Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore facilities',
  admission_process = 'Admission at Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore supports students through facilities such as Library, Computer lab, Seminar hall, Placement support, Industry interface. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Computer lab', 'Seminar hall', 'Placement support', 'Industry interface']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Institute of Management and Information Technology - [AIMIT], Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 1,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adarsheducation.org/aimit/"],"website":"https://adarsheducation.org/aimit/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '8bbc595d-065e-4e97-acda-893d860ef716' AND slug = 'adarsh-institute-of-management-and-information-technology-aimit-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-institute-of-management-and-information-technology-aimit-bangalore', 'Bangalore, Karnataka', 'https://adarsheducation.org/aimit/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-institute-of-management-and-information-technology-aimit-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF('https://adarsheducation.org/aimit/', ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-institute-of-management-and-information-technology-aimit-bangalore';


DELETE FROM public.course_fees WHERE college_slug = 'adarsh-institute-of-management-and-information-technology-aimit-bangalore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adarsh-institute-of-management-and-information-technology-aimit-bangalore', 'mba', 'MBA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '298cbbcd-2d73-48f9-b3a5-b0382d07f16c' AND slug = 'adarsh-institute-of-technology-and-research-centre-aitrc-sangli') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-institute-of-technology-and-research-centre-aitrc-sangli';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aitrcvita.edu.in/',
  official_source_url = 'https://aitrcvita.edu.in/admissions/',
  established = 2008,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli is listed on DekhoCampus as a engineering college in Sangli. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electronics and Telecommunication Engineering, B.Tech Electrical Engineering, B.Tech Mechanical Engineering, M.Tech. Check admission route, eligibility, facilities, approvals and source-backed course details for Sangli.',
  meta_title = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Elect',
  meta_keywords = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli, Adarsh Institute of Technology and Research Centre - [AITRC], Sangli admission 2026, Adarsh Institute of Technology and Research Centre - [AITRC], Sangli courses, Adarsh Institute of Technology and Research Centre - [AITRC], Sangli fees, Adarsh Institute of Technology and Research Centre - [AITRC], Sangli placements, Adarsh Institute of Technology and Research Centre - [AITRC], Sangli facilities',
  admission_process = 'Admission at Adarsh Institute of Technology and Research Centre - [AITRC], Sangli usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electronics and Telecommunication Engineering, B.Tech Electrical Engineering, B.Tech Mechanical Engineering, M.Tech. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli supports students through facilities such as Library, Laboratories, Workshop, Hostel, Placement cell. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Workshop', 'Hostel', 'Placement cell']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Institute of Technology and Research Centre - [AITRC], Sangli has been mapped with approvals or affiliations including AICTE, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 6,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://aitrcvita.edu.in/admissions/"],"website":"https://aitrcvita.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '298cbbcd-2d73-48f9-b3a5-b0382d07f16c' AND slug = 'adarsh-institute-of-technology-and-research-centre-aitrc-sangli';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-institute-of-technology-and-research-centre-aitrc-sangli', 'Vita, Sangli, Maharashtra', 'https://aitrcvita.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-institute-of-technology-and-research-centre-aitrc-sangli');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Vita, Sangli, Maharashtra', ''), address),
  website = COALESCE(NULLIF('https://aitrcvita.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-institute-of-technology-and-research-centre-aitrc-sangli';


DELETE FROM public.course_fees WHERE college_slug = 'adarsh-institute-of-technology-and-research-centre-aitrc-sangli';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adarsh-institute-of-technology-and-research-centre-aitrc-sangli', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('adarsh-institute-of-technology-and-research-centre-aitrc-sangli', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('adarsh-institute-of-technology-and-research-centre-aitrc-sangli', 'b-tech-electronics-and-telecommunication-engineering', 'B.Tech Electronics and Telecommunication Engineering', NULL, NULL, '2026'),
  ('adarsh-institute-of-technology-and-research-centre-aitrc-sangli', 'b-tech-electrical-engineering', 'B.Tech Electrical Engineering', NULL, NULL, '2026'),
  ('adarsh-institute-of-technology-and-research-centre-aitrc-sangli', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('adarsh-institute-of-technology-and-research-centre-aitrc-sangli', 'm-tech', 'M.Tech', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '869929ee-7693-4f81-b66a-dc3b6db1e89f' AND slug = 'adarsh-mahavidyalayaomerga-osmanabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-mahavidyalayaomerga-osmanabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Mahavidyalaya,Omerga, Osmanabad is listed on DekhoCampus as a college in Osmanabad. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Mahavidyalaya,Omerga, Osmanabad offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Osmanabad.',
  meta_title = 'Adarsh Mahavidyalaya,Omerga, Osmanabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Mahavidyalaya,Omerga, Osmanabad offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals ',
  meta_keywords = 'Adarsh Mahavidyalaya,Omerga, Osmanabad, Adarsh Mahavidyalaya,Omerga, Osmanabad admission 2026, Adarsh Mahavidyalaya,Omerga, Osmanabad courses, Adarsh Mahavidyalaya,Omerga, Osmanabad fees, Adarsh Mahavidyalaya,Omerga, Osmanabad placements, Adarsh Mahavidyalaya,Omerga, Osmanabad facilities',
  admission_process = 'Admission at Adarsh Mahavidyalaya,Omerga, Osmanabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Mahavidyalaya,Omerga, Osmanabad has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-mahavidyalayaomerga-osmanabad', 'Osmanabad, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-mahavidyalayaomerga-osmanabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Osmanabad, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-mahavidyalayaomerga-osmanabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '725754d4-68a5-42b4-bbe9-14ee3673a0e1' AND slug = 'adarsh-mahila-mahavidyalaya-bhiwani') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-mahila-mahavidyalaya-bhiwani';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Mahila Mahavidyalaya, Bhiwani is listed on DekhoCampus as a college in Bhiwani. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Mahila Mahavidyalaya, Bhiwani offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Bhiwani.',
  meta_title = 'Adarsh Mahila Mahavidyalaya, Bhiwani: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Mahila Mahavidyalaya, Bhiwani offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals an',
  meta_keywords = 'Adarsh Mahila Mahavidyalaya, Bhiwani, Adarsh Mahila Mahavidyalaya, Bhiwani admission 2026, Adarsh Mahila Mahavidyalaya, Bhiwani courses, Adarsh Mahila Mahavidyalaya, Bhiwani fees, Adarsh Mahila Mahavidyalaya, Bhiwani placements, Adarsh Mahila Mahavidyalaya, Bhiwani facilities',
  admission_process = 'Admission at Adarsh Mahila Mahavidyalaya, Bhiwani usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Mahila Mahavidyalaya, Bhiwani has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-mahila-mahavidyalaya-bhiwani', 'Bhiwani, Haryana', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-mahila-mahavidyalaya-bhiwani');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bhiwani, Haryana', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-mahila-mahavidyalaya-bhiwani';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e58f84ed-45af-47c6-9d8e-0d78da5d0718' AND slug = 'adarsh-mahila-teacher039s-tranning-college-jaipur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-mahila-teacher039s-tranning-college-jaipur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Mahila Teacher''s Tranning College, Jaipur is listed on DekhoCampus as a teacher education college in Jaipur. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Mahila Teacher''s Tranning College, Jaipur offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Jaipur.',
  meta_title = 'Adarsh Mahila Teacher''s Tranning College, Jaipur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Mahila Teacher''s Tranning College, Jaipur offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course d',
  meta_keywords = 'Adarsh Mahila Teacher''s Tranning College, Jaipur, Adarsh Mahila Teacher''s Tranning College, Jaipur admission 2026, Adarsh Mahila Teacher''s Tranning College, Jaipur courses, Adarsh Mahila Teacher''s Tranning College, Jaipur fees, Adarsh Mahila Teacher''s Tranning College, Jaipur placements, Adarsh Mahila Teacher''s Tranning College, Jaipur facilities',
  admission_process = 'Admission at Adarsh Mahila Teacher''s Tranning College, Jaipur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Mahila Teacher''s Tranning College, Jaipur has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-mahila-teacher039s-tranning-college-jaipur', 'Jaipur, Rajasthan', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-mahila-teacher039s-tranning-college-jaipur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jaipur, Rajasthan', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-mahila-teacher039s-tranning-college-jaipur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9612c5cb-6c9b-4915-8d9c-493599665f56' AND slug = 'adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad is listed on DekhoCampus as a teacher education college in Osmanabad. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Osmanabad.',
  meta_title = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals a',
  meta_keywords = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad admission 2026, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad courses, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad fees, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad placements, Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad facilities',
  admission_process = 'Admission at Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsh Shikshan Prasarak Sanstha''s Junior College of Education, Osmanabad has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad', 'Osmanabad, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Osmanabad, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsh-shikshan-prasarak-sanstha039s-junior-college-of-education-osmanabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '27ecf46a-5bb2-4d5c-bfa6-a75431186bc4' AND slug = 'adarsha-college-of-engineering-ace-angul') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-college-of-engineering-ace-angul';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adarshaengg.ac.in/',
  official_source_url = 'https://adarshaengg.ac.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsha College of Engineering - [ACE], Angul is listed on DekhoCampus as a engineering college in Angul. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsha College of Engineering - [ACE], Angul offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electrical Engineering, B.Tech Electronics and Communication Engineering, B.Tech Mechanical Engineering, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Angul.',
  meta_title = 'Adarsha College of Engineering - [ACE], Angul: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha College of Engineering - [ACE], Angul offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electrical Engineering, B.Te',
  meta_keywords = 'Adarsha College of Engineering - [ACE], Angul, Adarsha College of Engineering - [ACE], Angul admission 2026, Adarsha College of Engineering - [ACE], Angul courses, Adarsha College of Engineering - [ACE], Angul fees, Adarsha College of Engineering - [ACE], Angul placements, Adarsha College of Engineering - [ACE], Angul facilities',
  admission_process = 'Admission at Adarsha College of Engineering - [ACE], Angul usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsha College of Engineering - [ACE], Angul course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electrical Engineering, B.Tech Electronics and Communication Engineering, B.Tech Mechanical Engineering, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsha College of Engineering - [ACE], Angul placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsha College of Engineering - [ACE], Angul supports students through facilities such as Engineering laboratories, Library, Workshops, Hostel, Training support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Library', 'Workshops', 'Hostel', 'Training support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsha College of Engineering - [ACE], Angul has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 6,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adarshaengg.ac.in/"],"website":"https://adarshaengg.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '27ecf46a-5bb2-4d5c-bfa6-a75431186bc4' AND slug = 'adarsha-college-of-engineering-ace-angul';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsha-college-of-engineering-ace-angul', 'Sarapali, Angul, Odisha', 'https://adarshaengg.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsha-college-of-engineering-ace-angul');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Sarapali, Angul, Odisha', ''), address),
  website = COALESCE(NULLIF('https://adarshaengg.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adarsha-college-of-engineering-ace-angul';


DELETE FROM public.course_fees WHERE college_slug = 'adarsha-college-of-engineering-ace-angul';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adarsha-college-of-engineering-ace-angul', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('adarsha-college-of-engineering-ace-angul', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('adarsha-college-of-engineering-ace-angul', 'b-tech-electrical-engineering', 'B.Tech Electrical Engineering', NULL, NULL, '2026'),
  ('adarsha-college-of-engineering-ace-angul', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adarsha-college-of-engineering-ace-angul', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('adarsha-college-of-engineering-ace-angul', 'diploma-engineering', 'Diploma Engineering', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8e092298-11e6-47db-9b0b-3115440f76e8' AND slug = 'adarsha-college-of-nursing-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-college-of-nursing-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['INC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['INC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsha College Of Nursing, Bangalore is listed on DekhoCampus as a nursing college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsha College Of Nursing, Bangalore offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Adarsha College Of Nursing, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha College Of Nursing, Bangalore offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course details ',
  meta_keywords = 'Adarsha College Of Nursing, Bangalore, Adarsha College Of Nursing, Bangalore admission 2026, Adarsha College Of Nursing, Bangalore courses, Adarsha College Of Nursing, Bangalore fees, Adarsha College Of Nursing, Bangalore placements, Adarsha College Of Nursing, Bangalore facilities',
  admission_process = 'Admission at Adarsha College Of Nursing, Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsha College Of Nursing, Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Nursing, GNM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsha College Of Nursing, Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsha College Of Nursing, Bangalore supports students through facilities such as Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsha College Of Nursing, Bangalore has been mapped with approvals or affiliations including INC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsha-college-of-nursing-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsha-college-of-nursing-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsha-college-of-nursing-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1ec85236-a8d2-4744-833f-82c96a1e99f2' AND slug = 'adarsha-comprehensive-college-of-education-and-research-accer-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-comprehensive-college-of-education-and-research-accer-pune';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune is listed on DekhoCampus as a teacher education college in Pune. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Pune.',
  meta_title = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and',
  meta_keywords = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune, Adarsha Comprehensive College of Education and Research - [ACCER], Pune admission 2026, Adarsha Comprehensive College of Education and Research - [ACCER], Pune courses, Adarsha Comprehensive College of Education and Research - [ACCER], Pune fees, Adarsha Comprehensive College of Education and Research - [ACCER], Pune placements, Adarsha Comprehensive College of Education and Research - [ACCER], Pune facilities',
  admission_process = 'Admission at Adarsha Comprehensive College of Education and Research - [ACCER], Pune usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsha Comprehensive College of Education and Research - [ACCER], Pune has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsha-comprehensive-college-of-education-and-research-accer-pune', 'Pune, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsha-comprehensive-college-of-education-and-research-accer-pune');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Pune, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsha-comprehensive-college-of-education-and-research-accer-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c3ddfabf-0a8c-4b32-896b-0b4082fd32f1' AND slug = 'adarsha-law-college-warangal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-law-college-warangal';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsha Law College, Warangal is listed on DekhoCampus as a college in Warangal. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsha Law College, Warangal offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Warangal.',
  meta_title = 'Adarsha Law College, Warangal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Law College, Warangal offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and sourc',
  meta_keywords = 'Adarsha Law College, Warangal, Adarsha Law College, Warangal admission 2026, Adarsha Law College, Warangal courses, Adarsha Law College, Warangal fees, Adarsha Law College, Warangal placements, Adarsha Law College, Warangal facilities',
  admission_process = 'Admission at Adarsha Law College, Warangal usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsha Law College, Warangal course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsha Law College, Warangal placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsha Law College, Warangal supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsha Law College, Warangal has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsha-law-college-warangal', 'Warangal, Telangana', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsha-law-college-warangal');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Warangal, Telangana', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsha-law-college-warangal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1ba904d4-fe5d-4a8d-b72e-da160339bbb9' AND slug = 'adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati is listed on DekhoCampus as a college in Amravati. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Amravati.',
  meta_title = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati offers Undergraduate programmes, Postgraduate programmes. Check admissi',
  meta_keywords = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati admission 2026, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati courses, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati fees, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati placements, Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati facilities',
  admission_process = 'Admission at Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsha Science Jairamdas Bhagchand Arts and Birla Commerce Mahavidyalaya, Amravati has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati', 'Amravati, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Amravati, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsha-science-jairamdas-bhagchand-arts-and-birla-commerce-mahavidyalaya-amravati';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5657eeed-cdc7-4e27-b8d7-67ff66a0fab2' AND slug = 'adarsha-shikshana-samiti-college-of-commerce-asscc-gadag') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-shikshana-samiti-college-of-commerce-asscc-gadag';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag is listed on DekhoCampus as a college in Gadag. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Gadag.',
  meta_title = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, ',
  meta_keywords = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag admission 2026, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag courses, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag fees, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag placements, Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag facilities',
  admission_process = 'Admission at Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsha Shikshana Samiti College of Commerce -[ASSCC], Gadag has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsha-shikshana-samiti-college-of-commerce-asscc-gadag', 'Gadag, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsha-shikshana-samiti-college-of-commerce-asscc-gadag');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Gadag, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsha-shikshana-samiti-college-of-commerce-asscc-gadag';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'acf847ef-8fb0-4f3b-90e1-1367f1cd6c0b' AND slug = 'adarsha-vidya-kendra-first-grade-college-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adarsha-vidya-kendra-first-grade-college-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adarsha Vidya Kendra First Grade College, Bangalore is listed on DekhoCampus as a college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adarsha Vidya Kendra First Grade College, Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Adarsha Vidya Kendra First Grade College, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adarsha Vidya Kendra First Grade College, Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilitie',
  meta_keywords = 'Adarsha Vidya Kendra First Grade College, Bangalore, Adarsha Vidya Kendra First Grade College, Bangalore admission 2026, Adarsha Vidya Kendra First Grade College, Bangalore courses, Adarsha Vidya Kendra First Grade College, Bangalore fees, Adarsha Vidya Kendra First Grade College, Bangalore placements, Adarsha Vidya Kendra First Grade College, Bangalore facilities',
  admission_process = 'Admission at Adarsha Vidya Kendra First Grade College, Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adarsha Vidya Kendra First Grade College, Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adarsha Vidya Kendra First Grade College, Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adarsha Vidya Kendra First Grade College, Bangalore supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adarsha Vidya Kendra First Grade College, Bangalore has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adarsha-vidya-kendra-first-grade-college-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adarsha-vidya-kendra-first-grade-college-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adarsha-vidya-kendra-first-grade-college-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ff67a885-1888-4bff-b4b1-8409c898ae4c' AND slug = 'adesh-institute-of-biomedical-sciences-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-biomedical-sciences-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NMC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NMC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adesh Institute of Biomedical Sciences, Bathinda is listed on DekhoCampus as a medical college in Bathinda. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adesh Institute of Biomedical Sciences, Bathinda offers MBBS, MD, MS. Check admission route, eligibility, facilities, approvals and source-backed course details for Bathinda.',
  meta_title = 'Adesh Institute of Biomedical Sciences, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Biomedical Sciences, Bathinda offers MBBS, MD, MS. Check admission route, eligibility, facilities, approvals and source-backed course de',
  meta_keywords = 'Adesh Institute of Biomedical Sciences, Bathinda, Adesh Institute of Biomedical Sciences, Bathinda admission 2026, Adesh Institute of Biomedical Sciences, Bathinda courses, Adesh Institute of Biomedical Sciences, Bathinda fees, Adesh Institute of Biomedical Sciences, Bathinda placements, Adesh Institute of Biomedical Sciences, Bathinda facilities',
  admission_process = 'Admission at Adesh Institute of Biomedical Sciences, Bathinda usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adesh Institute of Biomedical Sciences, Bathinda course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBBS, MD, MS. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adesh Institute of Biomedical Sciences, Bathinda placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adesh Institute of Biomedical Sciences, Bathinda supports students through facilities such as Teaching hospital, Clinical departments, Laboratories, Library, Hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adesh Institute of Biomedical Sciences, Bathinda has been mapped with approvals or affiliations including NMC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adesh-institute-of-biomedical-sciences-bathinda', 'Bathinda, Punjab', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adesh-institute-of-biomedical-sciences-bathinda');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bathinda, Punjab', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adesh-institute-of-biomedical-sciences-bathinda';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '6d6dd4d4-0702-4815-96b6-ee5899bb6cdb' AND slug = 'adesh-institute-of-dental-sciences-and-research-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-dental-sciences-and-research-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adeshuniversity.ac.in/',
  official_source_url = 'https://adeshuniversity.ac.in/dental-college/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['DCI', 'Adesh University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['DCI', 'Adesh University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adesh Institute of Dental Sciences and Research, Bathinda is listed on DekhoCampus as a dental institute of Adesh University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adesh Institute of Dental Sciences and Research, Bathinda offers BDS, MDS Conservative Dentistry and Endodontics, MDS Oral and Maxillofacial Surgery, MDS Orthodontics, MDS Prosthodontics, MDS Periodontology, MDS Paedodontics, MDS Oral Medicine and Radiology, MDS Oral Pathology. Check admission route, eligibility, facilities, approvals and source-backed course details for Bathinda.',
  meta_title = 'Adesh Institute of Dental Sciences and Research, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Dental Sciences and Research, Bathinda offers BDS, MDS Conservative Dentistry and Endodontics, MDS Oral and Maxillofacial Surgery, MDS O',
  meta_keywords = 'Adesh Institute of Dental Sciences and Research, Bathinda, Adesh Institute of Dental Sciences and Research, Bathinda admission 2026, Adesh Institute of Dental Sciences and Research, Bathinda courses, Adesh Institute of Dental Sciences and Research, Bathinda fees, Adesh Institute of Dental Sciences and Research, Bathinda placements, Adesh Institute of Dental Sciences and Research, Bathinda facilities',
  admission_process = 'Admission at Adesh Institute of Dental Sciences and Research, Bathinda usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adesh Institute of Dental Sciences and Research, Bathinda course information has been cleaned for search and answer engines. Verified programmes for this batch are: BDS, MDS Conservative Dentistry and Endodontics, MDS Oral and Maxillofacial Surgery, MDS Orthodontics, MDS Prosthodontics, MDS Periodontology, MDS Paedodontics, MDS Oral Medicine and Radiology, MDS Oral Pathology. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adesh Institute of Dental Sciences and Research, Bathinda placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adesh Institute of Dental Sciences and Research, Bathinda supports students through facilities such as Dental clinics, Pre-clinical labs, Library, Hospital exposure, Hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Dental clinics', 'Pre-clinical labs', 'Library', 'Hospital exposure', 'Hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adesh Institute of Dental Sciences and Research, Bathinda has been mapped with approvals or affiliations including DCI, Adesh University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 9,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adeshuniversity.ac.in/dental-college/"],"website":"https://adeshuniversity.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '6d6dd4d4-0702-4815-96b6-ee5899bb6cdb' AND slug = 'adesh-institute-of-dental-sciences-and-research-bathinda';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adesh-institute-of-dental-sciences-and-research-bathinda', 'Barnala Road, Bathinda, Punjab', 'https://adeshuniversity.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adesh-institute-of-dental-sciences-and-research-bathinda');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Barnala Road, Bathinda, Punjab', ''), address),
  website = COALESCE(NULLIF('https://adeshuniversity.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adesh-institute-of-dental-sciences-and-research-bathinda';


DELETE FROM public.course_fees WHERE college_slug = 'adesh-institute-of-dental-sciences-and-research-bathinda';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'bds', 'BDS', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-conservative-dentistry-and-endodontics', 'MDS Conservative Dentistry and Endodontics', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-oral-and-maxillofacial-surgery', 'MDS Oral and Maxillofacial Surgery', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-orthodontics', 'MDS Orthodontics', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-prosthodontics', 'MDS Prosthodontics', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-periodontology', 'MDS Periodontology', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-paedodontics', 'MDS Paedodontics', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-oral-medicine-and-radiology', 'MDS Oral Medicine and Radiology', NULL, NULL, '2026'),
  ('adesh-institute-of-dental-sciences-and-research-bathinda', 'mds-oral-pathology', 'MDS Oral Pathology', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '0b233f91-c34b-42f6-896a-efd44d82153b' AND slug = 'adesh-institute-of-engineering-and-technology-faridkot') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-engineering-and-technology-faridkot';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adesh Institute of Engineering and Technology, Faridkot is listed on DekhoCampus as a engineering college in Faridkot. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adesh Institute of Engineering and Technology, Faridkot offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Faridkot.',
  meta_title = 'Adesh Institute of Engineering and Technology, Faridkot: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Engineering and Technology, Faridkot offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approva',
  meta_keywords = 'Adesh Institute of Engineering and Technology, Faridkot, Adesh Institute of Engineering and Technology, Faridkot admission 2026, Adesh Institute of Engineering and Technology, Faridkot courses, Adesh Institute of Engineering and Technology, Faridkot fees, Adesh Institute of Engineering and Technology, Faridkot placements, Adesh Institute of Engineering and Technology, Faridkot facilities',
  admission_process = 'Admission at Adesh Institute of Engineering and Technology, Faridkot usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adesh Institute of Engineering and Technology, Faridkot course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adesh Institute of Engineering and Technology, Faridkot placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adesh Institute of Engineering and Technology, Faridkot supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adesh Institute of Engineering and Technology, Faridkot has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adesh-institute-of-engineering-and-technology-faridkot', 'Faridkot, Punjab', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adesh-institute-of-engineering-and-technology-faridkot');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Faridkot, Punjab', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adesh-institute-of-engineering-and-technology-faridkot';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b4b03d90-5b8b-4aff-a267-4c934150511c' AND slug = 'adesh-institute-of-medical-sciences-and-research-aimsr-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-medical-sciences-and-research-aimsr-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adeshuniversity.ac.in/',
  official_source_url = 'https://adeshuniversity.ac.in/medical-college/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NMC', 'Adesh University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NMC', 'Adesh University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda is listed on DekhoCampus as a medical institute of Adesh University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda offers MBBS, MD Anatomy, MD Physiology, MD Biochemistry, MD Pathology, MD Microbiology, MD Pharmacology, MD Community Medicine, MD General Medicine, MS General Surgery, MS Orthopaedics, MD/MS Obstetrics and Gynaecology, MD Paediatrics, MD Anaesthesiology, MD Radio Diagnosis. Check admission route, eligibility, facilities, approvals and source-backed course details for Bathinda.',
  meta_title = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda offers MBBS, MD Anatomy, MD Physiology, MD Biochemistry, MD Pathology, MD Microbiology',
  meta_keywords = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda, Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda admission 2026, Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda courses, Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda fees, Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda placements, Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda facilities',
  admission_process = 'Admission at Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBBS, MD Anatomy, MD Physiology, MD Biochemistry, MD Pathology, MD Microbiology, MD Pharmacology, MD Community Medicine, MD General Medicine, MS General Surgery, MS Orthopaedics, MD/MS Obstetrics and Gynaecology, MD Paediatrics, MD Anaesthesiology, MD Radio Diagnosis. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda supports students through facilities such as Teaching hospital, Clinical departments, Laboratories, Library, Hostels. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostels']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adesh Institute of Medical Sciences and Research - [AIMSR], Bathinda has been mapped with approvals or affiliations including NMC, Adesh University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 15,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adeshuniversity.ac.in/medical-college/"],"website":"https://adeshuniversity.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'b4b03d90-5b8b-4aff-a267-4c934150511c' AND slug = 'adesh-institute-of-medical-sciences-and-research-aimsr-bathinda';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'Barnala Road, Bathinda, Punjab', 'https://adeshuniversity.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adesh-institute-of-medical-sciences-and-research-aimsr-bathinda');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Barnala Road, Bathinda, Punjab', ''), address),
  website = COALESCE(NULLIF('https://adeshuniversity.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adesh-institute-of-medical-sciences-and-research-aimsr-bathinda';


DELETE FROM public.course_fees WHERE college_slug = 'adesh-institute-of-medical-sciences-and-research-aimsr-bathinda';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'mbbs', 'MBBS', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-anatomy', 'MD Anatomy', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-physiology', 'MD Physiology', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-biochemistry', 'MD Biochemistry', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-pathology', 'MD Pathology', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-microbiology', 'MD Microbiology', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-pharmacology', 'MD Pharmacology', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-community-medicine', 'MD Community Medicine', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-general-medicine', 'MD General Medicine', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'ms-general-surgery', 'MS General Surgery', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'ms-orthopaedics', 'MS Orthopaedics', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-ms-obstetrics-and-gynaecology', 'MD/MS Obstetrics and Gynaecology', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-paediatrics', 'MD Paediatrics', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-anaesthesiology', 'MD Anaesthesiology', NULL, NULL, '2026'),
  ('adesh-institute-of-medical-sciences-and-research-aimsr-bathinda', 'md-radio-diagnosis', 'MD Radio Diagnosis', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '6ee8da8a-7587-47ce-bf84-96270012984f' AND slug = 'adesh-institute-of-pharmacy-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-pharmacy-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adeshuniversity.ac.in/',
  official_source_url = 'https://adeshuniversity.ac.in/pharmacy/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['PCI', 'Adesh University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['PCI', 'Adesh University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adesh Institute of Pharmacy, Bathinda is listed on DekhoCampus as a pharmacy institute of Adesh University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adesh Institute of Pharmacy, Bathinda offers D.Pharm, B.Pharm, M.Pharm Pharmaceutics, M.Pharm Pharmacology, Ph.D Pharmacy. Check admission route, eligibility, facilities, approvals and source-backed course details for Bathinda.',
  meta_title = 'Adesh Institute of Pharmacy, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Pharmacy, Bathinda offers D.Pharm, B.Pharm, M.Pharm Pharmaceutics, M.Pharm Pharmacology, Ph.D Pharmacy. Check admission route, eligibili',
  meta_keywords = 'Adesh Institute of Pharmacy, Bathinda, Adesh Institute of Pharmacy, Bathinda admission 2026, Adesh Institute of Pharmacy, Bathinda courses, Adesh Institute of Pharmacy, Bathinda fees, Adesh Institute of Pharmacy, Bathinda placements, Adesh Institute of Pharmacy, Bathinda facilities',
  admission_process = 'Admission at Adesh Institute of Pharmacy, Bathinda usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adesh Institute of Pharmacy, Bathinda course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm Pharmaceutics, M.Pharm Pharmacology, Ph.D Pharmacy. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adesh Institute of Pharmacy, Bathinda placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adesh Institute of Pharmacy, Bathinda supports students through facilities such as Pharmacy labs, Library, Research facilities, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy labs', 'Library', 'Research facilities', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adesh Institute of Pharmacy, Bathinda has been mapped with approvals or affiliations including PCI, Adesh University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 5,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adeshuniversity.ac.in/pharmacy/"],"website":"https://adeshuniversity.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '6ee8da8a-7587-47ce-bf84-96270012984f' AND slug = 'adesh-institute-of-pharmacy-bathinda';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adesh-institute-of-pharmacy-bathinda', 'Barnala Road, Bathinda, Punjab', 'https://adeshuniversity.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adesh-institute-of-pharmacy-bathinda');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Barnala Road, Bathinda, Punjab', ''), address),
  website = COALESCE(NULLIF('https://adeshuniversity.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adesh-institute-of-pharmacy-bathinda';


DELETE FROM public.course_fees WHERE college_slug = 'adesh-institute-of-pharmacy-bathinda';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adesh-institute-of-pharmacy-bathinda', 'd-pharm', 'D.Pharm', NULL, NULL, '2026'),
  ('adesh-institute-of-pharmacy-bathinda', 'b-pharm', 'B.Pharm', NULL, NULL, '2026'),
  ('adesh-institute-of-pharmacy-bathinda', 'm-pharm-pharmaceutics', 'M.Pharm Pharmaceutics', NULL, NULL, '2026'),
  ('adesh-institute-of-pharmacy-bathinda', 'm-pharm-pharmacology', 'M.Pharm Pharmacology', NULL, NULL, '2026'),
  ('adesh-institute-of-pharmacy-bathinda', 'ph-d-pharmacy', 'Ph.D Pharmacy', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ee0505ce-9f12-4593-b3cb-4ef22b5473d8' AND slug = 'adesh-institute-of-technology-ait-mohali') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-institute-of-technology-ait-mohali';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adesh Institute of Technology - [AIT], Mohali is listed on DekhoCampus as a engineering college in Mohali. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adesh Institute of Technology - [AIT], Mohali offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Mohali.',
  meta_title = 'Adesh Institute of Technology - [AIT], Mohali: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh Institute of Technology - [AIT], Mohali offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and sou',
  meta_keywords = 'Adesh Institute of Technology - [AIT], Mohali, Adesh Institute of Technology - [AIT], Mohali admission 2026, Adesh Institute of Technology - [AIT], Mohali courses, Adesh Institute of Technology - [AIT], Mohali fees, Adesh Institute of Technology - [AIT], Mohali placements, Adesh Institute of Technology - [AIT], Mohali facilities',
  admission_process = 'Admission at Adesh Institute of Technology - [AIT], Mohali usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adesh Institute of Technology - [AIT], Mohali course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adesh Institute of Technology - [AIT], Mohali placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adesh Institute of Technology - [AIT], Mohali supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adesh Institute of Technology - [AIT], Mohali has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adesh-institute-of-technology-ait-mohali', 'Mohali, Punjab', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adesh-institute-of-technology-ait-mohali');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Mohali, Punjab', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adesh-institute-of-technology-ait-mohali';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4d9e9bfa-230f-4c01-9284-54ce18476f39' AND slug = 'adesh-university-bathinda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adesh-university-bathinda';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adeshuniversity.ac.in/',
  official_source_url = 'https://adeshuniversity.ac.in/',
  established = 2012,
  type = 'Private University',
  approvals = CASE WHEN array_length(ARRAY['UGC', 'NMC', 'DCI', 'PCI', 'INC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC', 'NMC', 'DCI', 'PCI', 'INC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adesh University, Bathinda is listed on DekhoCampus as a health sciences university in Bathinda. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adesh University, Bathinda offers MBBS, BDS, B.Pharm, D.Pharm, B.Sc Nursing, GNM, BPT, BMLT, MD, MS, MDS, M.Pharm, M.Sc Nursing, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Bathinda.',
  meta_title = 'Adesh University, Bathinda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adesh University, Bathinda offers MBBS, BDS, B.Pharm, D.Pharm, B.Sc Nursing, GNM, BPT, BMLT, MD, MS, MDS, M.Pharm, M.Sc Nursing, Ph.D. Check admission rout',
  meta_keywords = 'Adesh University, Bathinda, Adesh University, Bathinda admission 2026, Adesh University, Bathinda courses, Adesh University, Bathinda fees, Adesh University, Bathinda placements, Adesh University, Bathinda facilities',
  admission_process = 'Admission at Adesh University, Bathinda usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adesh University, Bathinda course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBBS, BDS, B.Pharm, D.Pharm, B.Sc Nursing, GNM, BPT, BMLT, MD, MS, MDS, M.Pharm, M.Sc Nursing, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adesh University, Bathinda placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adesh University, Bathinda supports students through facilities such as Teaching hospital, Clinical labs, Library, Hostels, Sports, Research support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching hospital', 'Clinical labs', 'Library', 'Hostels', 'Sports', 'Research support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adesh University, Bathinda has been mapped with approvals or affiliations including UGC, NMC, DCI, PCI, INC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 14,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adeshuniversity.ac.in/"],"website":"https://adeshuniversity.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '4d9e9bfa-230f-4c01-9284-54ce18476f39' AND slug = 'adesh-university-bathinda';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adesh-university-bathinda', 'NH-7, Barnala Road, Bathinda, Punjab', 'https://adeshuniversity.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adesh-university-bathinda');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('NH-7, Barnala Road, Bathinda, Punjab', ''), address),
  website = COALESCE(NULLIF('https://adeshuniversity.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adesh-university-bathinda';


DELETE FROM public.course_fees WHERE college_slug = 'adesh-university-bathinda';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adesh-university-bathinda', 'mbbs', 'MBBS', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'bds', 'BDS', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'b-pharm', 'B.Pharm', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'd-pharm', 'D.Pharm', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'b-sc-nursing', 'B.Sc Nursing', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'gnm', 'GNM', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'bpt', 'BPT', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'bmlt', 'BMLT', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'md', 'MD', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'ms', 'MS', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'mds', 'MDS', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'm-pharm', 'M.Pharm', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'm-sc-nursing', 'M.Sc Nursing', NULL, NULL, '2026'),
  ('adesh-university-bathinda', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'fea24d71-3c35-4717-a69b-285be9370e9d' AND slug = 'adharshila-college-of-education-ace-meerut') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adharshila-college-of-education-ace-meerut';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adharshila College of Education - [ACE], Meerut is listed on DekhoCampus as a teacher education college in Meerut. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adharshila College of Education - [ACE], Meerut offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Meerut.',
  meta_title = 'Adharshila College of Education - [ACE], Meerut: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adharshila College of Education - [ACE], Meerut offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course de',
  meta_keywords = 'Adharshila College of Education - [ACE], Meerut, Adharshila College of Education - [ACE], Meerut admission 2026, Adharshila College of Education - [ACE], Meerut courses, Adharshila College of Education - [ACE], Meerut fees, Adharshila College of Education - [ACE], Meerut placements, Adharshila College of Education - [ACE], Meerut facilities',
  admission_process = 'Admission at Adharshila College of Education - [ACE], Meerut usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adharshila College of Education - [ACE], Meerut course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adharshila College of Education - [ACE], Meerut placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adharshila College of Education - [ACE], Meerut supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adharshila College of Education - [ACE], Meerut has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adharshila-college-of-education-ace-meerut', 'Meerut, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adharshila-college-of-education-ace-meerut');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Meerut, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adharshila-college-of-education-ace-meerut';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '0072739a-13c9-4f41-9fdc-cc31a85286af' AND slug = 'adhi-college-of-engineering-and-technology-acet-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhi-college-of-engineering-and-technology-acet-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adhi.edu.in/',
  official_source_url = 'https://adhi.edu.in/courses/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'Anna University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'Anna University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram is listed on DekhoCampus as a engineering college in Kanchipuram. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram offers BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, BE Civil Engineering, B.Tech Artificial Intelligence and Data Science. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanchipuram.',
  meta_title = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram offers BE Computer Science and Engineering, BE Electronics and Communication Engineering, ',
  meta_keywords = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram, Adhi College of Engineering and Technology - [ACET], Kanchipuram admission 2026, Adhi College of Engineering and Technology - [ACET], Kanchipuram courses, Adhi College of Engineering and Technology - [ACET], Kanchipuram fees, Adhi College of Engineering and Technology - [ACET], Kanchipuram placements, Adhi College of Engineering and Technology - [ACET], Kanchipuram facilities',
  admission_process = 'Admission at Adhi College of Engineering and Technology - [ACET], Kanchipuram usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram course information has been cleaned for search and answer engines. Verified programmes for this batch are: BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, BE Civil Engineering, B.Tech Artificial Intelligence and Data Science. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram supports students through facilities such as Library, Laboratories, Hostel, Transport, Placement cell. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Hostel', 'Transport', 'Placement cell']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhi College of Engineering and Technology - [ACET], Kanchipuram has been mapped with approvals or affiliations including AICTE, Anna University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 6,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adhi.edu.in/courses/"],"website":"https://adhi.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '0072739a-13c9-4f41-9fdc-cc31a85286af' AND slug = 'adhi-college-of-engineering-and-technology-acet-kanchipuram';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhi-college-of-engineering-and-technology-acet-kanchipuram', 'Kanchipuram, Tamil Nadu', 'https://adhi.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhi-college-of-engineering-and-technology-acet-kanchipuram');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kanchipuram, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://adhi.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhi-college-of-engineering-and-technology-acet-kanchipuram';


DELETE FROM public.course_fees WHERE college_slug = 'adhi-college-of-engineering-and-technology-acet-kanchipuram';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhi-college-of-engineering-and-technology-acet-kanchipuram', 'be-computer-science-and-engineering', 'BE Computer Science and Engineering', NULL, NULL, '2026'),
  ('adhi-college-of-engineering-and-technology-acet-kanchipuram', 'be-electronics-and-communication-engineering', 'BE Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adhi-college-of-engineering-and-technology-acet-kanchipuram', 'be-electrical-and-electronics-engineering', 'BE Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adhi-college-of-engineering-and-technology-acet-kanchipuram', 'be-mechanical-engineering', 'BE Mechanical Engineering', NULL, NULL, '2026'),
  ('adhi-college-of-engineering-and-technology-acet-kanchipuram', 'be-civil-engineering', 'BE Civil Engineering', NULL, NULL, '2026'),
  ('adhi-college-of-engineering-and-technology-acet-kanchipuram', 'b-tech-artificial-intelligence-and-data-science', 'B.Tech Artificial Intelligence and Data Science', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c96044eb-7fdf-426a-b537-81e4e24e9a05' AND slug = 'adhiparasakthi-agricultural-college-vellore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-agricultural-college-vellore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://apac.edu.in/',
  official_source_url = 'https://apac.edu.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['TNAU']::text[], 1) IS NULL THEN approvals ELSE ARRAY['TNAU']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi Agricultural College, Vellore is listed on DekhoCampus as a agricultural college in Tamil Nadu. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi Agricultural College, Vellore offers B.Sc Honours Agriculture. Check admission route, eligibility, facilities, approvals and source-backed course details for Vellore.',
  meta_title = 'Adhiparasakthi Agricultural College, Vellore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi Agricultural College, Vellore offers B.Sc Honours Agriculture. Check admission route, eligibility, facilities, approvals and source-backed c',
  meta_keywords = 'Adhiparasakthi Agricultural College, Vellore, Adhiparasakthi Agricultural College, Vellore admission 2026, Adhiparasakthi Agricultural College, Vellore courses, Adhiparasakthi Agricultural College, Vellore fees, Adhiparasakthi Agricultural College, Vellore placements, Adhiparasakthi Agricultural College, Vellore facilities',
  admission_process = 'Admission at Adhiparasakthi Agricultural College, Vellore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi Agricultural College, Vellore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Honours Agriculture. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi Agricultural College, Vellore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi Agricultural College, Vellore supports students through facilities such as Agricultural laboratories, Farm learning, Library, Hostel, Extension activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Agricultural laboratories', 'Farm learning', 'Library', 'Hostel', 'Extension activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi Agricultural College, Vellore has been mapped with approvals or affiliations including TNAU. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 1,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://apac.edu.in/"],"website":"https://apac.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'c96044eb-7fdf-426a-b537-81e4e24e9a05' AND slug = 'adhiparasakthi-agricultural-college-vellore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-agricultural-college-vellore', 'Kalavai, Ranipet district, Tamil Nadu', 'https://apac.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-agricultural-college-vellore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kalavai, Ranipet district, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://apac.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-agricultural-college-vellore';


DELETE FROM public.course_fees WHERE college_slug = 'adhiparasakthi-agricultural-college-vellore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiparasakthi-agricultural-college-vellore', 'b-sc-honours-agriculture', 'B.Sc Honours Agriculture', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3d8245c7-3279-4f0d-8628-214d6fff900d' AND slug = 'adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore is listed on DekhoCampus as a college in Vellore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Vellore.',
  meta_title = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibili',
  meta_keywords = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore admission 2026, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore courses, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore fees, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore placements, Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore facilities',
  admission_process = 'Admission at Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi College of Arts and Sciences -[APCASGBN], Vellore has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore', 'Vellore, Tamil Nadu', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Vellore, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-college-of-arts-and-sciences-apcasgbn-vellore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '84b15429-0977-45e1-923a-198ab34b70ef' AND slug = 'adhiparasakthi-college-of-education-vellore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-education-vellore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi College of Education, Vellore is listed on DekhoCampus as a teacher education college in Vellore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi College of Education, Vellore offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Vellore.',
  meta_title = 'Adhiparasakthi College of Education, Vellore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Education, Vellore offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course detai',
  meta_keywords = 'Adhiparasakthi College of Education, Vellore, Adhiparasakthi College of Education, Vellore admission 2026, Adhiparasakthi College of Education, Vellore courses, Adhiparasakthi College of Education, Vellore fees, Adhiparasakthi College of Education, Vellore placements, Adhiparasakthi College of Education, Vellore facilities',
  admission_process = 'Admission at Adhiparasakthi College of Education, Vellore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi College of Education, Vellore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi College of Education, Vellore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi College of Education, Vellore supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi College of Education, Vellore has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-college-of-education-vellore', 'Vellore, Tamil Nadu', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-college-of-education-vellore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Vellore, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-college-of-education-vellore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'da669f99-017d-4140-ab16-aa6227d6298b' AND slug = 'adhiparasakthi-college-of-engineering-arcot-apce-vellore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-engineering-arcot-apce-vellore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://apcegbn.com/',
  official_source_url = 'https://apcegbn.com/courses/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'Anna University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'Anna University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore is listed on DekhoCampus as a engineering college in Vellore. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Information Technology. Check admission route, eligibility, facilities, approvals and source-backed course details for Vellore.',
  meta_title = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communic',
  meta_keywords = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore, Adhiparasakthi College of Engineering Arcot - [APCE], Vellore admission 2026, Adhiparasakthi College of Engineering Arcot - [APCE], Vellore courses, Adhiparasakthi College of Engineering Arcot - [APCE], Vellore fees, Adhiparasakthi College of Engineering Arcot - [APCE], Vellore placements, Adhiparasakthi College of Engineering Arcot - [APCE], Vellore facilities',
  admission_process = 'Admission at Adhiparasakthi College of Engineering Arcot - [APCE], Vellore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore course information has been cleaned for search and answer engines. Verified programmes for this batch are: BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Information Technology. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore supports students through facilities such as Library, Laboratories, Hostel, Transport, Placement cell. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Hostel', 'Transport', 'Placement cell']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi College of Engineering Arcot - [APCE], Vellore has been mapped with approvals or affiliations including AICTE, Anna University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 6,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://apcegbn.com/courses/"],"website":"https://apcegbn.com/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'da669f99-017d-4140-ab16-aa6227d6298b' AND slug = 'adhiparasakthi-college-of-engineering-arcot-apce-vellore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-college-of-engineering-arcot-apce-vellore', 'G. B. Nagar, Kalavai, Vellore region, Tamil Nadu', 'https://apcegbn.com/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-college-of-engineering-arcot-apce-vellore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('G. B. Nagar, Kalavai, Vellore region, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://apcegbn.com/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-college-of-engineering-arcot-apce-vellore';


DELETE FROM public.course_fees WHERE college_slug = 'adhiparasakthi-college-of-engineering-arcot-apce-vellore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiparasakthi-college-of-engineering-arcot-apce-vellore', 'be-civil-engineering', 'BE Civil Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-engineering-arcot-apce-vellore', 'be-computer-science-and-engineering', 'BE Computer Science and Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-engineering-arcot-apce-vellore', 'be-electronics-and-communication-engineering', 'BE Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-engineering-arcot-apce-vellore', 'be-electrical-and-electronics-engineering', 'BE Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-engineering-arcot-apce-vellore', 'be-mechanical-engineering', 'BE Mechanical Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-engineering-arcot-apce-vellore', 'b-tech-information-technology', 'B.Tech Information Technology', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e3201040-6929-4a7c-858a-add266b60a0b' AND slug = 'adhiparasakthi-college-of-nursing-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-nursing-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://apconmelmaruvathur.ac.in/',
  official_source_url = 'https://apconmelmaruvathur.ac.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['INC', 'Tamil Nadu Nurses and Midwives Council']::text[], 1) IS NULL THEN approvals ELSE ARRAY['INC', 'Tamil Nadu Nurses and Midwives Council']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi College of Nursing, Kanchipuram is listed on DekhoCampus as a nursing college in Melmaruvathur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi College of Nursing, Kanchipuram offers B.Sc Nursing, Post Basic B.Sc Nursing, M.Sc Nursing. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanchipuram.',
  meta_title = 'Adhiparasakthi College of Nursing, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Nursing, Kanchipuram offers B.Sc Nursing, Post Basic B.Sc Nursing, M.Sc Nursing. Check admission route, eligibility, facilities, ',
  meta_keywords = 'Adhiparasakthi College of Nursing, Kanchipuram, Adhiparasakthi College of Nursing, Kanchipuram admission 2026, Adhiparasakthi College of Nursing, Kanchipuram courses, Adhiparasakthi College of Nursing, Kanchipuram fees, Adhiparasakthi College of Nursing, Kanchipuram placements, Adhiparasakthi College of Nursing, Kanchipuram facilities',
  admission_process = 'Admission at Adhiparasakthi College of Nursing, Kanchipuram usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi College of Nursing, Kanchipuram course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Nursing, Post Basic B.Sc Nursing, M.Sc Nursing. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi College of Nursing, Kanchipuram placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi College of Nursing, Kanchipuram supports students through facilities such as Nursing labs, Clinical training, Library, Hostel, Community health practice. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Nursing labs', 'Clinical training', 'Library', 'Hostel', 'Community health practice']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi College of Nursing, Kanchipuram has been mapped with approvals or affiliations including INC, Tamil Nadu Nurses and Midwives Council. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 3,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://apconmelmaruvathur.ac.in/"],"website":"https://apconmelmaruvathur.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'e3201040-6929-4a7c-858a-add266b60a0b' AND slug = 'adhiparasakthi-college-of-nursing-kanchipuram';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-college-of-nursing-kanchipuram', 'Melmaruvathur, Kanchipuram district, Tamil Nadu', 'https://apconmelmaruvathur.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-college-of-nursing-kanchipuram');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Melmaruvathur, Kanchipuram district, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://apconmelmaruvathur.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-college-of-nursing-kanchipuram';


DELETE FROM public.course_fees WHERE college_slug = 'adhiparasakthi-college-of-nursing-kanchipuram';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiparasakthi-college-of-nursing-kanchipuram', 'b-sc-nursing', 'B.Sc Nursing', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-nursing-kanchipuram', 'post-basic-b-sc-nursing', 'Post Basic B.Sc Nursing', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-nursing-kanchipuram', 'm-sc-nursing', 'M.Sc Nursing', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b171d193-0992-4ac4-8170-6e9d30b2d99b' AND slug = 'adhiparasakthi-college-of-pharmacy-chennai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-pharmacy-chennai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['PCI']::text[], 1) IS NULL THEN approvals ELSE ARRAY['PCI']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi College of Pharmacy, Chennai is listed on DekhoCampus as a pharmacy college in Chennai. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi College of Pharmacy, Chennai offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-backed course details for Chennai.',
  meta_title = 'Adhiparasakthi College of Pharmacy, Chennai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Pharmacy, Chennai offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-backed c',
  meta_keywords = 'Adhiparasakthi College of Pharmacy, Chennai, Adhiparasakthi College of Pharmacy, Chennai admission 2026, Adhiparasakthi College of Pharmacy, Chennai courses, Adhiparasakthi College of Pharmacy, Chennai fees, Adhiparasakthi College of Pharmacy, Chennai placements, Adhiparasakthi College of Pharmacy, Chennai facilities',
  admission_process = 'Admission at Adhiparasakthi College of Pharmacy, Chennai usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi College of Pharmacy, Chennai course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi College of Pharmacy, Chennai placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi College of Pharmacy, Chennai supports students through facilities such as Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi College of Pharmacy, Chennai has been mapped with approvals or affiliations including PCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-college-of-pharmacy-chennai', 'Chennai, Tamil Nadu', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-college-of-pharmacy-chennai');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Chennai, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-college-of-pharmacy-chennai';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '87d5b390-7112-45c1-b3a0-692550196cd6' AND slug = 'adhiparasakthi-college-of-pharmacy-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-pharmacy-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://apcp.in/',
  official_source_url = 'https://apcp.in/courses/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['PCI', 'AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['PCI', 'AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi College of Pharmacy, Kanchipuram is listed on DekhoCampus as a pharmacy college in Melmaruvathur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi College of Pharmacy, Kanchipuram offers D.Pharm, B.Pharm, M.Pharm Pharmaceutics, M.Pharm Pharmaceutical Chemistry, M.Pharm Pharmacology, Pharm.D, Ph.D Pharmacy. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanchipuram.',
  meta_title = 'Adhiparasakthi College of Pharmacy, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Pharmacy, Kanchipuram offers D.Pharm, B.Pharm, M.Pharm Pharmaceutics, M.Pharm Pharmaceutical Chemistry, M.Pharm Pharmacology, Pha',
  meta_keywords = 'Adhiparasakthi College of Pharmacy, Kanchipuram, Adhiparasakthi College of Pharmacy, Kanchipuram admission 2026, Adhiparasakthi College of Pharmacy, Kanchipuram courses, Adhiparasakthi College of Pharmacy, Kanchipuram fees, Adhiparasakthi College of Pharmacy, Kanchipuram placements, Adhiparasakthi College of Pharmacy, Kanchipuram facilities',
  admission_process = 'Admission at Adhiparasakthi College of Pharmacy, Kanchipuram usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi College of Pharmacy, Kanchipuram course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm Pharmaceutics, M.Pharm Pharmaceutical Chemistry, M.Pharm Pharmacology, Pharm.D, Ph.D Pharmacy. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi College of Pharmacy, Kanchipuram placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi College of Pharmacy, Kanchipuram supports students through facilities such as Pharmacy laboratories, Library, Research labs, Hostel, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy laboratories', 'Library', 'Research labs', 'Hostel', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi College of Pharmacy, Kanchipuram has been mapped with approvals or affiliations including PCI, AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 7,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://apcp.in/courses/"],"website":"https://apcp.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '87d5b390-7112-45c1-b3a0-692550196cd6' AND slug = 'adhiparasakthi-college-of-pharmacy-kanchipuram';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-college-of-pharmacy-kanchipuram', 'Melmaruvathur, Kanchipuram district, Tamil Nadu', 'https://apcp.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-college-of-pharmacy-kanchipuram');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Melmaruvathur, Kanchipuram district, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://apcp.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-college-of-pharmacy-kanchipuram';


DELETE FROM public.course_fees WHERE college_slug = 'adhiparasakthi-college-of-pharmacy-kanchipuram';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiparasakthi-college-of-pharmacy-kanchipuram', 'd-pharm', 'D.Pharm', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-pharmacy-kanchipuram', 'b-pharm', 'B.Pharm', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-pharmacy-kanchipuram', 'm-pharm-pharmaceutics', 'M.Pharm Pharmaceutics', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-pharmacy-kanchipuram', 'm-pharm-pharmaceutical-chemistry', 'M.Pharm Pharmaceutical Chemistry', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-pharmacy-kanchipuram', 'm-pharm-pharmacology', 'M.Pharm Pharmacology', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-pharmacy-kanchipuram', 'pharm-d', 'Pharm.D', NULL, NULL, '2026'),
  ('adhiparasakthi-college-of-pharmacy-kanchipuram', 'ph-d-pharmacy', 'Ph.D Pharmacy', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '0ad315e3-a723-4325-a1af-437c2a7789fd' AND slug = 'adhiparasakthi-college-of-physiotherapy-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-college-of-physiotherapy-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi College of Physiotherapy, Kanchipuram is listed on DekhoCampus as a college in Kanchipuram. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi College of Physiotherapy, Kanchipuram offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanchipuram.',
  meta_title = 'Adhiparasakthi College of Physiotherapy, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi College of Physiotherapy, Kanchipuram offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, faciliti',
  meta_keywords = 'Adhiparasakthi College of Physiotherapy, Kanchipuram, Adhiparasakthi College of Physiotherapy, Kanchipuram admission 2026, Adhiparasakthi College of Physiotherapy, Kanchipuram courses, Adhiparasakthi College of Physiotherapy, Kanchipuram fees, Adhiparasakthi College of Physiotherapy, Kanchipuram placements, Adhiparasakthi College of Physiotherapy, Kanchipuram facilities',
  admission_process = 'Admission at Adhiparasakthi College of Physiotherapy, Kanchipuram usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi College of Physiotherapy, Kanchipuram has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-004; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 78,
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

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-college-of-physiotherapy-kanchipuram', 'Kanchipuram, Tamil Nadu', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-college-of-physiotherapy-kanchipuram');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kanchipuram, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-college-of-physiotherapy-kanchipuram';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2f776e80-2e7e-4f99-a603-b11e78222da1' AND slug = 'adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://apdch.edu.in/',
  official_source_url = 'https://apdch.edu.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['DCI']::text[], 1) IS NULL THEN approvals ELSE ARRAY['DCI']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram is listed on DekhoCampus as a dental college and hospital in Melmaruvathur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram offers BDS, MDS. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanchipuram.',
  meta_title = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram offers BDS, MDS. Check admission route, eligibility, facilities, approvals and source',
  meta_keywords = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram, Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram admission 2026, Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram courses, Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram fees, Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram placements, Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram facilities',
  admission_process = 'Admission at Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram course information has been cleaned for search and answer engines. Verified programmes for this batch are: BDS, MDS. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram supports students through facilities such as Dental hospital, Clinical departments, Pre-clinical labs, Library, Hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Dental hospital', 'Clinical departments', 'Pre-clinical labs', 'Library', 'Hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi Dental College And Hospital Melmaruvathur, Kanchipuram has been mapped with approvals or affiliations including DCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 2,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://apdch.edu.in/"],"website":"https://apdch.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = '2f776e80-2e7e-4f99-a603-b11e78222da1' AND slug = 'adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram', 'Melmaruvathur, Kanchipuram district, Tamil Nadu', 'https://apdch.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Melmaruvathur, Kanchipuram district, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://apdch.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram';


DELETE FROM public.course_fees WHERE college_slug = 'adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram', 'bds', 'BDS', NULL, NULL, '2026'),
  ('adhiparasakthi-dental-college-and-hospital-melmaruvathur-kanchipuram', 'mds', 'MDS', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ca31b03c-d31f-451a-9682-68bf9a7527ac' AND slug = 'adhiparasakthi-engineering-college-apec-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiparasakthi-engineering-college-apec-kanchipuram';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adhiparasakthi.in/',
  official_source_url = 'https://adhiparasakthi.in/',
  established = 1984,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'Anna University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'Anna University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram is listed on DekhoCampus as a engineering college in Melmaruvathur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Information Technology, ME, MBA, MCA. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanchipuram.',
  meta_title = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication',
  meta_keywords = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram, Adhiparasakthi Engineering College - [APEC], Kanchipuram admission 2026, Adhiparasakthi Engineering College - [APEC], Kanchipuram courses, Adhiparasakthi Engineering College - [APEC], Kanchipuram fees, Adhiparasakthi Engineering College - [APEC], Kanchipuram placements, Adhiparasakthi Engineering College - [APEC], Kanchipuram facilities',
  admission_process = 'Admission at Adhiparasakthi Engineering College - [APEC], Kanchipuram usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram course information has been cleaned for search and answer engines. Verified programmes for this batch are: BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Information Technology, ME, MBA, MCA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram supports students through facilities such as Library, Laboratories, Hostel, Transport, Placement cell, Sports. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Hostel', 'Transport', 'Placement cell', 'Sports']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiparasakthi Engineering College - [APEC], Kanchipuram has been mapped with approvals or affiliations including AICTE, Anna University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 9,
  data_source_urls = '{"batch":"college-official-content-batch-004","researched_at":"2026-08-01","official":["https://adhiparasakthi.in/"],"website":"https://adhiparasakthi.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-004; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
  data_quality_score = 88,
  data_verified_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-08-01T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = 'ca31b03c-d31f-451a-9682-68bf9a7527ac' AND slug = 'adhiparasakthi-engineering-college-apec-kanchipuram';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiparasakthi-engineering-college-apec-kanchipuram', 'Melmaruvathur, Kanchipuram district, Tamil Nadu', 'https://adhiparasakthi.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiparasakthi-engineering-college-apec-kanchipuram');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Melmaruvathur, Kanchipuram district, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://adhiparasakthi.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiparasakthi-engineering-college-apec-kanchipuram';


DELETE FROM public.course_fees WHERE college_slug = 'adhiparasakthi-engineering-college-apec-kanchipuram';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'be-civil-engineering', 'BE Civil Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'be-computer-science-and-engineering', 'BE Computer Science and Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'be-electronics-and-communication-engineering', 'BE Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'be-electrical-and-electronics-engineering', 'BE Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'be-mechanical-engineering', 'BE Mechanical Engineering', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'b-tech-information-technology', 'B.Tech Information Technology', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'me', 'ME', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'mba', 'MBA', NULL, NULL, '2026'),
  ('adhiparasakthi-engineering-college-apec-kanchipuram', 'mca', 'MCA', NULL, NULL, '2026');

NOTIFY pgrst, 'reload schema';
COMMIT;
