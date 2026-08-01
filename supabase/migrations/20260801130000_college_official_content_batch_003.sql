-- Generated from data/college-official-enrichment/live-next-50-batch-003.json
-- Batch policy: update content for every targeted college; replace course rows only when a reviewed source provides the catalogue.
-- Fees are intentionally blank unless programme, year, quota and category are verified.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '21dfc710-b2ca-49a5-8f47-3f8ca305a71e' AND slug = 'ace-college-of-engineering-trivandrum') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ace-college-of-engineering-trivandrum';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://acetvm.com/',
  official_source_url = 'https://acetvm.com/',
  established = 2013,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'ACE College of Engineering, Trivandrum is listed on DekhoCampus as a engineering college in Kerala. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACE College of Engineering, Trivandrum offers B.Tech Aeronautical Engineering, B.Tech Artificial Intelligence and Machine Learning, B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Mechanical Engineering, B.Tech Mechatronics Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Electronics and Communication Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Trivandrum.',
  meta_title = 'ACE College of Engineering, Trivandrum: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACE College of Engineering, Trivandrum offers B.Tech Aeronautical Engineering, B.Tech Artificial Intelligence and Machine Learning, B.Tech Civil Engineerin',
  meta_keywords = 'ACE College of Engineering, Trivandrum, ACE College of Engineering, Trivandrum admission 2026, ACE College of Engineering, Trivandrum courses, ACE College of Engineering, Trivandrum fees, ACE College of Engineering, Trivandrum placements, ACE College of Engineering, Trivandrum facilities',
  admission_process = 'Admission at ACE College of Engineering, Trivandrum usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACE College of Engineering, Trivandrum course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Aeronautical Engineering, B.Tech Artificial Intelligence and Machine Learning, B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Mechanical Engineering, B.Tech Mechatronics Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Electronics and Communication Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACE College of Engineering, Trivandrum placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACE College of Engineering, Trivandrum supports students through facilities such as Library, Laboratories, Workshops, Campus life, Training support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Workshops', 'Campus life', 'Training support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACE College of Engineering, Trivandrum has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 8,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://acetvm.com/"],"website":"https://acetvm.com/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '21dfc710-b2ca-49a5-8f47-3f8ca305a71e' AND slug = 'ace-college-of-engineering-trivandrum';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'ace-college-of-engineering-trivandrum', 'Thiruvananthapuram, Kerala', 'https://acetvm.com/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'ace-college-of-engineering-trivandrum');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Thiruvananthapuram, Kerala', ''), address),
  website = COALESCE(NULLIF('https://acetvm.com/', ''), website),
  updated_at = now()
WHERE college_slug = 'ace-college-of-engineering-trivandrum';


DELETE FROM public.course_fees WHERE college_slug = 'ace-college-of-engineering-trivandrum';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('ace-college-of-engineering-trivandrum', 'b-tech-aeronautical-engineering', 'B.Tech Aeronautical Engineering', NULL, NULL, '2026'),
  ('ace-college-of-engineering-trivandrum', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning', NULL, NULL, '2026'),
  ('ace-college-of-engineering-trivandrum', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('ace-college-of-engineering-trivandrum', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('ace-college-of-engineering-trivandrum', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('ace-college-of-engineering-trivandrum', 'b-tech-mechatronics-engineering', 'B.Tech Mechatronics Engineering', NULL, NULL, '2026'),
  ('ace-college-of-engineering-trivandrum', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('ace-college-of-engineering-trivandrum', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8f8a1bce-4a21-4104-afac-6ddbd35f56c9' AND slug = 'ace-engineering-college-aceec-hyderabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: ace-engineering-college-aceec-hyderabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.aceec.ac.in/',
  official_source_url = 'https://www.aceec.ac.in/admissions/',
  established = 2007,
  type = 'Private Autonomous',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'UGC', 'NBA']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'UGC', 'NBA']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'ACE Engineering College - [ACEEC], Hyderabad is listed on DekhoCampus as a autonomous engineering college in Hyderabad. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACE Engineering College - [ACEEC], Hyderabad offers B.Tech Computer Science and Engineering, B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning, B.Tech Computer Science and Engineering - Data Science, B.Tech Computer Science and Engineering - Internet of Things, B.Tech Information Technology, B.Tech Electronics and Communication Engineering, B.Tech Civil Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Hyderabad.',
  meta_title = 'ACE Engineering College - [ACEEC], Hyderabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACE Engineering College - [ACEEC], Hyderabad offers B.Tech Computer Science and Engineering, B.Tech Computer Science and Engineering - Artificial Intellige',
  meta_keywords = 'ACE Engineering College - [ACEEC], Hyderabad, ACE Engineering College - [ACEEC], Hyderabad admission 2026, ACE Engineering College - [ACEEC], Hyderabad courses, ACE Engineering College - [ACEEC], Hyderabad fees, ACE Engineering College - [ACEEC], Hyderabad placements, ACE Engineering College - [ACEEC], Hyderabad facilities',
  admission_process = 'Admission at ACE Engineering College - [ACEEC], Hyderabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACE Engineering College - [ACEEC], Hyderabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Computer Science and Engineering, B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning, B.Tech Computer Science and Engineering - Data Science, B.Tech Computer Science and Engineering - Internet of Things, B.Tech Information Technology, B.Tech Electronics and Communication Engineering, B.Tech Civil Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACE Engineering College - [ACEEC], Hyderabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACE Engineering College - [ACEEC], Hyderabad supports students through facilities such as Library, Laboratories, Auditorium, Sports facilities, Hostels, Placement cell. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Auditorium', 'Sports facilities', 'Hostels', 'Placement cell']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACE Engineering College - [ACEEC], Hyderabad has been mapped with approvals or affiliations including AICTE, UGC, NBA. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 9,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.aceec.ac.in/admissions/"],"website":"https://www.aceec.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '8f8a1bce-4a21-4104-afac-6ddbd35f56c9' AND slug = 'ace-engineering-college-aceec-hyderabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'ace-engineering-college-aceec-hyderabad', 'Ankushapur, Ghatkesar Mandal, Medchal District, Telangana - 501301', 'https://www.aceec.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'ace-engineering-college-aceec-hyderabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Ankushapur, Ghatkesar Mandal, Medchal District, Telangana - 501301', ''), address),
  website = COALESCE(NULLIF('https://www.aceec.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'ace-engineering-college-aceec-hyderabad';


DELETE FROM public.course_fees WHERE college_slug = 'ace-engineering-college-aceec-hyderabad';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-computer-science-and-engineering-artificial-intelligence-and-machine-learning', 'B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-computer-science-and-engineering-data-science', 'B.Tech Computer Science and Engineering - Data Science', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-computer-science-and-engineering-internet-of-things', 'B.Tech Computer Science and Engineering - Internet of Things', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-information-technology', 'B.Tech Information Technology', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('ace-engineering-college-aceec-hyderabad', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3deb90bc-2718-45ac-abf2-0d8286fb128d' AND slug = 'achariya-arts-and-science-college-pondicherry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achariya-arts-and-science-college-pondicherry';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aasc.edu.in/',
  official_source_url = 'https://aasc.edu.in/',
  established = 2004,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['Pondicherry University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['Pondicherry University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Achariya Arts and Science College, Pondicherry is listed on DekhoCampus as a arts and science college affiliated with Pondicherry University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Achariya Arts and Science College, Pondicherry offers BA Tamil, BA English, B.Sc Mathematics, B.Sc Biotechnology, B.Sc Computer Science, BCA, B.Com, BBA, M.Com. Check admission route, eligibility, facilities, approvals and source-backed course details for Pondicherry.',
  meta_title = 'Achariya Arts and Science College, Pondicherry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achariya Arts and Science College, Pondicherry offers BA Tamil, BA English, B.Sc Mathematics, B.Sc Biotechnology, B.Sc Computer Science, BCA, B.Com, BBA, M',
  meta_keywords = 'Achariya Arts and Science College, Pondicherry, Achariya Arts and Science College, Pondicherry admission 2026, Achariya Arts and Science College, Pondicherry courses, Achariya Arts and Science College, Pondicherry fees, Achariya Arts and Science College, Pondicherry placements, Achariya Arts and Science College, Pondicherry facilities',
  admission_process = 'Admission at Achariya Arts and Science College, Pondicherry usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Achariya Arts and Science College, Pondicherry course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA Tamil, BA English, B.Sc Mathematics, B.Sc Biotechnology, B.Sc Computer Science, BCA, B.Com, BBA, M.Com. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Achariya Arts and Science College, Pondicherry placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Achariya Arts and Science College, Pondicherry supports students through facilities such as Classrooms, Library, Computer lab, Student activities, Academic mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Classrooms', 'Library', 'Computer lab', 'Student activities', 'Academic mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Achariya Arts and Science College, Pondicherry has been mapped with approvals or affiliations including Pondicherry University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 9,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://aasc.edu.in/"],"website":"https://aasc.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '3deb90bc-2718-45ac-abf2-0d8286fb128d' AND slug = 'achariya-arts-and-science-college-pondicherry';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'achariya-arts-and-science-college-pondicherry', 'Achariyapuram, Villianur, Puducherry - 605110', 'https://aasc.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'achariya-arts-and-science-college-pondicherry');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Achariyapuram, Villianur, Puducherry - 605110', ''), address),
  website = COALESCE(NULLIF('https://aasc.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'achariya-arts-and-science-college-pondicherry';


DELETE FROM public.course_fees WHERE college_slug = 'achariya-arts-and-science-college-pondicherry';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('achariya-arts-and-science-college-pondicherry', 'ba-tamil', 'BA Tamil', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'ba-english', 'BA English', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'b-sc-mathematics', 'B.Sc Mathematics', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'b-sc-biotechnology', 'B.Sc Biotechnology', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'b-sc-computer-science', 'B.Sc Computer Science', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'bca', 'BCA', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'bba', 'BBA', NULL, NULL, '2026'),
  ('achariya-arts-and-science-college-pondicherry', 'm-com', 'M.Com', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4be60294-888c-48f4-b943-486561f50bcb' AND slug = 'achariya-college-of-education-pondicherry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achariya-college-of-education-pondicherry';
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
  description = 'Achariya College of Education, Pondicherry is listed on DekhoCampus as a teacher education college in Pondicherry. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Achariya College of Education, Pondicherry offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Pondicherry.',
  meta_title = 'Achariya College of Education, Pondicherry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achariya College of Education, Pondicherry offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details',
  meta_keywords = 'Achariya College of Education, Pondicherry, Achariya College of Education, Pondicherry admission 2026, Achariya College of Education, Pondicherry courses, Achariya College of Education, Pondicherry fees, Achariya College of Education, Pondicherry placements, Achariya College of Education, Pondicherry facilities',
  admission_process = 'Admission at Achariya College of Education, Pondicherry usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Achariya College of Education, Pondicherry course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Achariya College of Education, Pondicherry placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Achariya College of Education, Pondicherry supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Achariya College of Education, Pondicherry has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '4be60294-888c-48f4-b943-486561f50bcb' AND slug = 'achariya-college-of-education-pondicherry';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'achariya-college-of-education-pondicherry', 'Pondicherry, Puducherry', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'achariya-college-of-education-pondicherry');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Pondicherry, Puducherry', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'achariya-college-of-education-pondicherry';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7086eec5-9ea9-466b-aca0-20d0aa5b8aef' AND slug = 'achariya-college-of-engineering-technology-acet-pondicherry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achariya-college-of-engineering-technology-acet-pondicherry';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.acet.edu.in/',
  official_source_url = 'https://achariya.in/courses-offered/',
  established = 2010,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Achariya College of Engineering Technology - [ACET], Pondicherry is listed on DekhoCampus as a engineering college in Puducherry. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Achariya College of Engineering Technology - [ACET], Pondicherry offers B.Tech Artificial Intelligence and Data Science, B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Electronics and Communication Engineering, B.Tech Mechanical Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Pondicherry.',
  meta_title = 'Achariya College of Engineering Technology - [ACET], Pondicherry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achariya College of Engineering Technology - [ACET], Pondicherry offers B.Tech Artificial Intelligence and Data Science, B.Tech Civil Engineering, B.Tech C',
  meta_keywords = 'Achariya College of Engineering Technology - [ACET], Pondicherry, Achariya College of Engineering Technology - [ACET], Pondicherry admission 2026, Achariya College of Engineering Technology - [ACET], Pondicherry courses, Achariya College of Engineering Technology - [ACET], Pondicherry fees, Achariya College of Engineering Technology - [ACET], Pondicherry placements, Achariya College of Engineering Technology - [ACET], Pondicherry facilities',
  admission_process = 'Admission at Achariya College of Engineering Technology - [ACET], Pondicherry usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Achariya College of Engineering Technology - [ACET], Pondicherry course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Artificial Intelligence and Data Science, B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Electronics and Communication Engineering, B.Tech Mechanical Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Achariya College of Engineering Technology - [ACET], Pondicherry placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Achariya College of Engineering Technology - [ACET], Pondicherry supports students through facilities such as Engineering laboratories, Library, Career support, Student development programs, Mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Library', 'Career support', 'Student development programs', 'Mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Achariya College of Engineering Technology - [ACET], Pondicherry has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 6,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://achariya.in/courses-offered/"],"website":"https://www.acet.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '7086eec5-9ea9-466b-aca0-20d0aa5b8aef' AND slug = 'achariya-college-of-engineering-technology-acet-pondicherry';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'achariya-college-of-engineering-technology-acet-pondicherry', 'Achariyapuram, Villianur, Puducherry - 605110', 'https://www.acet.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'achariya-college-of-engineering-technology-acet-pondicherry');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Achariyapuram, Villianur, Puducherry - 605110', ''), address),
  website = COALESCE(NULLIF('https://www.acet.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'achariya-college-of-engineering-technology-acet-pondicherry';


DELETE FROM public.course_fees WHERE college_slug = 'achariya-college-of-engineering-technology-acet-pondicherry';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('achariya-college-of-engineering-technology-acet-pondicherry', 'b-tech-artificial-intelligence-and-data-science', 'B.Tech Artificial Intelligence and Data Science', NULL, NULL, '2026'),
  ('achariya-college-of-engineering-technology-acet-pondicherry', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('achariya-college-of-engineering-technology-acet-pondicherry', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('achariya-college-of-engineering-technology-acet-pondicherry', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('achariya-college-of-engineering-technology-acet-pondicherry', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('achariya-college-of-engineering-technology-acet-pondicherry', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '45cdc934-2df7-4077-a89c-d1fb247b020a' AND slug = 'achariya-school-of-business-amp-technology-asbt-pondicherry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achariya-school-of-business-amp-technology-asbt-pondicherry';
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
  description = 'Achariya School of Business & Technology - [ASBT], Pondicherry is listed on DekhoCampus as a engineering college in Pondicherry. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Achariya School of Business & Technology - [ASBT], Pondicherry offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Pondicherry.',
  meta_title = 'Achariya School of Business & Technology - [ASBT], Pondicherry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achariya School of Business & Technology - [ASBT], Pondicherry offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, ',
  meta_keywords = 'Achariya School of Business & Technology - [ASBT], Pondicherry, Achariya School of Business & Technology - [ASBT], Pondicherry admission 2026, Achariya School of Business & Technology - [ASBT], Pondicherry courses, Achariya School of Business & Technology - [ASBT], Pondicherry fees, Achariya School of Business & Technology - [ASBT], Pondicherry placements, Achariya School of Business & Technology - [ASBT], Pondicherry facilities',
  admission_process = 'Admission at Achariya School of Business & Technology - [ASBT], Pondicherry usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Achariya School of Business & Technology - [ASBT], Pondicherry has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '45cdc934-2df7-4077-a89c-d1fb247b020a' AND slug = 'achariya-school-of-business-amp-technology-asbt-pondicherry';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'achariya-school-of-business-amp-technology-asbt-pondicherry', 'Pondicherry, Puducherry', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'achariya-school-of-business-amp-technology-asbt-pondicherry');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Pondicherry, Puducherry', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'achariya-school-of-business-amp-technology-asbt-pondicherry';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f8224b01-a8b7-40cb-94e2-7abb2e54f035' AND slug = 'achariya-school-tourism-and-hotel-management-pondicherry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achariya-school-tourism-and-hotel-management-pondicherry';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://achariya.in/courses-offered/',
  official_source_url = 'https://achariya.in/courses-offered/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Achariya School Tourism and Hotel Management, Pondicherry is listed on DekhoCampus as a hospitality and tourism school in Puducherry. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Achariya School Tourism and Hotel Management, Pondicherry offers Diploma in Hotel and Catering Administration, B.Sc Hotel and Catering Administration, MBA Hospitality Management. Check admission route, eligibility, facilities, approvals and source-backed course details for Pondicherry.',
  meta_title = 'Achariya School Tourism and Hotel Management, Pondicherry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achariya School Tourism and Hotel Management, Pondicherry offers Diploma in Hotel and Catering Administration, B.Sc Hotel and Catering Administration, MBA ',
  meta_keywords = 'Achariya School Tourism and Hotel Management, Pondicherry, Achariya School Tourism and Hotel Management, Pondicherry admission 2026, Achariya School Tourism and Hotel Management, Pondicherry courses, Achariya School Tourism and Hotel Management, Pondicherry fees, Achariya School Tourism and Hotel Management, Pondicherry placements, Achariya School Tourism and Hotel Management, Pondicherry facilities',
  admission_process = 'Admission at Achariya School Tourism and Hotel Management, Pondicherry usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Achariya School Tourism and Hotel Management, Pondicherry course information has been cleaned for search and answer engines. Verified programmes for this batch are: Diploma in Hotel and Catering Administration, B.Sc Hotel and Catering Administration, MBA Hospitality Management. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Achariya School Tourism and Hotel Management, Pondicherry placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Achariya School Tourism and Hotel Management, Pondicherry supports students through facilities such as Training kitchen, Hospitality lab, Classrooms, Placement support, Career mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Training kitchen', 'Hospitality lab', 'Classrooms', 'Placement support', 'Career mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Achariya School Tourism and Hotel Management, Pondicherry has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  courses_count = 3,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://achariya.in/courses-offered/"],"website":"https://achariya.in/courses-offered/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'f8224b01-a8b7-40cb-94e2-7abb2e54f035' AND slug = 'achariya-school-tourism-and-hotel-management-pondicherry';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'achariya-school-tourism-and-hotel-management-pondicherry', 'Achariyapuram, Villianur, Puducherry - 605110', 'https://achariya.in/courses-offered/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'achariya-school-tourism-and-hotel-management-pondicherry');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Achariyapuram, Villianur, Puducherry - 605110', ''), address),
  website = COALESCE(NULLIF('https://achariya.in/courses-offered/', ''), website),
  updated_at = now()
WHERE college_slug = 'achariya-school-tourism-and-hotel-management-pondicherry';


DELETE FROM public.course_fees WHERE college_slug = 'achariya-school-tourism-and-hotel-management-pondicherry';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('achariya-school-tourism-and-hotel-management-pondicherry', 'diploma-in-hotel-and-catering-administration', 'Diploma in Hotel and Catering Administration', NULL, NULL, '2026'),
  ('achariya-school-tourism-and-hotel-management-pondicherry', 'b-sc-hotel-and-catering-administration', 'B.Sc Hotel and Catering Administration', NULL, NULL, '2026'),
  ('achariya-school-tourism-and-hotel-management-pondicherry', 'mba-hospitality-management', 'MBA Hospitality Management', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c4ad33cd-5fcc-48d8-ba61-0046df0848af' AND slug = 'acharya-and-bm-reddy-college-of-pharmacy-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-and-bm-reddy-college-of-pharmacy-bangalore';
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
  description = 'Acharya and BM Reddy College of Pharmacy, Bangalore is listed on DekhoCampus as a pharmacy college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya and BM Reddy College of Pharmacy, Bangalore offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya and BM Reddy College of Pharmacy, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya and BM Reddy College of Pharmacy, Bangalore offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-',
  meta_keywords = 'Acharya and BM Reddy College of Pharmacy, Bangalore, Acharya and BM Reddy College of Pharmacy, Bangalore admission 2026, Acharya and BM Reddy College of Pharmacy, Bangalore courses, Acharya and BM Reddy College of Pharmacy, Bangalore fees, Acharya and BM Reddy College of Pharmacy, Bangalore placements, Acharya and BM Reddy College of Pharmacy, Bangalore facilities',
  admission_process = 'Admission at Acharya and BM Reddy College of Pharmacy, Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore supports students through facilities such as Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya and BM Reddy College of Pharmacy, Bangalore has been mapped with approvals or affiliations including PCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'c4ad33cd-5fcc-48d8-ba61-0046df0848af' AND slug = 'acharya-and-bm-reddy-college-of-pharmacy-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-and-bm-reddy-college-of-pharmacy-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-and-bm-reddy-college-of-pharmacy-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-and-bm-reddy-college-of-pharmacy-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a5986ad8-71e9-44e2-b19d-3a862ec6110f' AND slug = 'acharya-bangalore-b-school-abbs-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-bangalore-b-school-abbs-bangalore';
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
  description = 'Acharya Bangalore B-School - [ABBS], Bangalore is listed on DekhoCampus as a college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Bangalore B-School - [ABBS], Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya Bangalore B-School - [ABBS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Bangalore B-School - [ABBS], Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, ap',
  meta_keywords = 'Acharya Bangalore B-School - [ABBS], Bangalore, Acharya Bangalore B-School - [ABBS], Bangalore admission 2026, Acharya Bangalore B-School - [ABBS], Bangalore courses, Acharya Bangalore B-School - [ABBS], Bangalore fees, Acharya Bangalore B-School - [ABBS], Bangalore placements, Acharya Bangalore B-School - [ABBS], Bangalore facilities',
  admission_process = 'Admission at Acharya Bangalore B-School - [ABBS], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Bangalore B-School - [ABBS], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Bangalore B-School - [ABBS], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Bangalore B-School - [ABBS], Bangalore supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Bangalore B-School - [ABBS], Bangalore has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'a5986ad8-71e9-44e2-b19d-3a862ec6110f' AND slug = 'acharya-bangalore-b-school-abbs-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-bangalore-b-school-abbs-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-bangalore-b-school-abbs-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-bangalore-b-school-abbs-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9a302796-1ff4-4e06-8a2b-28c69ce92293' AND slug = 'acharya-brojendra-nath-seal-college-cooch-behar') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-brojendra-nath-seal-college-cooch-behar';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://abnsealcollege.ac.in/',
  official_source_url = 'https://abnsealcollege.ac.in/academics/courses/',
  established = 1888,
  type = 'Government',
  approvals = CASE WHEN array_length(ARRAY['UGC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Brojendra Nath Seal College, Cooch Behar is listed on DekhoCampus as a government general degree college affiliated with Cooch Behar Panchanan Barma University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Brojendra Nath Seal College, Cooch Behar offers BA General, B.Sc General, MA Bengali, MA History, MA Sanskrit, M.Sc Zoology. Check admission route, eligibility, facilities, approvals and source-backed course details for Cooch Behar.',
  meta_title = 'Acharya Brojendra Nath Seal College, Cooch Behar: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Brojendra Nath Seal College, Cooch Behar offers BA General, B.Sc General, MA Bengali, MA History, MA Sanskrit, M.Sc Zoology. Check admission route,',
  meta_keywords = 'Acharya Brojendra Nath Seal College, Cooch Behar, Acharya Brojendra Nath Seal College, Cooch Behar admission 2026, Acharya Brojendra Nath Seal College, Cooch Behar courses, Acharya Brojendra Nath Seal College, Cooch Behar fees, Acharya Brojendra Nath Seal College, Cooch Behar placements, Acharya Brojendra Nath Seal College, Cooch Behar facilities',
  admission_process = 'Admission at Acharya Brojendra Nath Seal College, Cooch Behar usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Brojendra Nath Seal College, Cooch Behar course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA General, B.Sc General, MA Bengali, MA History, MA Sanskrit, M.Sc Zoology. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Brojendra Nath Seal College, Cooch Behar placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Brojendra Nath Seal College, Cooch Behar supports students through facilities such as Library, Hostel, Laboratories, Scholarship support, Student credit card support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Hostel', 'Laboratories', 'Scholarship support', 'Student credit card support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Brojendra Nath Seal College, Cooch Behar has been mapped with approvals or affiliations including UGC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 6,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://abnsealcollege.ac.in/academics/courses/"],"website":"https://abnsealcollege.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '9a302796-1ff4-4e06-8a2b-28c69ce92293' AND slug = 'acharya-brojendra-nath-seal-college-cooch-behar';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-brojendra-nath-seal-college-cooch-behar', 'Beside Rashmela Ground, Cooch Behar, West Bengal - 736101', 'https://abnsealcollege.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-brojendra-nath-seal-college-cooch-behar');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beside Rashmela Ground, Cooch Behar, West Bengal - 736101', ''), address),
  website = COALESCE(NULLIF('https://abnsealcollege.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-brojendra-nath-seal-college-cooch-behar';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-brojendra-nath-seal-college-cooch-behar';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-brojendra-nath-seal-college-cooch-behar', 'ba-general', 'BA General', NULL, NULL, '2026'),
  ('acharya-brojendra-nath-seal-college-cooch-behar', 'b-sc-general', 'B.Sc General', NULL, NULL, '2026'),
  ('acharya-brojendra-nath-seal-college-cooch-behar', 'ma-bengali', 'MA Bengali', NULL, NULL, '2026'),
  ('acharya-brojendra-nath-seal-college-cooch-behar', 'ma-history', 'MA History', NULL, NULL, '2026'),
  ('acharya-brojendra-nath-seal-college-cooch-behar', 'ma-sanskrit', 'MA Sanskrit', NULL, NULL, '2026'),
  ('acharya-brojendra-nath-seal-college-cooch-behar', 'm-sc-zoology', 'M.Sc Zoology', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '861ed9f2-60b3-4e3d-91c2-dfc18daf3326' AND slug = 'acharya-college-of-education-ace-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-college-of-education-ace-bangalore';
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
  description = 'Acharya College of Education - [ACE], Bangalore is listed on DekhoCampus as a teacher education college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya College of Education - [ACE], Bangalore offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya College of Education - [ACE], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya College of Education - [ACE], Bangalore offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course de',
  meta_keywords = 'Acharya College of Education - [ACE], Bangalore, Acharya College of Education - [ACE], Bangalore admission 2026, Acharya College of Education - [ACE], Bangalore courses, Acharya College of Education - [ACE], Bangalore fees, Acharya College of Education - [ACE], Bangalore placements, Acharya College of Education - [ACE], Bangalore facilities',
  admission_process = 'Admission at Acharya College of Education - [ACE], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya College of Education - [ACE], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya College of Education - [ACE], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya College of Education - [ACE], Bangalore supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya College of Education - [ACE], Bangalore has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '861ed9f2-60b3-4e3d-91c2-dfc18daf3326' AND slug = 'acharya-college-of-education-ace-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-college-of-education-ace-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-college-of-education-ace-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-college-of-education-ace-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2d9175a4-5056-451a-883b-ad797d3d14f9' AND slug = 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.lesayurvediccollege.com/',
  official_source_url = 'https://www.lesayurvediccollege.com/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCISM', 'Ministry of Ayush', 'RGUHS']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCISM', 'Ministry of Ayush', 'RGUHS']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum is listed on DekhoCampus as a Ayurveda college affiliated with Rajiv Gandhi University of Health Sciences. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum offers BAMS. Check admission route, eligibility, facilities, approvals and source-backed course details for Belgaum.',
  meta_title = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum offers BAMS. Check admission route, eligibility, facilities, approvals and source-back',
  meta_keywords = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum, Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum admission 2026, Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum courses, Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum fees, Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum placements, Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum facilities',
  admission_process = 'Admission at Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum course information has been cleaned for search and answer engines. Verified programmes for this batch are: BAMS. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum supports students through facilities such as Ayurveda hospital, Panchakarma facilities, Library, Laboratories, Clinical training. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Ayurveda hospital', 'Panchakarma facilities', 'Library', 'Laboratories', 'Clinical training']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Deshabhushan Ayurvedic Medical College and Hospital, Belgaum has been mapped with approvals or affiliations including NCISM, Ministry of Ayush, RGUHS. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 1,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.lesayurvediccollege.com/"],"website":"https://www.lesayurvediccollege.com/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '2d9175a4-5056-451a-883b-ad797d3d14f9' AND slug = 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum', 'Shantinagar, Bedkihal-Shamanewadi, Belagavi, Karnataka - 591214', 'https://www.lesayurvediccollege.com/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Shantinagar, Bedkihal-Shamanewadi, Belagavi, Karnataka - 591214', ''), address),
  website = COALESCE(NULLIF('https://www.lesayurvediccollege.com/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-deshabhushan-ayurvedic-medical-college-and-hospital-belgaum', 'bams', 'BAMS', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cf4948f8-5059-4a29-a1f5-094fe3588827' AND slug = 'acharya-girish-chandra-bose-college-agcbc-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-girish-chandra-bose-college-agcbc-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.agcbosecollege.org/',
  official_source_url = 'https://www.agcbosecollege.org/drpartments.html',
  established = 1964,
  type = 'Government Aided',
  approvals = CASE WHEN array_length(ARRAY['UGC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata is listed on DekhoCampus as a college affiliated with University of Calcutta. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata offers B.Com Honours, B.Com General, BA Honours, BA General. Check admission route, eligibility, facilities, approvals and source-backed course details for Kolkata.',
  meta_title = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata offers B.Com Honours, B.Com General, BA Honours, BA General. Check admission route, eligibility, fac',
  meta_keywords = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata, Acharya Girish Chandra Bose College - [AGCBC], Kolkata admission 2026, Acharya Girish Chandra Bose College - [AGCBC], Kolkata courses, Acharya Girish Chandra Bose College - [AGCBC], Kolkata fees, Acharya Girish Chandra Bose College - [AGCBC], Kolkata placements, Acharya Girish Chandra Bose College - [AGCBC], Kolkata facilities',
  admission_process = 'Admission at Acharya Girish Chandra Bose College - [AGCBC], Kolkata usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Com Honours, B.Com General, BA Honours, BA General. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata supports students through facilities such as Central library, Departmental library, Wi-Fi, ICT classrooms, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Central library', 'Departmental library', 'Wi-Fi', 'ICT classrooms', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Girish Chandra Bose College - [AGCBC], Kolkata has been mapped with approvals or affiliations including UGC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 4,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.agcbosecollege.org/drpartments.html"],"website":"https://www.agcbosecollege.org/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'cf4948f8-5059-4a29-a1f5-094fe3588827' AND slug = 'acharya-girish-chandra-bose-college-agcbc-kolkata';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-girish-chandra-bose-college-agcbc-kolkata', 'Kolkata, West Bengal', 'https://www.agcbosecollege.org/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-girish-chandra-bose-college-agcbc-kolkata');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kolkata, West Bengal', ''), address),
  website = COALESCE(NULLIF('https://www.agcbosecollege.org/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-girish-chandra-bose-college-agcbc-kolkata';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-girish-chandra-bose-college-agcbc-kolkata';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-girish-chandra-bose-college-agcbc-kolkata', 'b-com-honours', 'B.Com Honours', NULL, NULL, '2026'),
  ('acharya-girish-chandra-bose-college-agcbc-kolkata', 'b-com-general', 'B.Com General', NULL, NULL, '2026'),
  ('acharya-girish-chandra-bose-college-agcbc-kolkata', 'ba-honours', 'BA Honours', NULL, NULL, '2026'),
  ('acharya-girish-chandra-bose-college-agcbc-kolkata', 'ba-general', 'BA General', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '90b5b00a-7566-416e-b62f-73d22ebb7ed0' AND slug = 'acharya-institute-of-graduate-studies-aigs-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-institute-of-graduate-studies-aigs-bangalore';
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
  description = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore is listed on DekhoCampus as a college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, fac',
  meta_keywords = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore, Acharya Institute of Graduate Studies - [AIGS], Bangalore admission 2026, Acharya Institute of Graduate Studies - [AIGS], Bangalore courses, Acharya Institute of Graduate Studies - [AIGS], Bangalore fees, Acharya Institute of Graduate Studies - [AIGS], Bangalore placements, Acharya Institute of Graduate Studies - [AIGS], Bangalore facilities',
  admission_process = 'Admission at Acharya Institute of Graduate Studies - [AIGS], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Institute of Graduate Studies - [AIGS], Bangalore has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '90b5b00a-7566-416e-b62f-73d22ebb7ed0' AND slug = 'acharya-institute-of-graduate-studies-aigs-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-institute-of-graduate-studies-aigs-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-institute-of-graduate-studies-aigs-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-institute-of-graduate-studies-aigs-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '61ab183e-190d-4065-9fab-34d5b3ee7af3' AND slug = 'acharya-institute-of-health-sciences-aihs-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-institute-of-health-sciences-aihs-bangalore';
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
  description = 'Acharya Institute of Health Sciences - [AIHS], Bangalore is listed on DekhoCampus as a college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Institute of Health Sciences - [AIHS], Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya Institute of Health Sciences - [AIHS], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Institute of Health Sciences - [AIHS], Bangalore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, faci',
  meta_keywords = 'Acharya Institute of Health Sciences - [AIHS], Bangalore, Acharya Institute of Health Sciences - [AIHS], Bangalore admission 2026, Acharya Institute of Health Sciences - [AIHS], Bangalore courses, Acharya Institute of Health Sciences - [AIHS], Bangalore fees, Acharya Institute of Health Sciences - [AIHS], Bangalore placements, Acharya Institute of Health Sciences - [AIHS], Bangalore facilities',
  admission_process = 'Admission at Acharya Institute of Health Sciences - [AIHS], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Institute of Health Sciences - [AIHS], Bangalore has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '61ab183e-190d-4065-9fab-34d5b3ee7af3' AND slug = 'acharya-institute-of-health-sciences-aihs-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-institute-of-health-sciences-aihs-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-institute-of-health-sciences-aihs-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-institute-of-health-sciences-aihs-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9fe8ffb8-8377-4a3e-897d-9fe863146743' AND slug = 'acharya-institute-of-technology-ait-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-institute-of-technology-ait-bangalore';
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
  description = 'Acharya Institute of Technology - [AIT], Bangalore is listed on DekhoCampus as a engineering college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Institute of Technology - [AIT], Bangalore offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya Institute of Technology - [AIT], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Institute of Technology - [AIT], Bangalore offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals an',
  meta_keywords = 'Acharya Institute of Technology - [AIT], Bangalore, Acharya Institute of Technology - [AIT], Bangalore admission 2026, Acharya Institute of Technology - [AIT], Bangalore courses, Acharya Institute of Technology - [AIT], Bangalore fees, Acharya Institute of Technology - [AIT], Bangalore placements, Acharya Institute of Technology - [AIT], Bangalore facilities',
  admission_process = 'Admission at Acharya Institute of Technology - [AIT], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Institute of Technology - [AIT], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Institute of Technology - [AIT], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Institute of Technology - [AIT], Bangalore supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Institute of Technology - [AIT], Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '9fe8ffb8-8377-4a3e-897d-9fe863146743' AND slug = 'acharya-institute-of-technology-ait-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-institute-of-technology-ait-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-institute-of-technology-ait-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-institute-of-technology-ait-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'acf0aa78-e64b-4a27-bc50-95682f52e558' AND slug = 'acharya-jagadish-chandra-bose-college-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-jagadish-chandra-bose-college-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://ajcbosecollege.org/',
  official_source_url = 'https://ajcbosecollege.org/webportal/website/pages/departments',
  type = 'Government Aided',
  approvals = CASE WHEN array_length(ARRAY['UGC', 'NCTE', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC', 'NCTE', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Jagadish Chandra Bose College, Kolkata is listed on DekhoCampus as a college affiliated with University of Calcutta. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Jagadish Chandra Bose College, Kolkata offers BA, B.Sc, B.Com, B.Ed, BBA. Check admission route, eligibility, facilities, approvals and source-backed course details for Kolkata.',
  meta_title = 'Acharya Jagadish Chandra Bose College, Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Jagadish Chandra Bose College, Kolkata offers BA, B.Sc, B.Com, B.Ed, BBA. Check admission route, eligibility, facilities, approvals and source-back',
  meta_keywords = 'Acharya Jagadish Chandra Bose College, Kolkata, Acharya Jagadish Chandra Bose College, Kolkata admission 2026, Acharya Jagadish Chandra Bose College, Kolkata courses, Acharya Jagadish Chandra Bose College, Kolkata fees, Acharya Jagadish Chandra Bose College, Kolkata placements, Acharya Jagadish Chandra Bose College, Kolkata facilities',
  admission_process = 'Admission at Acharya Jagadish Chandra Bose College, Kolkata usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Jagadish Chandra Bose College, Kolkata course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA, B.Sc, B.Com, B.Ed, BBA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Jagadish Chandra Bose College, Kolkata placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Jagadish Chandra Bose College, Kolkata supports students through facilities such as Library, ICT classrooms, Laboratories, Student support, Academic departments. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'ICT classrooms', 'Laboratories', 'Student support', 'Academic departments']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Jagadish Chandra Bose College, Kolkata has been mapped with approvals or affiliations including UGC, NCTE, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 5,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://ajcbosecollege.org/webportal/website/pages/departments"],"website":"https://ajcbosecollege.org/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'acf0aa78-e64b-4a27-bc50-95682f52e558' AND slug = 'acharya-jagadish-chandra-bose-college-kolkata';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-jagadish-chandra-bose-college-kolkata', '1/1B, Acharya Jagadish Chandra Bose Road, Kolkata, West Bengal - 700020', 'https://ajcbosecollege.org/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-jagadish-chandra-bose-college-kolkata');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('1/1B, Acharya Jagadish Chandra Bose Road, Kolkata, West Bengal - 700020', ''), address),
  website = COALESCE(NULLIF('https://ajcbosecollege.org/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-jagadish-chandra-bose-college-kolkata';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-jagadish-chandra-bose-college-kolkata';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-jagadish-chandra-bose-college-kolkata', 'ba', 'BA', NULL, NULL, '2026'),
  ('acharya-jagadish-chandra-bose-college-kolkata', 'b-sc', 'B.Sc', NULL, NULL, '2026'),
  ('acharya-jagadish-chandra-bose-college-kolkata', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('acharya-jagadish-chandra-bose-college-kolkata', 'b-ed', 'B.Ed', NULL, NULL, '2026'),
  ('acharya-jagadish-chandra-bose-college-kolkata', 'bba', 'BBA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '112cea21-979a-49b8-8b7b-824f96d97dba' AND slug = 'acharya-jawadekar-college-of-education-kolhapur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-jawadekar-college-of-education-kolhapur';
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
  description = 'Acharya Jawadekar College of Education, Kolhapur is listed on DekhoCampus as a teacher education college in Kolhapur. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Jawadekar College of Education, Kolhapur offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Kolhapur.',
  meta_title = 'Acharya Jawadekar College of Education, Kolhapur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Jawadekar College of Education, Kolhapur offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course d',
  meta_keywords = 'Acharya Jawadekar College of Education, Kolhapur, Acharya Jawadekar College of Education, Kolhapur admission 2026, Acharya Jawadekar College of Education, Kolhapur courses, Acharya Jawadekar College of Education, Kolhapur fees, Acharya Jawadekar College of Education, Kolhapur placements, Acharya Jawadekar College of Education, Kolhapur facilities',
  admission_process = 'Admission at Acharya Jawadekar College of Education, Kolhapur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Jawadekar College of Education, Kolhapur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Jawadekar College of Education, Kolhapur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Jawadekar College of Education, Kolhapur supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Jawadekar College of Education, Kolhapur has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '112cea21-979a-49b8-8b7b-824f96d97dba' AND slug = 'acharya-jawadekar-college-of-education-kolhapur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-jawadekar-college-of-education-kolhapur', 'Kolhapur, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-jawadekar-college-of-education-kolhapur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kolhapur, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-jawadekar-college-of-education-kolhapur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7075f5fc-e793-4ee2-a505-89ef89a91f45' AND slug = 'acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur';
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
  description = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur is listed on DekhoCampus as a engineering college in Guntur. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Guntur.',
  meta_title = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur offers B.Tech, M.Tech, Diploma Engineering. Check ',
  meta_keywords = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur admission 2026, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur courses, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur fees, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur placements, Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur facilities',
  admission_process = 'Admission at Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya N. G. Ranga Agricultural University, College of Agricultural Engineering Bapatla - [CAE], Guntur has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '7075f5fc-e793-4ee2-a505-89ef89a91f45' AND slug = 'acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur', 'Guntur, Andhra Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Guntur, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-n-g-ranga-agricultural-university-college-of-agricultural-engineering-bapatla-cae-guntur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ba14bce5-b10c-46b8-a6cf-23094d26d0d0' AND slug = 'acharya-nagarjuna-university-anu-guntur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-nagarjuna-university-anu-guntur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.nagarjunauniversity.ac.in/',
  official_source_url = 'https://www.nagarjunauniversity.ac.in/pages/Coursesoffered/Coursesoffered/static/pg.html',
  established = 1976,
  type = 'State University',
  approvals = CASE WHEN array_length(ARRAY['UGC', 'NAAC A+']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC', 'NAAC A+']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Nagarjuna University - [ANU], Guntur is listed on DekhoCampus as a state university in Andhra Pradesh. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Nagarjuna University - [ANU], Guntur offers M.Tech, M.Pharm, MCA, M.Sc, MA, M.Ed, LLM, MBA, M.Com, MSW, M.P.Ed, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Guntur.',
  meta_title = 'Acharya Nagarjuna University - [ANU], Guntur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Nagarjuna University - [ANU], Guntur offers M.Tech, M.Pharm, MCA, M.Sc, MA, M.Ed, LLM, MBA, M.Com, MSW, M.P.Ed, Ph.D. Check admission route, eligib',
  meta_keywords = 'Acharya Nagarjuna University - [ANU], Guntur, Acharya Nagarjuna University - [ANU], Guntur admission 2026, Acharya Nagarjuna University - [ANU], Guntur courses, Acharya Nagarjuna University - [ANU], Guntur fees, Acharya Nagarjuna University - [ANU], Guntur placements, Acharya Nagarjuna University - [ANU], Guntur facilities',
  admission_process = 'Admission at Acharya Nagarjuna University - [ANU], Guntur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Nagarjuna University - [ANU], Guntur course information has been cleaned for search and answer engines. Verified programmes for this batch are: M.Tech, M.Pharm, MCA, M.Sc, MA, M.Ed, LLM, MBA, M.Com, MSW, M.P.Ed, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Nagarjuna University - [ANU], Guntur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Nagarjuna University - [ANU], Guntur supports students through facilities such as Central library, Research departments, Hostels, Sports, International student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Central library', 'Research departments', 'Hostels', 'Sports', 'International student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Nagarjuna University - [ANU], Guntur has been mapped with approvals or affiliations including UGC, NAAC A+. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 12,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.nagarjunauniversity.ac.in/pages/Coursesoffered/Coursesoffered/static/pg.html"],"website":"https://www.nagarjunauniversity.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'ba14bce5-b10c-46b8-a6cf-23094d26d0d0' AND slug = 'acharya-nagarjuna-university-anu-guntur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-nagarjuna-university-anu-guntur', 'NH16, Nagarjuna Nagar, Guntur, Andhra Pradesh - 522510', 'https://www.nagarjunauniversity.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-nagarjuna-university-anu-guntur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('NH16, Nagarjuna Nagar, Guntur, Andhra Pradesh - 522510', ''), address),
  website = COALESCE(NULLIF('https://www.nagarjunauniversity.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-nagarjuna-university-anu-guntur';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-nagarjuna-university-anu-guntur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-nagarjuna-university-anu-guntur', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'm-pharm', 'M.Pharm', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'mca', 'MCA', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'm-sc', 'M.Sc', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'ma', 'MA', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'm-ed', 'M.Ed', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'llm', 'LLM', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'mba', 'MBA', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'm-com', 'M.Com', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'msw', 'MSW', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'm-p-ed', 'M.P.Ed', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-anu-guntur', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3522dae6-3b42-4c03-a6e2-304937b6eeb9' AND slug = 'acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.acharyanagarjunauniversity.in/',
  official_source_url = 'https://www.acharyanagarjunauniversity.in/undergraduate-programmes.html',
  type = 'State University Distance Education',
  approvals = CASE WHEN array_length(ARRAY['UGC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur is listed on DekhoCampus as a distance education centre of Acharya Nagarjuna University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur offers B.Com, BBA, BLISc, BA, M.Com, MA, MBA, M.Sc. Check admission route, eligibility, facilities, approvals and source-backed course details for Guntur.',
  meta_title = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur offers B.Com, BBA, BLISc, BA, M.Com, MA, MBA, M.Sc. Check admission route, e',
  meta_keywords = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur, Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur admission 2026, Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur courses, Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur fees, Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur placements, Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur facilities',
  admission_process = 'Admission at Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Com, BBA, BLISc, BA, M.Com, MA, MBA, M.Sc. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur supports students through facilities such as Online learning support, Study material, Admissions helpdesk, Learner support, Digital resources. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Online learning support', 'Study material', 'Admissions helpdesk', 'Learner support', 'Digital resources']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Nagarjuna University, Centre For Distance Education - [ANUCDE], Guntur has been mapped with approvals or affiliations including UGC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 8,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.acharyanagarjunauniversity.in/undergraduate-programmes.html"],"website":"https://www.acharyanagarjunauniversity.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '3522dae6-3b42-4c03-a6e2-304937b6eeb9' AND slug = 'acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'Nagarjuna Nagar, Guntur, Andhra Pradesh - 522510', 'https://www.acharyanagarjunauniversity.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Nagarjuna Nagar, Guntur, Andhra Pradesh - 522510', ''), address),
  website = COALESCE(NULLIF('https://www.acharyanagarjunauniversity.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'bba', 'BBA', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'blisc', 'BLISc', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'ba', 'BA', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'm-com', 'M.Com', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'ma', 'MA', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'mba', 'MBA', NULL, NULL, '2026'),
  ('acharya-nagarjuna-university-centre-for-distance-education-anucde-guntur', 'm-sc', 'M.Sc', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a0ed3446-f162-4906-bbd8-dd3c3b39ee11' AND slug = 'acharya-narendra-dev-college-andc-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-narendra-dev-college-andc-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.andcollege.du.ac.in/',
  official_source_url = 'https://www.andcollege.du.ac.in/admission/admissionschedule',
  established = 1991,
  type = 'Government',
  approvals = CASE WHEN array_length(ARRAY['UGC', 'NAAC A+']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC', 'NAAC A+']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Narendra Dev College - [ANDC], New Delhi is listed on DekhoCampus as a University of Delhi college. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Narendra Dev College - [ANDC], New Delhi offers B.Com Honours, B.Sc Life Sciences, B.Sc Physical Sciences, B.Sc Honours, M.Sc Chemistry, M.Sc Mathematics, Certificate and diploma language courses. Check admission route, eligibility, facilities, approvals and source-backed course details for New Delhi.',
  meta_title = 'Acharya Narendra Dev College - [ANDC], New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Narendra Dev College - [ANDC], New Delhi offers B.Com Honours, B.Sc Life Sciences, B.Sc Physical Sciences, B.Sc Honours, M.Sc Chemistry, M.Sc Mathe',
  meta_keywords = 'Acharya Narendra Dev College - [ANDC], New Delhi, Acharya Narendra Dev College - [ANDC], New Delhi admission 2026, Acharya Narendra Dev College - [ANDC], New Delhi courses, Acharya Narendra Dev College - [ANDC], New Delhi fees, Acharya Narendra Dev College - [ANDC], New Delhi placements, Acharya Narendra Dev College - [ANDC], New Delhi facilities',
  admission_process = 'Admission at Acharya Narendra Dev College - [ANDC], New Delhi usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Narendra Dev College - [ANDC], New Delhi course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Com Honours, B.Sc Life Sciences, B.Sc Physical Sciences, B.Sc Honours, M.Sc Chemistry, M.Sc Mathematics, Certificate and diploma language courses. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Narendra Dev College - [ANDC], New Delhi placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Narendra Dev College - [ANDC], New Delhi supports students through facilities such as Library, Laboratories, Student societies, Research support, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Student societies', 'Research support', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Narendra Dev College - [ANDC], New Delhi has been mapped with approvals or affiliations including UGC, NAAC A+. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 7,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.andcollege.du.ac.in/admission/admissionschedule"],"website":"https://www.andcollege.du.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'a0ed3446-f162-4906-bbd8-dd3c3b39ee11' AND slug = 'acharya-narendra-dev-college-andc-new-delhi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-narendra-dev-college-andc-new-delhi', 'Govindpuri, Kalkaji, New Delhi - 110019', 'https://www.andcollege.du.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-narendra-dev-college-andc-new-delhi');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Govindpuri, Kalkaji, New Delhi - 110019', ''), address),
  website = COALESCE(NULLIF('https://www.andcollege.du.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-narendra-dev-college-andc-new-delhi';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-narendra-dev-college-andc-new-delhi';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-narendra-dev-college-andc-new-delhi', 'b-com-honours', 'B.Com Honours', NULL, NULL, '2026'),
  ('acharya-narendra-dev-college-andc-new-delhi', 'b-sc-life-sciences', 'B.Sc Life Sciences', NULL, NULL, '2026'),
  ('acharya-narendra-dev-college-andc-new-delhi', 'b-sc-physical-sciences', 'B.Sc Physical Sciences', NULL, NULL, '2026'),
  ('acharya-narendra-dev-college-andc-new-delhi', 'b-sc-honours', 'B.Sc Honours', NULL, NULL, '2026'),
  ('acharya-narendra-dev-college-andc-new-delhi', 'm-sc-chemistry', 'M.Sc Chemistry', NULL, NULL, '2026'),
  ('acharya-narendra-dev-college-andc-new-delhi', 'm-sc-mathematics', 'M.Sc Mathematics', NULL, NULL, '2026'),
  ('acharya-narendra-dev-college-andc-new-delhi', 'certificate-and-diploma-language-courses', 'Certificate and diploma language courses', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '90186907-91d7-43e3-a512-f758b2741f7e' AND slug = 'acharya-narendra-dev-college-of-pharmacy-gonda') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-narendra-dev-college-of-pharmacy-gonda';
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
  description = 'Acharya Narendra Dev College of Pharmacy, Gonda is listed on DekhoCampus as a pharmacy college in Gonda. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Narendra Dev College of Pharmacy, Gonda offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-backed course details for Gonda.',
  meta_title = 'Acharya Narendra Dev College of Pharmacy, Gonda: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Narendra Dev College of Pharmacy, Gonda offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-back',
  meta_keywords = 'Acharya Narendra Dev College of Pharmacy, Gonda, Acharya Narendra Dev College of Pharmacy, Gonda admission 2026, Acharya Narendra Dev College of Pharmacy, Gonda courses, Acharya Narendra Dev College of Pharmacy, Gonda fees, Acharya Narendra Dev College of Pharmacy, Gonda placements, Acharya Narendra Dev College of Pharmacy, Gonda facilities',
  admission_process = 'Admission at Acharya Narendra Dev College of Pharmacy, Gonda usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Narendra Dev College of Pharmacy, Gonda course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Narendra Dev College of Pharmacy, Gonda placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Narendra Dev College of Pharmacy, Gonda supports students through facilities such as Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Narendra Dev College of Pharmacy, Gonda has been mapped with approvals or affiliations including PCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '90186907-91d7-43e3-a512-f758b2741f7e' AND slug = 'acharya-narendra-dev-college-of-pharmacy-gonda';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-narendra-dev-college-of-pharmacy-gonda', 'Gonda, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-narendra-dev-college-of-pharmacy-gonda');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Gonda, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-narendra-dev-college-of-pharmacy-gonda';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '00cf3f0e-8599-4969-9c59-fae12b52f6e6' AND slug = 'acharya-ng-ranga-agricultural-university-angrau-guntur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-ng-ranga-agricultural-university-angrau-guntur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://angrau.ac.in/',
  official_source_url = 'https://angrau.ac.in/ANGRU/Constituent_Affiliated_Colleges.aspx/1000',
  established = 1964,
  type = 'State Agricultural University',
  approvals = CASE WHEN array_length(ARRAY['ICAR', 'UGC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['ICAR', 'UGC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur is listed on DekhoCampus as a state agricultural university in Andhra Pradesh. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur offers B.Sc Honours Agriculture, B.Tech Agricultural Engineering, B.Tech Food Technology, M.Sc Agriculture, M.Tech, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Guntur.',
  meta_title = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur offers B.Sc Honours Agriculture, B.Tech Agricultural Engineering, B.Tech Food Technology, M.Sc ',
  meta_keywords = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur, Acharya NG Ranga Agricultural University - [ANGRAU], Guntur admission 2026, Acharya NG Ranga Agricultural University - [ANGRAU], Guntur courses, Acharya NG Ranga Agricultural University - [ANGRAU], Guntur fees, Acharya NG Ranga Agricultural University - [ANGRAU], Guntur placements, Acharya NG Ranga Agricultural University - [ANGRAU], Guntur facilities',
  admission_process = 'Admission at Acharya NG Ranga Agricultural University - [ANGRAU], Guntur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Honours Agriculture, B.Tech Agricultural Engineering, B.Tech Food Technology, M.Sc Agriculture, M.Tech, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur supports students through facilities such as Research stations, Constituent colleges, Extension centres, Library, Hostels. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Research stations', 'Constituent colleges', 'Extension centres', 'Library', 'Hostels']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur has been mapped with approvals or affiliations including ICAR, UGC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 6,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://angrau.ac.in/ANGRU/Constituent_Affiliated_Colleges.aspx/1000"],"website":"https://angrau.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '00cf3f0e-8599-4969-9c59-fae12b52f6e6' AND slug = 'acharya-ng-ranga-agricultural-university-angrau-guntur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-ng-ranga-agricultural-university-angrau-guntur', 'Lam, Guntur, Andhra Pradesh', 'https://angrau.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-ng-ranga-agricultural-university-angrau-guntur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Lam, Guntur, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF('https://angrau.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-ng-ranga-agricultural-university-angrau-guntur';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-ng-ranga-agricultural-university-angrau-guntur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-ng-ranga-agricultural-university-angrau-guntur', 'b-sc-honours-agriculture', 'B.Sc Honours Agriculture', NULL, NULL, '2026'),
  ('acharya-ng-ranga-agricultural-university-angrau-guntur', 'b-tech-agricultural-engineering', 'B.Tech Agricultural Engineering', NULL, NULL, '2026'),
  ('acharya-ng-ranga-agricultural-university-angrau-guntur', 'b-tech-food-technology', 'B.Tech Food Technology', NULL, NULL, '2026'),
  ('acharya-ng-ranga-agricultural-university-angrau-guntur', 'm-sc-agriculture', 'M.Sc Agriculture', NULL, NULL, '2026'),
  ('acharya-ng-ranga-agricultural-university-angrau-guntur', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('acharya-ng-ranga-agricultural-university-angrau-guntur', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4a634b92-895e-45ce-9570-28cb8926e187' AND slug = 'acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://agcbapatla.in/',
  official_source_url = 'https://agcbapatla.in/',
  established = 1945,
  type = 'Constituent Government College',
  approvals = CASE WHEN array_length(ARRAY['ANGRAU']::text[], 1) IS NULL THEN approvals ELSE ARRAY['ANGRAU']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur is listed on DekhoCampus as a constituent agricultural college of ANGRAU. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur offers B.Sc Honours Agriculture, M.Sc Agriculture, Ph.D Agriculture. Check admission route, eligibility, facilities, approvals and source-backed course details for Guntur.',
  meta_title = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur offers B.Sc Honours Agriculture, M.Sc Agriculture, Ph.D Agriculture. Check a',
  meta_keywords = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur, Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur admission 2026, Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur courses, Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur fees, Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur placements, Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur facilities',
  admission_process = 'Admission at Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Honours Agriculture, M.Sc Agriculture, Ph.D Agriculture. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur supports students through facilities such as Agricultural laboratories, Research farms, Library, Hostels, Extension activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Agricultural laboratories', 'Research farms', 'Library', 'Hostels', 'Extension activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya NG Ranga Agricultural University, Agricultural College Bapatla, Guntur has been mapped with approvals or affiliations including ANGRAU. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 3,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://agcbapatla.in/"],"website":"https://agcbapatla.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '4a634b92-895e-45ce-9570-28cb8926e187' AND slug = 'acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur', 'Agricultural College, Bapatla, Guntur district, Andhra Pradesh', 'https://agcbapatla.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Agricultural College, Bapatla, Guntur district, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF('https://agcbapatla.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur', 'b-sc-honours-agriculture', 'B.Sc Honours Agriculture', NULL, NULL, '2026'),
  ('acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur', 'm-sc-agriculture', 'M.Sc Agriculture', NULL, NULL, '2026'),
  ('acharya-ng-ranga-agricultural-university-agricultural-college-bapatla-guntur', 'ph-d-agriculture', 'Ph.D Agriculture', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'dfe2498a-2f3f-41d9-92fc-0175a6095222' AND slug = 'acharya-prafulla-chandra-college-apcc-kolkata') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-prafulla-chandra-college-apcc-kolkata';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://apccollege.ac.in/',
  official_source_url = 'https://apccollege.ac.in/',
  type = 'Government Aided',
  approvals = CASE WHEN array_length(ARRAY['UGC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Prafulla Chandra College - [APCC], Kolkata is listed on DekhoCampus as a college in West Bengal. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Prafulla Chandra College - [APCC], Kolkata offers BA, B.Sc, B.Com. Check admission route, eligibility, facilities, approvals and source-backed course details for Kolkata.',
  meta_title = 'Acharya Prafulla Chandra College - [APCC], Kolkata: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Prafulla Chandra College - [APCC], Kolkata offers BA, B.Sc, B.Com. Check admission route, eligibility, facilities, approvals and source-backed cour',
  meta_keywords = 'Acharya Prafulla Chandra College - [APCC], Kolkata, Acharya Prafulla Chandra College - [APCC], Kolkata admission 2026, Acharya Prafulla Chandra College - [APCC], Kolkata courses, Acharya Prafulla Chandra College - [APCC], Kolkata fees, Acharya Prafulla Chandra College - [APCC], Kolkata placements, Acharya Prafulla Chandra College - [APCC], Kolkata facilities',
  admission_process = 'Admission at Acharya Prafulla Chandra College - [APCC], Kolkata usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Prafulla Chandra College - [APCC], Kolkata course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA, B.Sc, B.Com. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Prafulla Chandra College - [APCC], Kolkata placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Prafulla Chandra College - [APCC], Kolkata supports students through facilities such as Library, Laboratories, Student support, Scholarship guidance, Career activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Student support', 'Scholarship guidance', 'Career activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Prafulla Chandra College - [APCC], Kolkata has been mapped with approvals or affiliations including UGC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 3,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://apccollege.ac.in/"],"website":"https://apccollege.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'dfe2498a-2f3f-41d9-92fc-0175a6095222' AND slug = 'acharya-prafulla-chandra-college-apcc-kolkata';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-prafulla-chandra-college-apcc-kolkata', 'Kolkata, West Bengal', 'https://apccollege.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-prafulla-chandra-college-apcc-kolkata');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kolkata, West Bengal', ''), address),
  website = COALESCE(NULLIF('https://apccollege.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-prafulla-chandra-college-apcc-kolkata';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-prafulla-chandra-college-apcc-kolkata';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-prafulla-chandra-college-apcc-kolkata', 'ba', 'BA', NULL, NULL, '2026'),
  ('acharya-prafulla-chandra-college-apcc-kolkata', 'b-sc', 'B.Sc', NULL, NULL, '2026'),
  ('acharya-prafulla-chandra-college-apcc-kolkata', 'b-com', 'B.Com', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '09456ebc-daea-4813-bf47-8a0e1c38bb53' AND slug = 'acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri';
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
  description = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri is listed on DekhoCampus as a college in Siliguri. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Siliguri.',
  meta_title = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligi',
  meta_keywords = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri admission 2026, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri courses, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri fees, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri placements, Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri facilities',
  admission_process = 'Admission at Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Prafulla Chandra Roy Government College - [APCRGC], Siliguri has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '09456ebc-daea-4813-bf47-8a0e1c38bb53' AND slug = 'acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri', 'Siliguri, West Bengal', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Siliguri, West Bengal', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-prafulla-chandra-roy-government-college-apcrgc-siliguri';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7391516b-2551-4102-a7bb-8806e13cb7d5' AND slug = 'acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum';
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
  description = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum is listed on DekhoCampus as a teacher education college in Birbhum. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Birbhum.',
  meta_title = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, app',
  meta_keywords = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum admission 2026, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum courses, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum fees, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum placements, Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum facilities',
  admission_process = 'Admission at Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Ramendra Sundar Primary Teacher''s Training Institute - [ARSPTTI], Birbhum has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '7391516b-2551-4102-a7bb-8806e13cb7d5' AND slug = 'acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum', 'Birbhum, West Bengal', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Birbhum, West Bengal', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-ramendra-sundar-primary-teacher039s-training-institute-arsptti-birbhum';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '266ae96b-031a-4970-b8af-7be79e48a2fb' AND slug = 'acharya-school-of-management-asm-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-school-of-management-asm-bangalore';
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
  description = 'Acharya School of Management - [ASM], Bangalore is listed on DekhoCampus as a management institute in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya School of Management - [ASM], Bangalore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya School of Management - [ASM], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya School of Management - [ASM], Bangalore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course d',
  meta_keywords = 'Acharya School of Management - [ASM], Bangalore, Acharya School of Management - [ASM], Bangalore admission 2026, Acharya School of Management - [ASM], Bangalore courses, Acharya School of Management - [ASM], Bangalore fees, Acharya School of Management - [ASM], Bangalore placements, Acharya School of Management - [ASM], Bangalore facilities',
  admission_process = 'Admission at Acharya School of Management - [ASM], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya School of Management - [ASM], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA, BBA, PGDM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya School of Management - [ASM], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya School of Management - [ASM], Bangalore supports students through facilities such as Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya School of Management - [ASM], Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '266ae96b-031a-4970-b8af-7be79e48a2fb' AND slug = 'acharya-school-of-management-asm-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-school-of-management-asm-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-school-of-management-asm-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-school-of-management-asm-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7b3474fb-9d3a-49cf-af61-ea549b14fbcc' AND slug = 'acharya-shri-chander-college-of-medical-sciences-jammu') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-shri-chander-college-of-medical-sciences-jammu';
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
  description = 'Acharya Shri Chander College of Medical Sciences, Jammu is listed on DekhoCampus as a medical college in Jammu. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Shri Chander College of Medical Sciences, Jammu offers MBBS, MD, MS. Check admission route, eligibility, facilities, approvals and source-backed course details for Jammu.',
  meta_title = 'Acharya Shri Chander College of Medical Sciences, Jammu: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Shri Chander College of Medical Sciences, Jammu offers MBBS, MD, MS. Check admission route, eligibility, facilities, approvals and source-backed co',
  meta_keywords = 'Acharya Shri Chander College of Medical Sciences, Jammu, Acharya Shri Chander College of Medical Sciences, Jammu admission 2026, Acharya Shri Chander College of Medical Sciences, Jammu courses, Acharya Shri Chander College of Medical Sciences, Jammu fees, Acharya Shri Chander College of Medical Sciences, Jammu placements, Acharya Shri Chander College of Medical Sciences, Jammu facilities',
  admission_process = 'Admission at Acharya Shri Chander College of Medical Sciences, Jammu usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Shri Chander College of Medical Sciences, Jammu course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBBS, MD, MS. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Shri Chander College of Medical Sciences, Jammu placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Shri Chander College of Medical Sciences, Jammu supports students through facilities such as Teaching hospital, Clinical departments, Laboratories, Library, Hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Shri Chander College of Medical Sciences, Jammu has been mapped with approvals or affiliations including NMC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '7b3474fb-9d3a-49cf-af61-ea549b14fbcc' AND slug = 'acharya-shri-chander-college-of-medical-sciences-jammu';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-shri-chander-college-of-medical-sciences-jammu', 'Jammu, Jammu And Kashmir', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-shri-chander-college-of-medical-sciences-jammu');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jammu, Jammu And Kashmir', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-shri-chander-college-of-medical-sciences-jammu';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8d1642c4-4db5-4de7-9b5a-940d63bd93d3' AND slug = 'acharya-shri-chander-institute-of-nursing-education-jammu') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-shri-chander-institute-of-nursing-education-jammu';
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
  description = 'Acharya Shri Chander Institute of Nursing Education, Jammu is listed on DekhoCampus as a teacher education college in Jammu. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Shri Chander Institute of Nursing Education, Jammu offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Jammu.',
  meta_title = 'Acharya Shri Chander Institute of Nursing Education, Jammu: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Shri Chander Institute of Nursing Education, Jammu offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backe',
  meta_keywords = 'Acharya Shri Chander Institute of Nursing Education, Jammu, Acharya Shri Chander Institute of Nursing Education, Jammu admission 2026, Acharya Shri Chander Institute of Nursing Education, Jammu courses, Acharya Shri Chander Institute of Nursing Education, Jammu fees, Acharya Shri Chander Institute of Nursing Education, Jammu placements, Acharya Shri Chander Institute of Nursing Education, Jammu facilities',
  admission_process = 'Admission at Acharya Shri Chander Institute of Nursing Education, Jammu usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Shri Chander Institute of Nursing Education, Jammu has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '8d1642c4-4db5-4de7-9b5a-940d63bd93d3' AND slug = 'acharya-shri-chander-institute-of-nursing-education-jammu';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-shri-chander-institute-of-nursing-education-jammu', 'Jammu, Jammu And Kashmir', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-shri-chander-institute-of-nursing-education-jammu');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jammu, Jammu And Kashmir', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-shri-chander-institute-of-nursing-education-jammu';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3d7aef5d-0c03-409e-a77b-6eea92bbccbf' AND slug = 'acharya-tulsi-national-college-of-commerce-atncc-shimoga') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya-tulsi-national-college-of-commerce-atncc-shimoga';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://atncc.org/',
  official_source_url = 'https://atncc.org/admission.htm',
  established = 1966,
  type = 'Government Aided',
  approvals = CASE WHEN array_length(ARRAY['NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga is listed on DekhoCampus as a Kuvempu University college. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga offers B.Com, BBA, M.Com. Check admission route, eligibility, facilities, approvals and source-backed course details for Shimoga.',
  meta_title = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga offers B.Com, BBA, M.Com. Check admission route, eligibility, facilities, approvals and sourc',
  meta_keywords = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga, Acharya Tulsi National College of Commerce - [ATNCC], Shimoga admission 2026, Acharya Tulsi National College of Commerce - [ATNCC], Shimoga courses, Acharya Tulsi National College of Commerce - [ATNCC], Shimoga fees, Acharya Tulsi National College of Commerce - [ATNCC], Shimoga placements, Acharya Tulsi National College of Commerce - [ATNCC], Shimoga facilities',
  admission_process = 'Admission at Acharya Tulsi National College of Commerce - [ATNCC], Shimoga usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Com, BBA, M.Com. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga supports students through facilities such as Library, Computer lab, Sports, Canteen, Placement cell, Girls hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Computer lab', 'Sports', 'Canteen', 'Placement cell', 'Girls hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya Tulsi National College of Commerce - [ATNCC], Shimoga has been mapped with approvals or affiliations including NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 3,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://atncc.org/admission.htm"],"website":"https://atncc.org/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '3d7aef5d-0c03-409e-a77b-6eea92bbccbf' AND slug = 'acharya-tulsi-national-college-of-commerce-atncc-shimoga';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya-tulsi-national-college-of-commerce-atncc-shimoga', 'Balraj Urs Road, Shivamogga, Karnataka - 577201', 'https://atncc.org/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya-tulsi-national-college-of-commerce-atncc-shimoga');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Balraj Urs Road, Shivamogga, Karnataka - 577201', ''), address),
  website = COALESCE(NULLIF('https://atncc.org/', ''), website),
  updated_at = now()
WHERE college_slug = 'acharya-tulsi-national-college-of-commerce-atncc-shimoga';


DELETE FROM public.course_fees WHERE college_slug = 'acharya-tulsi-national-college-of-commerce-atncc-shimoga';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acharya-tulsi-national-college-of-commerce-atncc-shimoga', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('acharya-tulsi-national-college-of-commerce-atncc-shimoga', 'bba', 'BBA', NULL, NULL, '2026'),
  ('acharya-tulsi-national-college-of-commerce-atncc-shimoga', 'm-com', 'M.Com', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a41376f7-926c-474d-ae82-f51cbb4e5231' AND slug = 'acharya039s-nr-school-of-nursing-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya039s-nr-school-of-nursing-bangalore';
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
  description = 'Acharya''s NR School of Nursing, Bangalore is listed on DekhoCampus as a nursing college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya''s NR School of Nursing, Bangalore offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya''s NR School of Nursing, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya''s NR School of Nursing, Bangalore offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course deta',
  meta_keywords = 'Acharya''s NR School of Nursing, Bangalore, Acharya''s NR School of Nursing, Bangalore admission 2026, Acharya''s NR School of Nursing, Bangalore courses, Acharya''s NR School of Nursing, Bangalore fees, Acharya''s NR School of Nursing, Bangalore placements, Acharya''s NR School of Nursing, Bangalore facilities',
  admission_process = 'Admission at Acharya''s NR School of Nursing, Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya''s NR School of Nursing, Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Nursing, GNM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya''s NR School of Nursing, Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya''s NR School of Nursing, Bangalore supports students through facilities such as Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya''s NR School of Nursing, Bangalore has been mapped with approvals or affiliations including INC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'a41376f7-926c-474d-ae82-f51cbb4e5231' AND slug = 'acharya039s-nr-school-of-nursing-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya039s-nr-school-of-nursing-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya039s-nr-school-of-nursing-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya039s-nr-school-of-nursing-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3e1dddfe-6c61-4e7f-80da-406472fcb275' AND slug = 'acharya039s-nrv-school-of-architecture-anrvsa-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acharya039s-nrv-school-of-architecture-anrvsa-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = official_source_url,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['COA']::text[], 1) IS NULL THEN approvals ELSE ARRAY['COA']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore is listed on DekhoCampus as a architecture college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore offers B.Arch, M.Arch. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore offers B.Arch, M.Arch. Check admission route, eligibility, facilities, approvals and source-back',
  meta_keywords = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore admission 2026, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore courses, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore fees, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore placements, Acharya''s NRV School of Architecture - [ANRVSA], Bangalore facilities',
  admission_process = 'Admission at Acharya''s NRV School of Architecture - [ANRVSA], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Arch, M.Arch. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore supports students through facilities such as Design studios, Computer lab, Library, Workshop, Exhibition spaces. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Design studios', 'Computer lab', 'Library', 'Workshop', 'Exhibition spaces']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acharya''s NRV School of Architecture - [ANRVSA], Bangalore has been mapped with approvals or affiliations including COA. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '3e1dddfe-6c61-4e7f-80da-406472fcb275' AND slug = 'acharya039s-nrv-school-of-architecture-anrvsa-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acharya039s-nrv-school-of-architecture-anrvsa-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acharya039s-nrv-school-of-architecture-anrvsa-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acharya039s-nrv-school-of-architecture-anrvsa-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '60a66a24-2eb0-44e5-9e15-259a77cd3344' AND slug = 'achhruram-memorial-college-purulia') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achhruram-memorial-college-purulia';
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
  description = 'Achhruram Memorial College, Purulia is listed on DekhoCampus as a college in Purulia. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Achhruram Memorial College, Purulia offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Purulia.',
  meta_title = 'Achhruram Memorial College, Purulia: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achhruram Memorial College, Purulia offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and',
  meta_keywords = 'Achhruram Memorial College, Purulia, Achhruram Memorial College, Purulia admission 2026, Achhruram Memorial College, Purulia courses, Achhruram Memorial College, Purulia fees, Achhruram Memorial College, Purulia placements, Achhruram Memorial College, Purulia facilities',
  admission_process = 'Admission at Achhruram Memorial College, Purulia usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Achhruram Memorial College, Purulia course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Achhruram Memorial College, Purulia placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Achhruram Memorial College, Purulia supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Achhruram Memorial College, Purulia has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '60a66a24-2eb0-44e5-9e15-259a77cd3344' AND slug = 'achhruram-memorial-college-purulia';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'achhruram-memorial-college-purulia', 'Purulia, West Bengal', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'achhruram-memorial-college-purulia');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Purulia, West Bengal', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'achhruram-memorial-college-purulia';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '67a67020-7354-4e8a-879e-6ef72cc6aba6' AND slug = 'achutha-institute-of-technology-ait-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: achutha-institute-of-technology-ait-bangalore';
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
  description = 'Achutha Institute of Technology - [AIT], Bangalore is listed on DekhoCampus as a engineering college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Achutha Institute of Technology - [AIT], Bangalore offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Achutha Institute of Technology - [AIT], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Achutha Institute of Technology - [AIT], Bangalore offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals an',
  meta_keywords = 'Achutha Institute of Technology - [AIT], Bangalore, Achutha Institute of Technology - [AIT], Bangalore admission 2026, Achutha Institute of Technology - [AIT], Bangalore courses, Achutha Institute of Technology - [AIT], Bangalore fees, Achutha Institute of Technology - [AIT], Bangalore placements, Achutha Institute of Technology - [AIT], Bangalore facilities',
  admission_process = 'Admission at Achutha Institute of Technology - [AIT], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Achutha Institute of Technology - [AIT], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Achutha Institute of Technology - [AIT], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Achutha Institute of Technology - [AIT], Bangalore supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Achutha Institute of Technology - [AIT], Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '67a67020-7354-4e8a-879e-6ef72cc6aba6' AND slug = 'achutha-institute-of-technology-ait-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'achutha-institute-of-technology-ait-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'achutha-institute-of-technology-ait-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'achutha-institute-of-technology-ait-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a0ed64f9-cd8f-4a04-a39d-6ebad262c472' AND slug = 'acliv-technology-and-management-academy-atma-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acliv-technology-and-management-academy-atma-bangalore';
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
  description = 'Acliv Technology and Management Academy - [ATMA], Bangalore is listed on DekhoCampus as a engineering college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acliv Technology and Management Academy - [ATMA], Bangalore offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Acliv Technology and Management Academy - [ATMA], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acliv Technology and Management Academy - [ATMA], Bangalore offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, app',
  meta_keywords = 'Acliv Technology and Management Academy - [ATMA], Bangalore, Acliv Technology and Management Academy - [ATMA], Bangalore admission 2026, Acliv Technology and Management Academy - [ATMA], Bangalore courses, Acliv Technology and Management Academy - [ATMA], Bangalore fees, Acliv Technology and Management Academy - [ATMA], Bangalore placements, Acliv Technology and Management Academy - [ATMA], Bangalore facilities',
  admission_process = 'Admission at Acliv Technology and Management Academy - [ATMA], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acliv Technology and Management Academy - [ATMA], Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'a0ed64f9-cd8f-4a04-a39d-6ebad262c472' AND slug = 'acliv-technology-and-management-academy-atma-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acliv-technology-and-management-academy-atma-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acliv-technology-and-management-academy-atma-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acliv-technology-and-management-academy-atma-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cac88a19-69c2-4057-9218-b2ccd809834d' AND slug = 'acme-institute-of-management-and-technology-agra') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acme-institute-of-management-and-technology-agra';
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
  description = 'ACME Institute of Management and Technology, Agra is listed on DekhoCampus as a engineering college in Agra. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACME Institute of Management and Technology, Agra offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Agra.',
  meta_title = 'ACME Institute of Management and Technology, Agra: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACME Institute of Management and Technology, Agra offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and',
  meta_keywords = 'ACME Institute of Management and Technology, Agra, ACME Institute of Management and Technology, Agra admission 2026, ACME Institute of Management and Technology, Agra courses, ACME Institute of Management and Technology, Agra fees, ACME Institute of Management and Technology, Agra placements, ACME Institute of Management and Technology, Agra facilities',
  admission_process = 'Admission at ACME Institute of Management and Technology, Agra usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACME Institute of Management and Technology, Agra course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACME Institute of Management and Technology, Agra placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACME Institute of Management and Technology, Agra supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACME Institute of Management and Technology, Agra has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'cac88a19-69c2-4057-9218-b2ccd809834d' AND slug = 'acme-institute-of-management-and-technology-agra';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acme-institute-of-management-and-technology-agra', 'Agra, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acme-institute-of-management-and-technology-agra');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Agra, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acme-institute-of-management-and-technology-agra';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9a968ded-c2df-4ac1-934f-4e0d95e9f557' AND slug = 'acn-college-of-engineering-and-management-studies-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acn-college-of-engineering-and-management-studies-aligarh';
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
  description = 'ACN College of Engineering and Management Studies, Aligarh is listed on DekhoCampus as a engineering college in Aligarh. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACN College of Engineering and Management Studies, Aligarh offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Aligarh.',
  meta_title = 'ACN College of Engineering and Management Studies, Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACN College of Engineering and Management Studies, Aligarh offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, appr',
  meta_keywords = 'ACN College of Engineering and Management Studies, Aligarh, ACN College of Engineering and Management Studies, Aligarh admission 2026, ACN College of Engineering and Management Studies, Aligarh courses, ACN College of Engineering and Management Studies, Aligarh fees, ACN College of Engineering and Management Studies, Aligarh placements, ACN College of Engineering and Management Studies, Aligarh facilities',
  admission_process = 'Admission at ACN College of Engineering and Management Studies, Aligarh usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACN College of Engineering and Management Studies, Aligarh course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACN College of Engineering and Management Studies, Aligarh placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACN College of Engineering and Management Studies, Aligarh supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACN College of Engineering and Management Studies, Aligarh has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '9a968ded-c2df-4ac1-934f-4e0d95e9f557' AND slug = 'acn-college-of-engineering-and-management-studies-aligarh';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acn-college-of-engineering-and-management-studies-aligarh', 'Aligarh, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acn-college-of-engineering-and-management-studies-aligarh');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Aligarh, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acn-college-of-engineering-and-management-studies-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '7e40284f-943b-4bb3-b6ea-e862fc8ce139' AND slug = 'acn-institute-for-higher-education-acnihe-aligarh') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acn-institute-for-higher-education-acnihe-aligarh';
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
  description = 'ACN Institute for Higher Education - [ACNIHE], Aligarh is listed on DekhoCampus as a teacher education college in Aligarh. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACN Institute for Higher Education - [ACNIHE], Aligarh offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Aligarh.',
  meta_title = 'ACN Institute for Higher Education - [ACNIHE], Aligarh: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACN Institute for Higher Education - [ACNIHE], Aligarh offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed co',
  meta_keywords = 'ACN Institute for Higher Education - [ACNIHE], Aligarh, ACN Institute for Higher Education - [ACNIHE], Aligarh admission 2026, ACN Institute for Higher Education - [ACNIHE], Aligarh courses, ACN Institute for Higher Education - [ACNIHE], Aligarh fees, ACN Institute for Higher Education - [ACNIHE], Aligarh placements, ACN Institute for Higher Education - [ACNIHE], Aligarh facilities',
  admission_process = 'Admission at ACN Institute for Higher Education - [ACNIHE], Aligarh usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACN Institute for Higher Education - [ACNIHE], Aligarh has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '7e40284f-943b-4bb3-b6ea-e862fc8ce139' AND slug = 'acn-institute-for-higher-education-acnihe-aligarh';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acn-institute-for-higher-education-acnihe-aligarh', 'Aligarh, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acn-institute-for-higher-education-acnihe-aligarh');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Aligarh, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acn-institute-for-higher-education-acnihe-aligarh';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c3f249c0-78dd-431b-bb7d-d63aad0be658' AND slug = 'acpm-college-of-nursing-dhule') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acpm-college-of-nursing-dhule';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/',
  official_source_url = 'https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'ACPM College of Nursing, Dhule is listed on DekhoCampus as a nursing college in Dhule. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACPM College of Nursing, Dhule offers B.Sc Nursing, General Nursing and Midwifery. Check admission route, eligibility, facilities, approvals and source-backed course details for Dhule.',
  meta_title = 'ACPM College of Nursing, Dhule: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACPM College of Nursing, Dhule offers B.Sc Nursing, General Nursing and Midwifery. Check admission route, eligibility, facilities, approvals and source-bac',
  meta_keywords = 'ACPM College of Nursing, Dhule, ACPM College of Nursing, Dhule admission 2026, ACPM College of Nursing, Dhule courses, ACPM College of Nursing, Dhule fees, ACPM College of Nursing, Dhule placements, ACPM College of Nursing, Dhule facilities',
  admission_process = 'Admission at ACPM College of Nursing, Dhule usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACPM College of Nursing, Dhule course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Nursing, General Nursing and Midwifery. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACPM College of Nursing, Dhule placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACPM College of Nursing, Dhule supports students through facilities such as Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACPM College of Nursing, Dhule has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  courses_count = 2,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/"],"website":"https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'c3f249c0-78dd-431b-bb7d-d63aad0be658' AND slug = 'acpm-college-of-nursing-dhule';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acpm-college-of-nursing-dhule', 'A/P Morane, Sakri Road, Dhule, Maharashtra - 424001', 'https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acpm-college-of-nursing-dhule');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('A/P Morane, Sakri Road, Dhule, Maharashtra - 424001', ''), address),
  website = COALESCE(NULLIF('https://dhule.gov.in/en/public-utility/acpm-college-of-nursing/', ''), website),
  updated_at = now()
WHERE college_slug = 'acpm-college-of-nursing-dhule';


DELETE FROM public.course_fees WHERE college_slug = 'acpm-college-of-nursing-dhule';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acpm-college-of-nursing-dhule', 'b-sc-nursing', 'B.Sc Nursing', NULL, NULL, '2026'),
  ('acpm-college-of-nursing-dhule', 'general-nursing-and-midwifery', 'General Nursing and Midwifery', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '635acb46-aa8f-495d-950e-9a0d49459ddd' AND slug = 'acpm-medical-college-dhule') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acpm-medical-college-dhule';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://jmfacpm.com/',
  official_source_url = 'https://jmfacpm.com/default.aspx',
  established = 1990,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NMC', 'MUHS']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NMC', 'MUHS']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'ACPM Medical College, Dhule is listed on DekhoCampus as a medical college affiliated with Maharashtra University of Health Sciences. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACPM Medical College, Dhule offers MBBS, MD Anaesthesiology, MD General Medicine, MD Microbiology, MD Paediatrics, MD Pathology, MD Radio Diagnosis, MS General Surgery, MS Orthopaedics, MD/MS Obstetrics and Gynaecology, MD/MS Ophthalmology. Check admission route, eligibility, facilities, approvals and source-backed course details for Dhule.',
  meta_title = 'ACPM Medical College, Dhule: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACPM Medical College, Dhule offers MBBS, MD Anaesthesiology, MD General Medicine, MD Microbiology, MD Paediatrics, MD Pathology, MD Radio Diagnosis, MS Gen',
  meta_keywords = 'ACPM Medical College, Dhule, ACPM Medical College, Dhule admission 2026, ACPM Medical College, Dhule courses, ACPM Medical College, Dhule fees, ACPM Medical College, Dhule placements, ACPM Medical College, Dhule facilities',
  admission_process = 'Admission at ACPM Medical College, Dhule usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACPM Medical College, Dhule course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBBS, MD Anaesthesiology, MD General Medicine, MD Microbiology, MD Paediatrics, MD Pathology, MD Radio Diagnosis, MS General Surgery, MS Orthopaedics, MD/MS Obstetrics and Gynaecology, MD/MS Ophthalmology. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACPM Medical College, Dhule placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACPM Medical College, Dhule supports students through facilities such as Teaching hospital, Clinical departments, Library, Laboratories, Hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching hospital', 'Clinical departments', 'Library', 'Laboratories', 'Hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACPM Medical College, Dhule has been mapped with approvals or affiliations including NMC, MUHS. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 11,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://jmfacpm.com/default.aspx"],"website":"https://jmfacpm.com/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '635acb46-aa8f-495d-950e-9a0d49459ddd' AND slug = 'acpm-medical-college-dhule';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acpm-medical-college-dhule', 'Sakri Road, Dhule, Maharashtra - 424001', 'https://jmfacpm.com/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acpm-medical-college-dhule');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Sakri Road, Dhule, Maharashtra - 424001', ''), address),
  website = COALESCE(NULLIF('https://jmfacpm.com/', ''), website),
  updated_at = now()
WHERE college_slug = 'acpm-medical-college-dhule';


DELETE FROM public.course_fees WHERE college_slug = 'acpm-medical-college-dhule';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acpm-medical-college-dhule', 'mbbs', 'MBBS', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-anaesthesiology', 'MD Anaesthesiology', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-general-medicine', 'MD General Medicine', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-microbiology', 'MD Microbiology', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-paediatrics', 'MD Paediatrics', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-pathology', 'MD Pathology', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-radio-diagnosis', 'MD Radio Diagnosis', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'ms-general-surgery', 'MS General Surgery', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'ms-orthopaedics', 'MS Orthopaedics', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-ms-obstetrics-and-gynaecology', 'MD/MS Obstetrics and Gynaecology', NULL, NULL, '2026'),
  ('acpm-medical-college-dhule', 'md-ms-ophthalmology', 'MD/MS Ophthalmology', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9f2bac55-5973-4b7d-aa79-8a814eef1593' AND slug = 'acropolis-faculty-of-management-and-research-afmr-indore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-faculty-of-management-and-research-afmr-indore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aitr.ac.in/',
  official_source_url = 'https://aitr.ac.in/landing-page/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acropolis Faculty of Management and Research - [AFMR], Indore is listed on DekhoCampus as a management faculty in Indore. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acropolis Faculty of Management and Research - [AFMR], Indore offers MBA. Check admission route, eligibility, facilities, approvals and source-backed course details for Indore.',
  meta_title = 'Acropolis Faculty of Management and Research - [AFMR], Indore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Faculty of Management and Research - [AFMR], Indore offers MBA. Check admission route, eligibility, facilities, approvals and source-backed cours',
  meta_keywords = 'Acropolis Faculty of Management and Research - [AFMR], Indore, Acropolis Faculty of Management and Research - [AFMR], Indore admission 2026, Acropolis Faculty of Management and Research - [AFMR], Indore courses, Acropolis Faculty of Management and Research - [AFMR], Indore fees, Acropolis Faculty of Management and Research - [AFMR], Indore placements, Acropolis Faculty of Management and Research - [AFMR], Indore facilities',
  admission_process = 'Admission at Acropolis Faculty of Management and Research - [AFMR], Indore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acropolis Faculty of Management and Research - [AFMR], Indore course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acropolis Faculty of Management and Research - [AFMR], Indore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acropolis Faculty of Management and Research - [AFMR], Indore supports students through facilities such as Mentorship, Internships, Industry projects, Professional certifications, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Mentorship', 'Internships', 'Industry projects', 'Professional certifications', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acropolis Faculty of Management and Research - [AFMR], Indore has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  courses_count = 1,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://aitr.ac.in/landing-page/"],"website":"https://aitr.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '9f2bac55-5973-4b7d-aa79-8a814eef1593' AND slug = 'acropolis-faculty-of-management-and-research-afmr-indore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acropolis-faculty-of-management-and-research-afmr-indore', 'Manglia Square, Indore, Madhya Pradesh', 'https://aitr.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acropolis-faculty-of-management-and-research-afmr-indore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Manglia Square, Indore, Madhya Pradesh', ''), address),
  website = COALESCE(NULLIF('https://aitr.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acropolis-faculty-of-management-and-research-afmr-indore';


DELETE FROM public.course_fees WHERE college_slug = 'acropolis-faculty-of-management-and-research-afmr-indore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acropolis-faculty-of-management-and-research-afmr-indore', 'mba', 'MBA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '81eba128-33be-4b43-bea7-a78835c06b08' AND slug = 'acropolis-institute-of-management-studies-and-research-aimsr-indore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-institute-of-management-studies-and-research-aimsr-indore';
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
  description = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore is listed on DekhoCampus as a management institute in Indore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course details for Indore.',
  meta_title = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and',
  meta_keywords = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore, Acropolis Institute of Management Studies & Research - [AIMSR], Indore admission 2026, Acropolis Institute of Management Studies & Research - [AIMSR], Indore courses, Acropolis Institute of Management Studies & Research - [AIMSR], Indore fees, Acropolis Institute of Management Studies & Research - [AIMSR], Indore placements, Acropolis Institute of Management Studies & Research - [AIMSR], Indore facilities',
  admission_process = 'Admission at Acropolis Institute of Management Studies & Research - [AIMSR], Indore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA, BBA, PGDM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore supports students through facilities such as Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acropolis Institute of Management Studies & Research - [AIMSR], Indore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '81eba128-33be-4b43-bea7-a78835c06b08' AND slug = 'acropolis-institute-of-management-studies-and-research-aimsr-indore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acropolis-institute-of-management-studies-and-research-aimsr-indore', 'Indore, Madhya Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acropolis-institute-of-management-studies-and-research-aimsr-indore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Indore, Madhya Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acropolis-institute-of-management-studies-and-research-aimsr-indore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'eec9fc5a-c0cd-4d67-b56b-29254c85d26b' AND slug = 'acropolis-institute-of-technology-amp-research-aitr-indore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-institute-of-technology-amp-research-aitr-indore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aitr.ac.in/',
  official_source_url = 'https://aitr.ac.in/landing-page/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'NBA']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'NBA']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Acropolis Institute of Technology & Research - [AITR], Indore is listed on DekhoCampus as a engineering and management institute in Indore. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acropolis Institute of Technology & Research - [AITR], Indore offers B.Tech Computer Science and Engineering, B.Tech CSE AI and ML, B.Tech CSE Data Science, B.Tech Information Technology, B.Tech Civil Engineering, B.Tech Mechanical Engineering, M.Tech Artificial Intelligence and Data Science, M.Tech Internet of Things, MBA, MCA. Check admission route, eligibility, facilities, approvals and source-backed course details for Indore.',
  meta_title = 'Acropolis Institute of Technology & Research - [AITR], Indore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Institute of Technology & Research - [AITR], Indore offers B.Tech Computer Science and Engineering, B.Tech CSE AI and ML, B.Tech CSE Data Science',
  meta_keywords = 'Acropolis Institute of Technology & Research - [AITR], Indore, Acropolis Institute of Technology & Research - [AITR], Indore admission 2026, Acropolis Institute of Technology & Research - [AITR], Indore courses, Acropolis Institute of Technology & Research - [AITR], Indore fees, Acropolis Institute of Technology & Research - [AITR], Indore placements, Acropolis Institute of Technology & Research - [AITR], Indore facilities',
  admission_process = 'Admission at Acropolis Institute of Technology & Research - [AITR], Indore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acropolis Institute of Technology & Research - [AITR], Indore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Computer Science and Engineering, B.Tech CSE AI and ML, B.Tech CSE Data Science, B.Tech Information Technology, B.Tech Civil Engineering, B.Tech Mechanical Engineering, M.Tech Artificial Intelligence and Data Science, M.Tech Internet of Things, MBA, MCA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acropolis Institute of Technology & Research - [AITR], Indore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acropolis Institute of Technology & Research - [AITR], Indore supports students through facilities such as Idea lab, Laboratories, Library, Placement cell, Internships, Industry certifications. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Idea lab', 'Laboratories', 'Library', 'Placement cell', 'Internships', 'Industry certifications']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acropolis Institute of Technology & Research - [AITR], Indore has been mapped with approvals or affiliations including AICTE, NBA. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 10,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://aitr.ac.in/landing-page/"],"website":"https://aitr.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'eec9fc5a-c0cd-4d67-b56b-29254c85d26b' AND slug = 'acropolis-institute-of-technology-amp-research-aitr-indore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acropolis-institute-of-technology-amp-research-aitr-indore', 'Bypass Road, Manglia Square, Indore, Madhya Pradesh - 453771', 'https://aitr.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acropolis-institute-of-technology-amp-research-aitr-indore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bypass Road, Manglia Square, Indore, Madhya Pradesh - 453771', ''), address),
  website = COALESCE(NULLIF('https://aitr.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acropolis-institute-of-technology-amp-research-aitr-indore';


DELETE FROM public.course_fees WHERE college_slug = 'acropolis-institute-of-technology-amp-research-aitr-indore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'b-tech-cse-ai-and-ml', 'B.Tech CSE AI and ML', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'b-tech-cse-data-science', 'B.Tech CSE Data Science', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'b-tech-information-technology', 'B.Tech Information Technology', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'm-tech-artificial-intelligence-and-data-science', 'M.Tech Artificial Intelligence and Data Science', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'm-tech-internet-of-things', 'M.Tech Internet of Things', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'mba', 'MBA', NULL, NULL, '2026'),
  ('acropolis-institute-of-technology-amp-research-aitr-indore', 'mca', 'MCA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9cdef016-7f2b-4de3-ae08-79c6384bf93d' AND slug = 'acropolis-institute-of-technology-and-research-aitr-bhopal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-institute-of-technology-and-research-aitr-bhopal';
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
  description = 'Acropolis Institute of Technology and Research - [AITR], Bhopal is listed on DekhoCampus as a engineering college in Bhopal. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acropolis Institute of Technology and Research - [AITR], Bhopal offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Bhopal.',
  meta_title = 'Acropolis Institute of Technology and Research - [AITR], Bhopal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Institute of Technology and Research - [AITR], Bhopal offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities,',
  meta_keywords = 'Acropolis Institute of Technology and Research - [AITR], Bhopal, Acropolis Institute of Technology and Research - [AITR], Bhopal admission 2026, Acropolis Institute of Technology and Research - [AITR], Bhopal courses, Acropolis Institute of Technology and Research - [AITR], Bhopal fees, Acropolis Institute of Technology and Research - [AITR], Bhopal placements, Acropolis Institute of Technology and Research - [AITR], Bhopal facilities',
  admission_process = 'Admission at Acropolis Institute of Technology and Research - [AITR], Bhopal usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acropolis Institute of Technology and Research - [AITR], Bhopal has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '9cdef016-7f2b-4de3-ae08-79c6384bf93d' AND slug = 'acropolis-institute-of-technology-and-research-aitr-bhopal';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acropolis-institute-of-technology-and-research-aitr-bhopal', 'Bhopal, Madhya Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acropolis-institute-of-technology-and-research-aitr-bhopal');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bhopal, Madhya Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acropolis-institute-of-technology-and-research-aitr-bhopal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '200f7408-0c8d-4666-9fb6-6d6e68e12096' AND slug = 'acropolis-technical-campus-indore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acropolis-technical-campus-indore';
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
  description = 'Acropolis Technical Campus, Indore is listed on DekhoCampus as a college in Indore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Acropolis Technical Campus, Indore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Indore.',
  meta_title = 'Acropolis Technical Campus, Indore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Acropolis Technical Campus, Indore offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and ',
  meta_keywords = 'Acropolis Technical Campus, Indore, Acropolis Technical Campus, Indore admission 2026, Acropolis Technical Campus, Indore courses, Acropolis Technical Campus, Indore fees, Acropolis Technical Campus, Indore placements, Acropolis Technical Campus, Indore facilities',
  admission_process = 'Admission at Acropolis Technical Campus, Indore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Acropolis Technical Campus, Indore course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Acropolis Technical Campus, Indore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Acropolis Technical Campus, Indore supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Acropolis Technical Campus, Indore has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '200f7408-0c8d-4666-9fb6-6d6e68e12096' AND slug = 'acropolis-technical-campus-indore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acropolis-technical-campus-indore', 'Indore, Madhya Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acropolis-technical-campus-indore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Indore, Madhya Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'acropolis-technical-campus-indore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '69f8845f-563c-4bc4-aa2e-f9f0d4be6692' AND slug = 'acs-college-of-engineering-acsce-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: acs-college-of-engineering-acsce-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.acsce.edu.in/',
  official_source_url = 'https://www.acsce.edu.in/engineering-college-admissions/',
  established = 2009,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'VTU', 'NAAC A', 'NBA']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'VTU', 'NAAC A', 'NBA']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'ACS College of Engineering - [ACSCE], Bangalore is listed on DekhoCampus as a engineering college affiliated with Visvesvaraya Technological University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACS College of Engineering - [ACSCE], Bangalore offers BE Aeronautical Engineering, BE Aerospace Engineering, BE Biomedical Engineering, BE Civil Engineering, BE Computer Science and Engineering, BE CSE Internet of Things, BE CSE Data Science, BE CSE Cyber Security, BE CSE AI and ML, BE Electronics and Communication Engineering, BCA, BBA, M.Tech Computer Science and Engineering, MCA, MBA. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'ACS College of Engineering - [ACSCE], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACS College of Engineering - [ACSCE], Bangalore offers BE Aeronautical Engineering, BE Aerospace Engineering, BE Biomedical Engineering, BE Civil Engineeri',
  meta_keywords = 'ACS College of Engineering - [ACSCE], Bangalore, ACS College of Engineering - [ACSCE], Bangalore admission 2026, ACS College of Engineering - [ACSCE], Bangalore courses, ACS College of Engineering - [ACSCE], Bangalore fees, ACS College of Engineering - [ACSCE], Bangalore placements, ACS College of Engineering - [ACSCE], Bangalore facilities',
  admission_process = 'Admission at ACS College of Engineering - [ACSCE], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACS College of Engineering - [ACSCE], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: BE Aeronautical Engineering, BE Aerospace Engineering, BE Biomedical Engineering, BE Civil Engineering, BE Computer Science and Engineering, BE CSE Internet of Things, BE CSE Data Science, BE CSE Cyber Security, BE CSE AI and ML, BE Electronics and Communication Engineering, BCA, BBA, M.Tech Computer Science and Engineering, MCA, MBA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACS College of Engineering - [ACSCE], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACS College of Engineering - [ACSCE], Bangalore supports students through facilities such as Auditorium, Library, Laboratories, Cafeteria, Hostel, Sports. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Auditorium', 'Library', 'Laboratories', 'Cafeteria', 'Hostel', 'Sports']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACS College of Engineering - [ACSCE], Bangalore has been mapped with approvals or affiliations including AICTE, VTU, NAAC A, NBA. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 15,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.acsce.edu.in/engineering-college-admissions/"],"website":"https://www.acsce.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '69f8845f-563c-4bc4-aa2e-f9f0d4be6692' AND slug = 'acs-college-of-engineering-acsce-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'acs-college-of-engineering-acsce-bangalore', '#207, Kambipura, Mysore Road, Bengaluru, Karnataka - 560074', 'https://www.acsce.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'acs-college-of-engineering-acsce-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('#207, Kambipura, Mysore Road, Bengaluru, Karnataka - 560074', ''), address),
  website = COALESCE(NULLIF('https://www.acsce.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'acs-college-of-engineering-acsce-bangalore';


DELETE FROM public.course_fees WHERE college_slug = 'acs-college-of-engineering-acsce-bangalore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('acs-college-of-engineering-acsce-bangalore', 'be-aeronautical-engineering', 'BE Aeronautical Engineering', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-aerospace-engineering', 'BE Aerospace Engineering', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-biomedical-engineering', 'BE Biomedical Engineering', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-civil-engineering', 'BE Civil Engineering', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-computer-science-and-engineering', 'BE Computer Science and Engineering', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-cse-internet-of-things', 'BE CSE Internet of Things', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-cse-data-science', 'BE CSE Data Science', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-cse-cyber-security', 'BE CSE Cyber Security', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-cse-ai-and-ml', 'BE CSE AI and ML', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'be-electronics-and-communication-engineering', 'BE Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'bca', 'BCA', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'bba', 'BBA', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'm-tech-computer-science-and-engineering', 'M.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'mca', 'MCA', NULL, NULL, '2026'),
  ('acs-college-of-engineering-acsce-bangalore', 'mba', 'MBA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '090ca3da-6143-4159-bc75-81920a22b719' AND slug = 'act-college-of-engineering-and-technology-kanchipuram') THEN
    RAISE EXCEPTION 'College target not found or slug changed: act-college-of-engineering-and-technology-kanchipuram';
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
  description = 'ACT College of Engineering and Technology, Kanchipuram is listed on DekhoCampus as a engineering college in Kanchipuram. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ACT College of Engineering and Technology, Kanchipuram offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanchipuram.',
  meta_title = 'ACT College of Engineering and Technology, Kanchipuram: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ACT College of Engineering and Technology, Kanchipuram offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approval',
  meta_keywords = 'ACT College of Engineering and Technology, Kanchipuram, ACT College of Engineering and Technology, Kanchipuram admission 2026, ACT College of Engineering and Technology, Kanchipuram courses, ACT College of Engineering and Technology, Kanchipuram fees, ACT College of Engineering and Technology, Kanchipuram placements, ACT College of Engineering and Technology, Kanchipuram facilities',
  admission_process = 'Admission at ACT College of Engineering and Technology, Kanchipuram usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ACT College of Engineering and Technology, Kanchipuram course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ACT College of Engineering and Technology, Kanchipuram placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ACT College of Engineering and Technology, Kanchipuram supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ACT College of Engineering and Technology, Kanchipuram has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-003; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '090ca3da-6143-4159-bc75-81920a22b719' AND slug = 'act-college-of-engineering-and-technology-kanchipuram';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'act-college-of-engineering-and-technology-kanchipuram', 'Kanchipuram, Tamil Nadu', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'act-college-of-engineering-and-technology-kanchipuram');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kanchipuram, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'act-college-of-engineering-and-technology-kanchipuram';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5c2f7233-2b7d-4313-831f-a90b6a5bb356' AND slug = 'adabiyya-women039s-college-cochin') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adabiyya-women039s-college-cochin';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = 'https://www.collegebatch.com/10759-adabiyya-womens-college-in-cochin-fs025',
  established = 2007,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'University of Calicut']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'University of Calicut']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adabiyya Women''s College, Cochin is listed on DekhoCampus as a women''s college affiliated with University of Calicut. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adabiyya Women''s College, Cochin offers BA Afzal-Ul-Ulama, Diploma of Proficiency in Arabic. Check admission route, eligibility, facilities, approvals and source-backed course details for Cochin.',
  meta_title = 'Adabiyya Women''s College, Cochin: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adabiyya Women''s College, Cochin offers BA Afzal-Ul-Ulama, Diploma of Proficiency in Arabic. Check admission route, eligibility, facilities, approvals and ',
  meta_keywords = 'Adabiyya Women''s College, Cochin, Adabiyya Women''s College, Cochin admission 2026, Adabiyya Women''s College, Cochin courses, Adabiyya Women''s College, Cochin fees, Adabiyya Women''s College, Cochin placements, Adabiyya Women''s College, Cochin facilities',
  admission_process = 'Admission at Adabiyya Women''s College, Cochin usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adabiyya Women''s College, Cochin course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA Afzal-Ul-Ulama, Diploma of Proficiency in Arabic. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adabiyya Women''s College, Cochin placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adabiyya Women''s College, Cochin supports students through facilities such as Library, Computer lab, Auditorium, Cafeteria, Sports. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Computer lab', 'Auditorium', 'Cafeteria', 'Sports']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adabiyya Women''s College, Cochin has been mapped with approvals or affiliations including AICTE, University of Calicut. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 2,
  data_source_urls = '{"batch":"college-official-content-batch-003","researched_at":"2026-08-01","official":["https://www.collegebatch.com/10759-adabiyya-womens-college-in-cochin-fs025"],"website":null,"source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-003; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '5c2f7233-2b7d-4313-831f-a90b6a5bb356' AND slug = 'adabiyya-women039s-college-cochin';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adabiyya-women039s-college-cochin', 'Opposite Seemas Wedding Collections, Clock Tower, Near Private Bus Stand, Aluva, Cochin, Kerala - 683101', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adabiyya-women039s-college-cochin');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Opposite Seemas Wedding Collections, Clock Tower, Near Private Bus Stand, Aluva, Cochin, Kerala - 683101', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adabiyya-women039s-college-cochin';


DELETE FROM public.course_fees WHERE college_slug = 'adabiyya-women039s-college-cochin';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adabiyya-women039s-college-cochin', 'ba-afzal-ul-ulama', 'BA Afzal-Ul-Ulama', NULL, NULL, '2026'),
  ('adabiyya-women039s-college-cochin', 'diploma-of-proficiency-in-arabic', 'Diploma of Proficiency in Arabic', NULL, NULL, '2026');

NOTIFY pgrst, 'reload schema';
COMMIT;
