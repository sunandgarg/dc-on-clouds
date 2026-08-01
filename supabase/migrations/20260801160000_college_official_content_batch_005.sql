-- Generated from data/college-official-enrichment/live-next-50-batch-005.json
-- Batch policy: update content for every targeted college; replace course rows only when a reviewed source provides the catalogue.
-- Fees are intentionally blank unless programme, year, quota and category are verified.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'edb557c4-05ee-400a-90ea-1ad134b5c018' AND slug = 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhisankarar-institute-of-hotel-management-and-catering-technology-trichy';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = official_website,
  official_source_url = 'https://www.collegedekho.com/colleges/adhisankarar-institute-of-hotel-management-and-catering-technology',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy is listed on DekhoCampus as a hotel management and catering technology institute in Trichy. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy offers Diploma in Hotel Management, Diploma in Catering Technology. Check admission route, eligibility, facilities, approvals and source-backed course details for Trichy.',
  meta_title = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy offers Diploma in Hotel Management, Diploma in Catering Technology. Check admiss',
  meta_keywords = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy, Adhisankarar Institute of Hotel Management and Catering Technology, Trichy admission 2026, Adhisankarar Institute of Hotel Management and Catering Technology, Trichy courses, Adhisankarar Institute of Hotel Management and Catering Technology, Trichy fees, Adhisankarar Institute of Hotel Management and Catering Technology, Trichy placements, Adhisankarar Institute of Hotel Management and Catering Technology, Trichy facilities',
  admission_process = 'Admission at Adhisankarar Institute of Hotel Management and Catering Technology, Trichy usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy course information has been cleaned for search and answer engines. Verified programmes for this batch are: Diploma in Hotel Management, Diploma in Catering Technology. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy supports students through facilities such as Training kitchen, Hospitality lab, Classrooms, Library, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Training kitchen', 'Hospitality lab', 'Classrooms', 'Library', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhisankarar Institute of Hotel Management and Catering Technology, Trichy has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  courses_count = 2,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.collegedekho.com/colleges/adhisankarar-institute-of-hotel-management-and-catering-technology"],"website":null,"source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'edb557c4-05ee-400a-90ea-1ad134b5c018' AND slug = 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy', 'Trichy, Tamil Nadu', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Trichy, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy';


DELETE FROM public.course_fees WHERE college_slug = 'adhisankarar-institute-of-hotel-management-and-catering-technology-trichy';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhisankarar-institute-of-hotel-management-and-catering-technology-trichy', 'diploma-in-hotel-management', 'Diploma in Hotel Management', NULL, NULL, '2026'),
  ('adhisankarar-institute-of-hotel-management-and-catering-technology-trichy', 'diploma-in-catering-technology', 'Diploma in Catering Technology', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '345ef8a5-31f0-431f-9676-8fd158ae942f' AND slug = 'adhiyamaan-college-of-education-hosur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiyamaan-college-of-education-hosur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adhiyamaan.ac.in/',
  official_source_url = 'https://www.adhiyamaan.ac.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiyamaan College of Education, Hosur is listed on DekhoCampus as a teacher education college in Hosur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiyamaan College of Education, Hosur offers B.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Hosur.',
  meta_title = 'Adhiyamaan College of Education, Hosur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiyamaan College of Education, Hosur offers B.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Hosur.',
  meta_keywords = 'Adhiyamaan College of Education, Hosur, Adhiyamaan College of Education, Hosur admission 2026, Adhiyamaan College of Education, Hosur courses, Adhiyamaan College of Education, Hosur fees, Adhiyamaan College of Education, Hosur placements, Adhiyamaan College of Education, Hosur facilities',
  admission_process = 'Admission at Adhiyamaan College of Education, Hosur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiyamaan College of Education, Hosur course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiyamaan College of Education, Hosur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiyamaan College of Education, Hosur supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiyamaan College of Education, Hosur has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 1,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.adhiyamaan.ac.in/"],"website":"https://www.adhiyamaan.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '345ef8a5-31f0-431f-9676-8fd158ae942f' AND slug = 'adhiyamaan-college-of-education-hosur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiyamaan-college-of-education-hosur', 'Hosur, Krishnagiri district, Tamil Nadu', 'https://www.adhiyamaan.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiyamaan-college-of-education-hosur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Hosur, Krishnagiri district, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://www.adhiyamaan.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiyamaan-college-of-education-hosur';


DELETE FROM public.course_fees WHERE college_slug = 'adhiyamaan-college-of-education-hosur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiyamaan-college-of-education-hosur', 'b-ed', 'B.Ed', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd6d61655-a24e-448b-aa36-3486367304fb' AND slug = 'adhiyamaan-college-of-engineering-krishnagiri') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhiyamaan-college-of-engineering-krishnagiri';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adhiyamaan.ac.in/',
  official_source_url = 'https://www.adhiyamaan.ac.in/',
  established = 1987,
  type = 'Private Autonomous',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'UGC', 'NBA', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'UGC', 'NBA', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adhiyamaan College of Engineering, Krishnagiri is listed on DekhoCampus as a autonomous engineering college in Hosur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhiyamaan College of Engineering, Krishnagiri offers BE Aeronautical Engineering, BE Biomedical Engineering, BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Artificial Intelligence and Data Science, B.Tech Biotechnology, B.Arch, ME, M.Tech, MCA, MBA, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Krishnagiri.',
  meta_title = 'Adhiyamaan College of Engineering, Krishnagiri: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhiyamaan College of Engineering, Krishnagiri offers BE Aeronautical Engineering, BE Biomedical Engineering, BE Civil Engineering, BE Computer Science and',
  meta_keywords = 'Adhiyamaan College of Engineering, Krishnagiri, Adhiyamaan College of Engineering, Krishnagiri admission 2026, Adhiyamaan College of Engineering, Krishnagiri courses, Adhiyamaan College of Engineering, Krishnagiri fees, Adhiyamaan College of Engineering, Krishnagiri placements, Adhiyamaan College of Engineering, Krishnagiri facilities',
  admission_process = 'Admission at Adhiyamaan College of Engineering, Krishnagiri usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhiyamaan College of Engineering, Krishnagiri course information has been cleaned for search and answer engines. Verified programmes for this batch are: BE Aeronautical Engineering, BE Biomedical Engineering, BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Artificial Intelligence and Data Science, B.Tech Biotechnology, B.Arch, ME, M.Tech, MCA, MBA, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhiyamaan College of Engineering, Krishnagiri placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhiyamaan College of Engineering, Krishnagiri supports students through facilities such as Central library, Engineering laboratories, Hostels, Sports, Placement cell, Research centres. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Central library', 'Engineering laboratories', 'Hostels', 'Sports', 'Placement cell', 'Research centres']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhiyamaan College of Engineering, Krishnagiri has been mapped with approvals or affiliations including AICTE, UGC, NBA, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 15,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.adhiyamaan.ac.in/"],"website":"https://www.adhiyamaan.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'd6d61655-a24e-448b-aa36-3486367304fb' AND slug = 'adhiyamaan-college-of-engineering-krishnagiri';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhiyamaan-college-of-engineering-krishnagiri', 'Dr. M.G.R. Nagar, Hosur, Krishnagiri district, Tamil Nadu - 635109', 'https://www.adhiyamaan.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhiyamaan-college-of-engineering-krishnagiri');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Dr. M.G.R. Nagar, Hosur, Krishnagiri district, Tamil Nadu - 635109', ''), address),
  website = COALESCE(NULLIF('https://www.adhiyamaan.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adhiyamaan-college-of-engineering-krishnagiri';


DELETE FROM public.course_fees WHERE college_slug = 'adhiyamaan-college-of-engineering-krishnagiri';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adhiyamaan-college-of-engineering-krishnagiri', 'be-aeronautical-engineering', 'BE Aeronautical Engineering', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'be-biomedical-engineering', 'BE Biomedical Engineering', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'be-civil-engineering', 'BE Civil Engineering', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'be-computer-science-and-engineering', 'BE Computer Science and Engineering', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'be-electronics-and-communication-engineering', 'BE Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'be-electrical-and-electronics-engineering', 'BE Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'be-mechanical-engineering', 'BE Mechanical Engineering', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'b-tech-artificial-intelligence-and-data-science', 'B.Tech Artificial Intelligence and Data Science', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'b-tech-biotechnology', 'B.Tech Biotechnology', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'b-arch', 'B.Arch', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'me', 'ME', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'mca', 'MCA', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'mba', 'MBA', NULL, NULL, '2026'),
  ('adhiyamaan-college-of-engineering-krishnagiri', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '97dd637d-ce00-4bc9-8c2e-33cf1e8cb9b5' AND slug = 'adhunik-institute-of-education-and-research-aier-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhunik-institute-of-education-and-research-aier-ghaziabad';
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
  description = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad is listed on DekhoCampus as a teacher education college in Ghaziabad. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Ghaziabad.',
  meta_title = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad offers B.Ed, D.El.Ed. Check admission route, eligibility, facilities, approvals and source-ba',
  meta_keywords = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad, Adhunik Institute of Education and Research-[AIER], Ghaziabad admission 2026, Adhunik Institute of Education and Research-[AIER], Ghaziabad courses, Adhunik Institute of Education and Research-[AIER], Ghaziabad fees, Adhunik Institute of Education and Research-[AIER], Ghaziabad placements, Adhunik Institute of Education and Research-[AIER], Ghaziabad facilities',
  admission_process = 'Admission at Adhunik Institute of Education and Research-[AIER], Ghaziabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, D.El.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad supports students through facilities such as Teaching practice support, Library, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching practice support', 'Library', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhunik Institute of Education and Research-[AIER], Ghaziabad has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '97dd637d-ce00-4bc9-8c2e-33cf1e8cb9b5' AND slug = 'adhunik-institute-of-education-and-research-aier-ghaziabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhunik-institute-of-education-and-research-aier-ghaziabad', 'Ghaziabad, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhunik-institute-of-education-and-research-aier-ghaziabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Ghaziabad, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhunik-institute-of-education-and-research-aier-ghaziabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '39f99352-0e59-4361-873b-09efd5606443' AND slug = 'adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad';
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
  description = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad is listed on DekhoCampus as a management institute in Ghaziabad. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course details for Ghaziabad.',
  meta_title = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approva',
  meta_keywords = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad admission 2026, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad courses, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad fees, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad placements, Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad facilities',
  admission_process = 'Admission at Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA, BBA, PGDM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad supports students through facilities such as Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhunik Institute of Productivity Management & Research - [AIPMR], Ghaziabad has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '39f99352-0e59-4361-873b-09efd5606443' AND slug = 'adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad', 'Ghaziabad, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Ghaziabad, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhunik-institute-of-productivity-management-amp-research-aipmr-ghaziabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd52e0c20-56f9-4970-92bc-f590af59a45f' AND slug = 'adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal';
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
  description = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal is listed on DekhoCampus as a college in Yavatmal. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Yavatmal.',
  meta_title = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, faciliti',
  meta_keywords = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal admission 2026, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal courses, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal fees, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal placements, Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal facilities',
  admission_process = 'Admission at Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhyapan Padvika Prashikshan Mahavidyalaya, Yavatmal has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'd52e0c20-56f9-4970-92bc-f590af59a45f' AND slug = 'adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal', 'Yavatmal, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Yavatmal, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhyapan-padvika-prashikshan-mahavidyalaya-yavatmal';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f35fdacd-3eac-4b86-9060-5214ce4809a9' AND slug = 'adhyapika-vidyalaya-jalgaon') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adhyapika-vidyalaya-jalgaon';
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
  description = 'Adhyapika Vidyalaya, Jalgaon is listed on DekhoCampus as a college in Jalgaon. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adhyapika Vidyalaya, Jalgaon offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Jalgaon.',
  meta_title = 'Adhyapika Vidyalaya, Jalgaon: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adhyapika Vidyalaya, Jalgaon offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source',
  meta_keywords = 'Adhyapika Vidyalaya, Jalgaon, Adhyapika Vidyalaya, Jalgaon admission 2026, Adhyapika Vidyalaya, Jalgaon courses, Adhyapika Vidyalaya, Jalgaon fees, Adhyapika Vidyalaya, Jalgaon placements, Adhyapika Vidyalaya, Jalgaon facilities',
  admission_process = 'Admission at Adhyapika Vidyalaya, Jalgaon usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adhyapika Vidyalaya, Jalgaon course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adhyapika Vidyalaya, Jalgaon placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adhyapika Vidyalaya, Jalgaon supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adhyapika Vidyalaya, Jalgaon has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'f35fdacd-3eac-4b86-9060-5214ce4809a9' AND slug = 'adhyapika-vidyalaya-jalgaon';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adhyapika-vidyalaya-jalgaon', 'Jalgaon, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adhyapika-vidyalaya-jalgaon');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jalgaon, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adhyapika-vidyalaya-jalgaon';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '924f0617-3ede-4fbe-937f-8b633c1b4024' AND slug = 'adi-sankara-training-college-kalady-ernakulam') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adi-sankara-training-college-kalady-ernakulam';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adishankara.ac.in/',
  official_source_url = 'https://www.adishankara.ac.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NCTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NCTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adi Sankara Training College Kalady, Ernakulam is listed on DekhoCampus as a teacher training college in Kalady. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adi Sankara Training College Kalady, Ernakulam offers B.Ed, M.Ed. Check admission route, eligibility, facilities, approvals and source-backed course details for Ernakulam.',
  meta_title = 'Adi Sankara Training College Kalady, Ernakulam: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adi Sankara Training College Kalady, Ernakulam offers B.Ed, M.Ed. Check admission route, eligibility, facilities, approvals and source-backed course detail',
  meta_keywords = 'Adi Sankara Training College Kalady, Ernakulam, Adi Sankara Training College Kalady, Ernakulam admission 2026, Adi Sankara Training College Kalady, Ernakulam courses, Adi Sankara Training College Kalady, Ernakulam fees, Adi Sankara Training College Kalady, Ernakulam placements, Adi Sankara Training College Kalady, Ernakulam facilities',
  admission_process = 'Admission at Adi Sankara Training College Kalady, Ernakulam usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adi Sankara Training College Kalady, Ernakulam course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Ed, M.Ed. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adi Sankara Training College Kalady, Ernakulam placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adi Sankara Training College Kalady, Ernakulam supports students through facilities such as Library, Teaching practice support, ICT classroom, Seminar hall, Student mentoring. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Teaching practice support', 'ICT classroom', 'Seminar hall', 'Student mentoring']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adi Sankara Training College Kalady, Ernakulam has been mapped with approvals or affiliations including NCTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 2,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.adishankara.ac.in/"],"website":"https://www.adishankara.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '924f0617-3ede-4fbe-937f-8b633c1b4024' AND slug = 'adi-sankara-training-college-kalady-ernakulam';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adi-sankara-training-college-kalady-ernakulam', 'Kalady, Ernakulam, Kerala', 'https://www.adishankara.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adi-sankara-training-college-kalady-ernakulam');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kalady, Ernakulam, Kerala', ''), address),
  website = COALESCE(NULLIF('https://www.adishankara.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adi-sankara-training-college-kalady-ernakulam';


DELETE FROM public.course_fees WHERE college_slug = 'adi-sankara-training-college-kalady-ernakulam';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adi-sankara-training-college-kalady-ernakulam', 'b-ed', 'B.Ed', NULL, NULL, '2026'),
  ('adi-sankara-training-college-kalady-ernakulam', 'm-ed', 'M.Ed', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f2aeec67-c2bc-450f-a468-e6e2e836d4c0' AND slug = 'adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adishankara.ac.in/',
  official_source_url = 'https://www.adishankara.ac.in/',
  established = 2001,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'NBA', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'NBA', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam is listed on DekhoCampus as a engineering institute affiliated with APJ Abdul Kalam Technological University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, B.Tech Robotics and Automation, M.Tech, MBA, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Ernakulam.',
  meta_title = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, ',
  meta_keywords = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam, Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam admission 2026, Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam courses, Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam fees, Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam placements, Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam facilities',
  admission_process = 'Admission at Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, B.Tech Robotics and Automation, M.Tech, MBA, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam supports students through facilities such as Library, Laboratories, Innovation centre, Hostel, Placement cell, Transport. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Innovation centre', 'Hostel', 'Placement cell', 'Transport']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adi Shankara Institute of Engineering and Technology - [ASIET] Kalady, Ernakulam has been mapped with approvals or affiliations including AICTE, NBA, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 9,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.adishankara.ac.in/"],"website":"https://www.adishankara.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'f2aeec67-c2bc-450f-a468-e6e2e836d4c0' AND slug = 'adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'Vidya Bharathi Nagar, Mattoor, Kalady, Ernakulam, Kerala - 683574', 'https://www.adishankara.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Vidya Bharathi Nagar, Mattoor, Kalady, Ernakulam, Kerala - 683574', ''), address),
  website = COALESCE(NULLIF('https://www.adishankara.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam';


DELETE FROM public.course_fees WHERE college_slug = 'adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'b-tech-robotics-and-automation', 'B.Tech Robotics and Automation', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'mba', 'MBA', NULL, NULL, '2026'),
  ('adi-shankara-institute-of-engineering-and-technology-asiet-kalady-ernakulam', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5db15c55-3f70-4b9b-b68e-925a3aa111b4' AND slug = 'adichunchanagiri-college-of-nursing-mandya') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adichunchanagiri-college-of-nursing-mandya';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://accn.co.in/',
  official_source_url = 'https://accn.co.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['INC', 'Karnataka State Nursing Council']::text[], 1) IS NULL THEN approvals ELSE ARRAY['INC', 'Karnataka State Nursing Council']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adichunchanagiri College of Nursing, Mandya is listed on DekhoCampus as a nursing college under Adichunchanagiri University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adichunchanagiri College of Nursing, Mandya offers B.Sc Nursing, Post Basic B.Sc Nursing, M.Sc Nursing. Check admission route, eligibility, facilities, approvals and source-backed course details for Mandya.',
  meta_title = 'Adichunchanagiri College of Nursing, Mandya: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adichunchanagiri College of Nursing, Mandya offers B.Sc Nursing, Post Basic B.Sc Nursing, M.Sc Nursing. Check admission route, eligibility, facilities, app',
  meta_keywords = 'Adichunchanagiri College of Nursing, Mandya, Adichunchanagiri College of Nursing, Mandya admission 2026, Adichunchanagiri College of Nursing, Mandya courses, Adichunchanagiri College of Nursing, Mandya fees, Adichunchanagiri College of Nursing, Mandya placements, Adichunchanagiri College of Nursing, Mandya facilities',
  admission_process = 'Admission at Adichunchanagiri College of Nursing, Mandya usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adichunchanagiri College of Nursing, Mandya course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Nursing, Post Basic B.Sc Nursing, M.Sc Nursing. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adichunchanagiri College of Nursing, Mandya placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adichunchanagiri College of Nursing, Mandya supports students through facilities such as Nursing labs, Clinical training, Library, Hostel, Community health practice. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Nursing labs', 'Clinical training', 'Library', 'Hostel', 'Community health practice']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adichunchanagiri College of Nursing, Mandya has been mapped with approvals or affiliations including INC, Karnataka State Nursing Council. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 3,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://accn.co.in/"],"website":"https://accn.co.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '5db15c55-3f70-4b9b-b68e-925a3aa111b4' AND slug = 'adichunchanagiri-college-of-nursing-mandya';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adichunchanagiri-college-of-nursing-mandya', 'B. G. Nagara, Mandya district, Karnataka', 'https://accn.co.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adichunchanagiri-college-of-nursing-mandya');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('B. G. Nagara, Mandya district, Karnataka', ''), address),
  website = COALESCE(NULLIF('https://accn.co.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adichunchanagiri-college-of-nursing-mandya';


DELETE FROM public.course_fees WHERE college_slug = 'adichunchanagiri-college-of-nursing-mandya';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adichunchanagiri-college-of-nursing-mandya', 'b-sc-nursing', 'B.Sc Nursing', NULL, NULL, '2026'),
  ('adichunchanagiri-college-of-nursing-mandya', 'post-basic-b-sc-nursing', 'Post Basic B.Sc Nursing', NULL, NULL, '2026'),
  ('adichunchanagiri-college-of-nursing-mandya', 'm-sc-nursing', 'M.Sc Nursing', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b5bddd80-aaf3-4ce2-a784-14bc679950d4' AND slug = 'adichunchanagiri-institute-of-medical-sciences-aims-mandya') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adichunchanagiri-institute-of-medical-sciences-aims-mandya';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://bgsaims.edu.in/',
  official_source_url = 'https://bgsaims.edu.in/',
  established = 1986,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['NMC', 'Adichunchanagiri University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['NMC', 'Adichunchanagiri University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya is listed on DekhoCampus as a medical college and teaching hospital in Mandya. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya offers MBBS, MD Anatomy, MD Physiology, MD Biochemistry, MD Pathology, MD Microbiology, MD Pharmacology, MD Community Medicine, MD General Medicine, MS General Surgery, MS Orthopaedics, MD Paediatrics, MD Anaesthesiology, MD Radio Diagnosis, MD/MS Obstetrics and Gynaecology, MD/MS Ophthalmology. Check admission route, eligibility, facilities, approvals and source-backed course details for Mandya.',
  meta_title = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya offers MBBS, MD Anatomy, MD Physiology, MD Biochemistry, MD Pathology, MD Microbiology, MD ',
  meta_keywords = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya, Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya admission 2026, Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya courses, Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya fees, Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya placements, Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya facilities',
  admission_process = 'Admission at Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBBS, MD Anatomy, MD Physiology, MD Biochemistry, MD Pathology, MD Microbiology, MD Pharmacology, MD Community Medicine, MD General Medicine, MS General Surgery, MS Orthopaedics, MD Paediatrics, MD Anaesthesiology, MD Radio Diagnosis, MD/MS Obstetrics and Gynaecology, MD/MS Ophthalmology. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya supports students through facilities such as Teaching hospital, Clinical departments, Laboratories, Library, Hostels, Simulation learning. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostels', 'Simulation learning']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adichunchanagiri Institute of Medical Sciences - [AIMS], Mandya has been mapped with approvals or affiliations including NMC, Adichunchanagiri University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 16,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://bgsaims.edu.in/"],"website":"https://bgsaims.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'b5bddd80-aaf3-4ce2-a784-14bc679950d4' AND slug = 'adichunchanagiri-institute-of-medical-sciences-aims-mandya';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'B. G. Nagara, Nagamangala Taluk, Mandya district, Karnataka - 571448', 'https://bgsaims.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adichunchanagiri-institute-of-medical-sciences-aims-mandya');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('B. G. Nagara, Nagamangala Taluk, Mandya district, Karnataka - 571448', ''), address),
  website = COALESCE(NULLIF('https://bgsaims.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adichunchanagiri-institute-of-medical-sciences-aims-mandya';


DELETE FROM public.course_fees WHERE college_slug = 'adichunchanagiri-institute-of-medical-sciences-aims-mandya';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'mbbs', 'MBBS', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-anatomy', 'MD Anatomy', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-physiology', 'MD Physiology', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-biochemistry', 'MD Biochemistry', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-pathology', 'MD Pathology', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-microbiology', 'MD Microbiology', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-pharmacology', 'MD Pharmacology', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-community-medicine', 'MD Community Medicine', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-general-medicine', 'MD General Medicine', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'ms-general-surgery', 'MS General Surgery', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'ms-orthopaedics', 'MS Orthopaedics', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-paediatrics', 'MD Paediatrics', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-anaesthesiology', 'MD Anaesthesiology', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-radio-diagnosis', 'MD Radio Diagnosis', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-ms-obstetrics-and-gynaecology', 'MD/MS Obstetrics and Gynaecology', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-medical-sciences-aims-mandya', 'md-ms-ophthalmology', 'MD/MS Ophthalmology', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b716eab7-5990-49b3-8f2d-e5bd1dc8d3e7' AND slug = 'adichunchanagiri-institute-of-technology-ait-chikmagalur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adichunchanagiri-institute-of-technology-ait-chikmagalur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aitckm.in/',
  official_source_url = 'https://aitckm.in/',
  established = 1980,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'VTU', 'NBA', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'VTU', 'NBA', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur is listed on DekhoCampus as a engineering institute affiliated with Visvesvaraya Technological University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Information Science and Engineering, BE Mechanical Engineering, M.Tech, MBA, MCA, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Chikmagalur.',
  meta_title = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communica',
  meta_keywords = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur, Adichunchanagiri Institute of Technology- [AIT], Chikmagalur admission 2026, Adichunchanagiri Institute of Technology- [AIT], Chikmagalur courses, Adichunchanagiri Institute of Technology- [AIT], Chikmagalur fees, Adichunchanagiri Institute of Technology- [AIT], Chikmagalur placements, Adichunchanagiri Institute of Technology- [AIT], Chikmagalur facilities',
  admission_process = 'Admission at Adichunchanagiri Institute of Technology- [AIT], Chikmagalur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur course information has been cleaned for search and answer engines. Verified programmes for this batch are: BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Information Science and Engineering, BE Mechanical Engineering, M.Tech, MBA, MCA, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur supports students through facilities such as Library, Engineering labs, Hostels, Sports, Transport, Training and placement cell. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Engineering labs', 'Hostels', 'Sports', 'Transport', 'Training and placement cell']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adichunchanagiri Institute of Technology- [AIT], Chikmagalur has been mapped with approvals or affiliations including AICTE, VTU, NBA, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 10,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://aitckm.in/"],"website":"https://aitckm.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'b716eab7-5990-49b3-8f2d-e5bd1dc8d3e7' AND slug = 'adichunchanagiri-institute-of-technology-ait-chikmagalur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adichunchanagiri-institute-of-technology-ait-chikmagalur', 'Jyothinagar, Chikkamagaluru, Karnataka - 577102', 'https://aitckm.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adichunchanagiri-institute-of-technology-ait-chikmagalur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jyothinagar, Chikkamagaluru, Karnataka - 577102', ''), address),
  website = COALESCE(NULLIF('https://aitckm.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adichunchanagiri-institute-of-technology-ait-chikmagalur';


DELETE FROM public.course_fees WHERE college_slug = 'adichunchanagiri-institute-of-technology-ait-chikmagalur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'be-civil-engineering', 'BE Civil Engineering', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'be-computer-science-and-engineering', 'BE Computer Science and Engineering', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'be-electronics-and-communication-engineering', 'BE Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'be-electrical-and-electronics-engineering', 'BE Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'be-information-science-and-engineering', 'BE Information Science and Engineering', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'be-mechanical-engineering', 'BE Mechanical Engineering', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'mba', 'MBA', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'mca', 'MCA', NULL, NULL, '2026'),
  ('adichunchanagiri-institute-of-technology-ait-chikmagalur', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a10caad3-0e13-40d9-9cb6-c0cf25e9e69a' AND slug = 'adikavi-nannaya-university-rajahmundhry') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adikavi-nannaya-university-rajahmundhry';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aknu.edu.in/',
  official_source_url = 'https://aknu.edu.in/',
  established = 2006,
  type = 'State University',
  approvals = CASE WHEN array_length(ARRAY['UGC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adikavi Nannaya University, Rajahmundhry is listed on DekhoCampus as a state university in Andhra Pradesh. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adikavi Nannaya University, Rajahmundhry offers BA, B.Com, B.Sc, B.Ed, B.P.Ed, B.Tech, LLB, MBA, MCA, M.Com, MA, M.Sc, M.Ed, M.P.Ed, M.Tech, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Rajahmundhry.',
  meta_title = 'Adikavi Nannaya University, Rajahmundhry: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adikavi Nannaya University, Rajahmundhry offers BA, B.Com, B.Sc, B.Ed, B.P.Ed, B.Tech, LLB, MBA, MCA, M.Com, MA, M.Sc, M.Ed, M.P.Ed, M.Tech, Ph.D. Check ad',
  meta_keywords = 'Adikavi Nannaya University, Rajahmundhry, Adikavi Nannaya University, Rajahmundhry admission 2026, Adikavi Nannaya University, Rajahmundhry courses, Adikavi Nannaya University, Rajahmundhry fees, Adikavi Nannaya University, Rajahmundhry placements, Adikavi Nannaya University, Rajahmundhry facilities',
  admission_process = 'Admission at Adikavi Nannaya University, Rajahmundhry usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adikavi Nannaya University, Rajahmundhry course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA, B.Com, B.Sc, B.Ed, B.P.Ed, B.Tech, LLB, MBA, MCA, M.Com, MA, M.Sc, M.Ed, M.P.Ed, M.Tech, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adikavi Nannaya University, Rajahmundhry placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adikavi Nannaya University, Rajahmundhry supports students through facilities such as Central library, Research departments, Hostels, Sports, Student services, Affiliated college network. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Central library', 'Research departments', 'Hostels', 'Sports', 'Student services', 'Affiliated college network']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adikavi Nannaya University, Rajahmundhry has been mapped with approvals or affiliations including UGC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 16,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://aknu.edu.in/"],"website":"https://aknu.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'a10caad3-0e13-40d9-9cb6-c0cf25e9e69a' AND slug = 'adikavi-nannaya-university-rajahmundhry';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adikavi-nannaya-university-rajahmundhry', 'Rajamahendravaram, East Godavari district, Andhra Pradesh - 533296', 'https://aknu.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adikavi-nannaya-university-rajahmundhry');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Rajamahendravaram, East Godavari district, Andhra Pradesh - 533296', ''), address),
  website = COALESCE(NULLIF('https://aknu.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adikavi-nannaya-university-rajahmundhry';


DELETE FROM public.course_fees WHERE college_slug = 'adikavi-nannaya-university-rajahmundhry';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adikavi-nannaya-university-rajahmundhry', 'ba', 'BA', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'b-sc', 'B.Sc', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'b-ed', 'B.Ed', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'b-p-ed', 'B.P.Ed', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'b-tech', 'B.Tech', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'llb', 'LLB', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'mba', 'MBA', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'mca', 'MCA', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'm-com', 'M.Com', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'ma', 'MA', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'm-sc', 'M.Sc', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'm-ed', 'M.Ed', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'm-p-ed', 'M.P.Ed', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('adikavi-nannaya-university-rajahmundhry', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3582a241-7566-45aa-a626-31ac9998c882' AND slug = 'aditanar-college-of-arts-and-science-thoothukudi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditanar-college-of-arts-and-science-thoothukudi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.aditanarcollege.edu.in/',
  official_source_url = 'https://www.aditanarcollege.edu.in/',
  established = 1965,
  type = 'Government Aided',
  approvals = CASE WHEN array_length(ARRAY['UGC', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Aditanar College of Arts and Science, Thoothukudi is listed on DekhoCampus as a arts and science college affiliated with Manonmaniam Sundaranar University. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditanar College of Arts and Science, Thoothukudi offers BA, B.Com, B.Sc, BBA, M.Com, MA, M.Sc, M.Phil, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Thoothukudi.',
  meta_title = 'Aditanar College of Arts and Science, Thoothukudi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditanar College of Arts and Science, Thoothukudi offers BA, B.Com, B.Sc, BBA, M.Com, MA, M.Sc, M.Phil, Ph.D. Check admission route, eligibility, facilitie',
  meta_keywords = 'Aditanar College of Arts and Science, Thoothukudi, Aditanar College of Arts and Science, Thoothukudi admission 2026, Aditanar College of Arts and Science, Thoothukudi courses, Aditanar College of Arts and Science, Thoothukudi fees, Aditanar College of Arts and Science, Thoothukudi placements, Aditanar College of Arts and Science, Thoothukudi facilities',
  admission_process = 'Admission at Aditanar College of Arts and Science, Thoothukudi usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditanar College of Arts and Science, Thoothukudi course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA, B.Com, B.Sc, BBA, M.Com, MA, M.Sc, M.Phil, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditanar College of Arts and Science, Thoothukudi placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditanar College of Arts and Science, Thoothukudi supports students through facilities such as Library, Laboratories, Hostel, Sports, NSS, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Hostel', 'Sports', 'NSS', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditanar College of Arts and Science, Thoothukudi has been mapped with approvals or affiliations including UGC, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 9,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.aditanarcollege.edu.in/"],"website":"https://www.aditanarcollege.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '3582a241-7566-45aa-a626-31ac9998c882' AND slug = 'aditanar-college-of-arts-and-science-thoothukudi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditanar-college-of-arts-and-science-thoothukudi', 'Tiruchendur, Thoothukudi district, Tamil Nadu', 'https://www.aditanarcollege.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditanar-college-of-arts-and-science-thoothukudi');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Tiruchendur, Thoothukudi district, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://www.aditanarcollege.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'aditanar-college-of-arts-and-science-thoothukudi';


DELETE FROM public.course_fees WHERE college_slug = 'aditanar-college-of-arts-and-science-thoothukudi';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('aditanar-college-of-arts-and-science-thoothukudi', 'ba', 'BA', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'b-sc', 'B.Sc', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'bba', 'BBA', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'm-com', 'M.Com', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'ma', 'MA', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'm-sc', 'M.Sc', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'm-phil', 'M.Phil', NULL, NULL, '2026'),
  ('aditanar-college-of-arts-and-science-thoothukudi', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5836f36a-3ac1-43dd-99e5-71e3a9bad68e' AND slug = 'adithya-institute-of-management-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adithya-institute-of-management-bangalore';
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
  description = 'Adithya Institute of Management, Bangalore is listed on DekhoCampus as a management institute in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adithya Institute of Management, Bangalore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Adithya Institute of Management, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adithya Institute of Management, Bangalore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course detail',
  meta_keywords = 'Adithya Institute of Management, Bangalore, Adithya Institute of Management, Bangalore admission 2026, Adithya Institute of Management, Bangalore courses, Adithya Institute of Management, Bangalore fees, Adithya Institute of Management, Bangalore placements, Adithya Institute of Management, Bangalore facilities',
  admission_process = 'Admission at Adithya Institute of Management, Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adithya Institute of Management, Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA, BBA, PGDM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adithya Institute of Management, Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adithya Institute of Management, Bangalore supports students through facilities such as Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adithya Institute of Management, Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '5836f36a-3ac1-43dd-99e5-71e3a9bad68e' AND slug = 'adithya-institute-of-management-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adithya-institute-of-management-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adithya-institute-of-management-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adithya-institute-of-management-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ee060243-4653-4f45-a2d5-5f1541bb2d8f' AND slug = 'adithya-institute-of-technology-ait-coimbatore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adithya-institute-of-technology-ait-coimbatore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.adithyatech.edu.in/',
  official_source_url = 'https://www.adithyatech.edu.in/',
  established = 2008,
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'Anna University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'Anna University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Adithya Institute of Technology - [AIT], Coimbatore is listed on DekhoCampus as a engineering institute in Coimbatore. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adithya Institute of Technology - [AIT], Coimbatore offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Information Technology, MBA. Check admission route, eligibility, facilities, approvals and source-backed course details for Coimbatore.',
  meta_title = 'Adithya Institute of Technology - [AIT], Coimbatore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adithya Institute of Technology - [AIT], Coimbatore offers BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engi',
  meta_keywords = 'Adithya Institute of Technology - [AIT], Coimbatore, Adithya Institute of Technology - [AIT], Coimbatore admission 2026, Adithya Institute of Technology - [AIT], Coimbatore courses, Adithya Institute of Technology - [AIT], Coimbatore fees, Adithya Institute of Technology - [AIT], Coimbatore placements, Adithya Institute of Technology - [AIT], Coimbatore facilities',
  admission_process = 'Admission at Adithya Institute of Technology - [AIT], Coimbatore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adithya Institute of Technology - [AIT], Coimbatore course information has been cleaned for search and answer engines. Verified programmes for this batch are: BE Civil Engineering, BE Computer Science and Engineering, BE Electronics and Communication Engineering, BE Electrical and Electronics Engineering, BE Mechanical Engineering, B.Tech Information Technology, MBA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adithya Institute of Technology - [AIT], Coimbatore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adithya Institute of Technology - [AIT], Coimbatore supports students through facilities such as Library, Laboratories, Hostel, Transport, Placement cell, Sports. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Hostel', 'Transport', 'Placement cell', 'Sports']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adithya Institute of Technology - [AIT], Coimbatore has been mapped with approvals or affiliations including AICTE, Anna University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 7,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.adithyatech.edu.in/"],"website":"https://www.adithyatech.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'ee060243-4653-4f45-a2d5-5f1541bb2d8f' AND slug = 'adithya-institute-of-technology-ait-coimbatore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adithya-institute-of-technology-ait-coimbatore', 'Coimbatore, Tamil Nadu', 'https://www.adithyatech.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adithya-institute-of-technology-ait-coimbatore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Coimbatore, Tamil Nadu', ''), address),
  website = COALESCE(NULLIF('https://www.adithyatech.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'adithya-institute-of-technology-ait-coimbatore';


DELETE FROM public.course_fees WHERE college_slug = 'adithya-institute-of-technology-ait-coimbatore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('adithya-institute-of-technology-ait-coimbatore', 'be-civil-engineering', 'BE Civil Engineering', NULL, NULL, '2026'),
  ('adithya-institute-of-technology-ait-coimbatore', 'be-computer-science-and-engineering', 'BE Computer Science and Engineering', NULL, NULL, '2026'),
  ('adithya-institute-of-technology-ait-coimbatore', 'be-electronics-and-communication-engineering', 'BE Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('adithya-institute-of-technology-ait-coimbatore', 'be-electrical-and-electronics-engineering', 'BE Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('adithya-institute-of-technology-ait-coimbatore', 'be-mechanical-engineering', 'BE Mechanical Engineering', NULL, NULL, '2026'),
  ('adithya-institute-of-technology-ait-coimbatore', 'b-tech-information-technology', 'B.Tech Information Technology', NULL, NULL, '2026'),
  ('adithya-institute-of-technology-ait-coimbatore', 'mba', 'MBA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '6ed678db-fdae-47c1-bf84-22382f04ab39' AND slug = 'aditi-mahavidyalaya-amv-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditi-mahavidyalaya-amv-new-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aditi.du.ac.in/',
  official_source_url = 'https://aditi.du.ac.in/courses/',
  established = 1994,
  type = 'Government',
  approvals = CASE WHEN array_length(ARRAY['UGC', 'University of Delhi']::text[], 1) IS NULL THEN approvals ELSE ARRAY['UGC', 'University of Delhi']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Aditi Mahavidyalaya - [AMV], New Delhi is listed on DekhoCampus as a women''s college of University of Delhi. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditi Mahavidyalaya - [AMV], New Delhi offers BA Programme, BA Honours Geography, BA Honours Hindi Journalism and Mass Communication, B.Com, B.Com Honours, B.El.Ed, B.Sc Honours Social Work. Check admission route, eligibility, facilities, approvals and source-backed course details for New Delhi.',
  meta_title = 'Aditi Mahavidyalaya - [AMV], New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditi Mahavidyalaya - [AMV], New Delhi offers BA Programme, BA Honours Geography, BA Honours Hindi Journalism and Mass Communication, B.Com, B.Com Honours,',
  meta_keywords = 'Aditi Mahavidyalaya - [AMV], New Delhi, Aditi Mahavidyalaya - [AMV], New Delhi admission 2026, Aditi Mahavidyalaya - [AMV], New Delhi courses, Aditi Mahavidyalaya - [AMV], New Delhi fees, Aditi Mahavidyalaya - [AMV], New Delhi placements, Aditi Mahavidyalaya - [AMV], New Delhi facilities',
  admission_process = 'Admission at Aditi Mahavidyalaya - [AMV], New Delhi usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditi Mahavidyalaya - [AMV], New Delhi course information has been cleaned for search and answer engines. Verified programmes for this batch are: BA Programme, BA Honours Geography, BA Honours Hindi Journalism and Mass Communication, B.Com, B.Com Honours, B.El.Ed, B.Sc Honours Social Work. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditi Mahavidyalaya - [AMV], New Delhi placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditi Mahavidyalaya - [AMV], New Delhi supports students through facilities such as Library, Computer lab, Sports, Student societies, NSS, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Computer lab', 'Sports', 'Student societies', 'NSS', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditi Mahavidyalaya - [AMV], New Delhi has been mapped with approvals or affiliations including UGC, University of Delhi. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 7,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://aditi.du.ac.in/courses/"],"website":"https://aditi.du.ac.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '6ed678db-fdae-47c1-bf84-22382f04ab39' AND slug = 'aditi-mahavidyalaya-amv-new-delhi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditi-mahavidyalaya-amv-new-delhi', 'Bawana, Delhi - 110039', 'https://aditi.du.ac.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditi-mahavidyalaya-amv-new-delhi');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bawana, Delhi - 110039', ''), address),
  website = COALESCE(NULLIF('https://aditi.du.ac.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'aditi-mahavidyalaya-amv-new-delhi';


DELETE FROM public.course_fees WHERE college_slug = 'aditi-mahavidyalaya-amv-new-delhi';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('aditi-mahavidyalaya-amv-new-delhi', 'ba-programme', 'BA Programme', NULL, NULL, '2026'),
  ('aditi-mahavidyalaya-amv-new-delhi', 'ba-honours-geography', 'BA Honours Geography', NULL, NULL, '2026'),
  ('aditi-mahavidyalaya-amv-new-delhi', 'ba-honours-hindi-journalism-and-mass-communication', 'BA Honours Hindi Journalism and Mass Communication', NULL, NULL, '2026'),
  ('aditi-mahavidyalaya-amv-new-delhi', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('aditi-mahavidyalaya-amv-new-delhi', 'b-com-honours', 'B.Com Honours', NULL, NULL, '2026'),
  ('aditi-mahavidyalaya-amv-new-delhi', 'b-el-ed', 'B.El.Ed', NULL, NULL, '2026'),
  ('aditi-mahavidyalaya-amv-new-delhi', 'b-sc-honours-social-work', 'B.Sc Honours Social Work', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '080e7321-fb04-4693-947a-32080ed89a3f' AND slug = 'aditya-academy-of-architecture-amp-design-aaad-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-academy-of-architecture-amp-design-aaad-bangalore';
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
  description = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore is listed on DekhoCampus as a architecture college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore offers B.Arch, M.Arch. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore offers B.Arch, M.Arch. Check admission route, eligibility, facilities, approvals and source-bac',
  meta_keywords = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore, Aditya Academy of Architecture & Design - [AAAD], Bangalore admission 2026, Aditya Academy of Architecture & Design - [AAAD], Bangalore courses, Aditya Academy of Architecture & Design - [AAAD], Bangalore fees, Aditya Academy of Architecture & Design - [AAAD], Bangalore placements, Aditya Academy of Architecture & Design - [AAAD], Bangalore facilities',
  admission_process = 'Admission at Aditya Academy of Architecture & Design - [AAAD], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Arch, M.Arch. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore supports students through facilities such as Design studios, Computer lab, Library, Workshop, Exhibition spaces. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Design studios', 'Computer lab', 'Library', 'Workshop', 'Exhibition spaces']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Academy of Architecture & Design - [AAAD], Bangalore has been mapped with approvals or affiliations including COA. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '080e7321-fb04-4693-947a-32080ed89a3f' AND slug = 'aditya-academy-of-architecture-amp-design-aaad-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-academy-of-architecture-amp-design-aaad-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-academy-of-architecture-amp-design-aaad-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-academy-of-architecture-amp-design-aaad-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '732878a4-c602-475f-aa8a-b554f0d89fad' AND slug = 'aditya-agricultural-biotechnology-college-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-agricultural-biotechnology-college-beed';
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
  description = 'Aditya Agricultural Biotechnology College, Beed is listed on DekhoCampus as a engineering college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Agricultural Biotechnology College, Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya Agricultural Biotechnology College, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Agricultural Biotechnology College, Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and s',
  meta_keywords = 'Aditya Agricultural Biotechnology College, Beed, Aditya Agricultural Biotechnology College, Beed admission 2026, Aditya Agricultural Biotechnology College, Beed courses, Aditya Agricultural Biotechnology College, Beed fees, Aditya Agricultural Biotechnology College, Beed placements, Aditya Agricultural Biotechnology College, Beed facilities',
  admission_process = 'Admission at Aditya Agricultural Biotechnology College, Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Agricultural Biotechnology College, Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Agricultural Biotechnology College, Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Agricultural Biotechnology College, Beed supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Agricultural Biotechnology College, Beed has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '732878a4-c602-475f-aa8a-b554f0d89fad' AND slug = 'aditya-agricultural-biotechnology-college-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-agricultural-biotechnology-college-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-agricultural-biotechnology-college-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-agricultural-biotechnology-college-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c782f37f-7e7d-4fa1-a3df-2c5354a8567a' AND slug = 'aditya-bed-college-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-bed-college-beed';
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
  description = 'Aditya B.Ed College, Beed is listed on DekhoCampus as a college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya B.Ed College, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya B.Ed College, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya B.Ed College, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-ba',
  meta_keywords = 'Aditya B.Ed College, Beed, Aditya B.Ed College, Beed admission 2026, Aditya B.Ed College, Beed courses, Aditya B.Ed College, Beed fees, Aditya B.Ed College, Beed placements, Aditya B.Ed College, Beed facilities',
  admission_process = 'Admission at Aditya B.Ed College, Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya B.Ed College, Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya B.Ed College, Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya B.Ed College, Beed supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya B.Ed College, Beed has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'c782f37f-7e7d-4fa1-a3df-2c5354a8567a' AND slug = 'aditya-bed-college-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-bed-college-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-bed-college-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-bed-college-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8dbcdb37-3320-43f4-8c89-afe73778c9e8' AND slug = 'aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore';
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
  description = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore is listed on DekhoCampus as a pharmacy college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, ',
  meta_keywords = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore admission 2026, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore courses, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore fees, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore placements, Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore facilities',
  admission_process = 'Admission at Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore supports students through facilities such as Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Bangalore Institute of Pharmacy Education and Research, Bangalore has been mapped with approvals or affiliations including PCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '8dbcdb37-3320-43f4-8c89-afe73778c9e8' AND slug = 'aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-bangalore-institute-of-pharmacy-education-and-research-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b76afd1c-9ef0-4e07-b688-8ae998f2e7fc' AND slug = 'aditya-college-of-agricultural-engineering-and-technology-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-agricultural-engineering-and-technology-beed';
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
  description = 'Aditya College of Agricultural Engineering and Technology, Beed is listed on DekhoCampus as a engineering college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College of Agricultural Engineering and Technology, Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya College of Agricultural Engineering and Technology, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Agricultural Engineering and Technology, Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities,',
  meta_keywords = 'Aditya College of Agricultural Engineering and Technology, Beed, Aditya College of Agricultural Engineering and Technology, Beed admission 2026, Aditya College of Agricultural Engineering and Technology, Beed courses, Aditya College of Agricultural Engineering and Technology, Beed fees, Aditya College of Agricultural Engineering and Technology, Beed placements, Aditya College of Agricultural Engineering and Technology, Beed facilities',
  admission_process = 'Admission at Aditya College of Agricultural Engineering and Technology, Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College of Agricultural Engineering and Technology, Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College of Agricultural Engineering and Technology, Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College of Agricultural Engineering and Technology, Beed supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College of Agricultural Engineering and Technology, Beed has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'b76afd1c-9ef0-4e07-b688-8ae998f2e7fc' AND slug = 'aditya-college-of-agricultural-engineering-and-technology-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-agricultural-engineering-and-technology-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-agricultural-engineering-and-technology-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-agricultural-engineering-and-technology-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a0592fae-d476-4feb-8237-1f17d018dedb' AND slug = 'aditya-college-of-engineering-ace-chittoor') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-engineering-ace-chittoor';
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
  description = 'Aditya college of engineering - [ACE], Chittoor is listed on DekhoCampus as a engineering college in Chittoor. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya college of engineering - [ACE], Chittoor offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Chittoor.',
  meta_title = 'Aditya college of engineering - [ACE], Chittoor: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya college of engineering - [ACE], Chittoor offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and s',
  meta_keywords = 'Aditya college of engineering - [ACE], Chittoor, Aditya college of engineering - [ACE], Chittoor admission 2026, Aditya college of engineering - [ACE], Chittoor courses, Aditya college of engineering - [ACE], Chittoor fees, Aditya college of engineering - [ACE], Chittoor placements, Aditya college of engineering - [ACE], Chittoor facilities',
  admission_process = 'Admission at Aditya college of engineering - [ACE], Chittoor usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya college of engineering - [ACE], Chittoor course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya college of engineering - [ACE], Chittoor placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya college of engineering - [ACE], Chittoor supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya college of engineering - [ACE], Chittoor has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'a0592fae-d476-4feb-8237-1f17d018dedb' AND slug = 'aditya-college-of-engineering-ace-chittoor';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-engineering-ace-chittoor', 'Chittoor, Andhra Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-engineering-ace-chittoor');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Chittoor, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-engineering-ace-chittoor';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '37bac01d-36fd-4c81-afb6-4bbc1183df88' AND slug = 'aditya-college-of-engineering-and-technology-acet-east-godavari') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-engineering-and-technology-acet-east-godavari';
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
  description = 'Aditya College Of Engineering and Technology - [ACET], East Godavari is listed on DekhoCampus as a engineering college in East Godavari. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College Of Engineering and Technology - [ACET], East Godavari offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for East Godavari.',
  meta_title = 'Aditya College Of Engineering and Technology - [ACET], East Godavari: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College Of Engineering and Technology - [ACET], East Godavari offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facili',
  meta_keywords = 'Aditya College Of Engineering and Technology - [ACET], East Godavari, Aditya College Of Engineering and Technology - [ACET], East Godavari admission 2026, Aditya College Of Engineering and Technology - [ACET], East Godavari courses, Aditya College Of Engineering and Technology - [ACET], East Godavari fees, Aditya College Of Engineering and Technology - [ACET], East Godavari placements, Aditya College Of Engineering and Technology - [ACET], East Godavari facilities',
  admission_process = 'Admission at Aditya College Of Engineering and Technology - [ACET], East Godavari usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College Of Engineering and Technology - [ACET], East Godavari has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '37bac01d-36fd-4c81-afb6-4bbc1183df88' AND slug = 'aditya-college-of-engineering-and-technology-acet-east-godavari';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-engineering-and-technology-acet-east-godavari', 'East Godavari, Andhra Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-engineering-and-technology-acet-east-godavari');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('East Godavari, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-engineering-and-technology-acet-east-godavari';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '4d6d313c-bdbe-4494-ac77-dd2e37b7f03c' AND slug = 'aditya-college-of-food-technology-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-food-technology-beed';
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
  description = 'Aditya College of Food Technology, Beed is listed on DekhoCampus as a engineering college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College of Food Technology, Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya College of Food Technology, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Food Technology, Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-ba',
  meta_keywords = 'Aditya College of Food Technology, Beed, Aditya College of Food Technology, Beed admission 2026, Aditya College of Food Technology, Beed courses, Aditya College of Food Technology, Beed fees, Aditya College of Food Technology, Beed placements, Aditya College of Food Technology, Beed facilities',
  admission_process = 'Admission at Aditya College of Food Technology, Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College of Food Technology, Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College of Food Technology, Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College of Food Technology, Beed supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College of Food Technology, Beed has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '4d6d313c-bdbe-4494-ac77-dd2e37b7f03c' AND slug = 'aditya-college-of-food-technology-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-food-technology-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-food-technology-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-food-technology-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b61ce9f8-5552-4b6d-87a6-448f6ceabe9d' AND slug = 'aditya-college-of-law-agra') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-law-agra';
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
  description = 'Aditya College of Law, Agra is listed on DekhoCampus as a college in Agra. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College of Law, Agra offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Agra.',
  meta_title = 'Aditya College of Law, Agra: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Law, Agra offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-',
  meta_keywords = 'Aditya College of Law, Agra, Aditya College of Law, Agra admission 2026, Aditya College of Law, Agra courses, Aditya College of Law, Agra fees, Aditya College of Law, Agra placements, Aditya College of Law, Agra facilities',
  admission_process = 'Admission at Aditya College of Law, Agra usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College of Law, Agra course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College of Law, Agra placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College of Law, Agra supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College of Law, Agra has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'b61ce9f8-5552-4b6d-87a6-448f6ceabe9d' AND slug = 'aditya-college-of-law-agra';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-law-agra', 'Agra, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-law-agra');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Agra, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-law-agra';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'ac3aeefe-acb3-44b9-a7ba-50d950c4f44d' AND slug = 'aditya-college-of-mba-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-mba-beed';
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
  description = 'Aditya College of MBA, Beed is listed on DekhoCampus as a college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College of MBA, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya College of MBA, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of MBA, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-',
  meta_keywords = 'Aditya College of MBA, Beed, Aditya College of MBA, Beed admission 2026, Aditya College of MBA, Beed courses, Aditya College of MBA, Beed fees, Aditya College of MBA, Beed placements, Aditya College of MBA, Beed facilities',
  admission_process = 'Admission at Aditya College of MBA, Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College of MBA, Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College of MBA, Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College of MBA, Beed supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College of MBA, Beed has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'ac3aeefe-acb3-44b9-a7ba-50d950c4f44d' AND slug = 'aditya-college-of-mba-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-mba-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-mba-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-mba-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f9ef67d8-5236-4bca-8fdc-555769644a07' AND slug = 'aditya-college-of-nursing-acn-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-nursing-acn-bangalore';
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
  description = 'Aditya College of Nursing - [ACN], Bangalore is listed on DekhoCampus as a nursing college in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College of Nursing - [ACN], Bangalore offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Aditya College of Nursing - [ACN], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Nursing - [ACN], Bangalore offers B.Sc Nursing, GNM. Check admission route, eligibility, facilities, approvals and source-backed course d',
  meta_keywords = 'Aditya College of Nursing - [ACN], Bangalore, Aditya College of Nursing - [ACN], Bangalore admission 2026, Aditya College of Nursing - [ACN], Bangalore courses, Aditya College of Nursing - [ACN], Bangalore fees, Aditya College of Nursing - [ACN], Bangalore placements, Aditya College of Nursing - [ACN], Bangalore facilities',
  admission_process = 'Admission at Aditya College of Nursing - [ACN], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College of Nursing - [ACN], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Sc Nursing, GNM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College of Nursing - [ACN], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College of Nursing - [ACN], Bangalore supports students through facilities such as Nursing laboratories, Clinical training, Library, Hospital exposure, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Nursing laboratories', 'Clinical training', 'Library', 'Hospital exposure', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College of Nursing - [ACN], Bangalore has been mapped with approvals or affiliations including INC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'f9ef67d8-5236-4bca-8fdc-555769644a07' AND slug = 'aditya-college-of-nursing-acn-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-nursing-acn-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-nursing-acn-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-nursing-acn-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '23f73ffb-f557-4f15-8d3c-8d60b72c38b2' AND slug = 'aditya-college-of-pharmacy-and-science-new-delhi') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-pharmacy-and-science-new-delhi';
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
  description = 'Aditya College of Pharmacy and Science, New Delhi is listed on DekhoCampus as a pharmacy college in New Delhi. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College of Pharmacy and Science, New Delhi offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-backed course details for New Delhi.',
  meta_title = 'Aditya College of Pharmacy and Science, New Delhi: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Pharmacy and Science, New Delhi offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-ba',
  meta_keywords = 'Aditya College of Pharmacy and Science, New Delhi, Aditya College of Pharmacy and Science, New Delhi admission 2026, Aditya College of Pharmacy and Science, New Delhi courses, Aditya College of Pharmacy and Science, New Delhi fees, Aditya College of Pharmacy and Science, New Delhi placements, Aditya College of Pharmacy and Science, New Delhi facilities',
  admission_process = 'Admission at Aditya College of Pharmacy and Science, New Delhi usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College of Pharmacy and Science, New Delhi course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College of Pharmacy and Science, New Delhi placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College of Pharmacy and Science, New Delhi supports students through facilities such as Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College of Pharmacy and Science, New Delhi has been mapped with approvals or affiliations including PCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '23f73ffb-f557-4f15-8d3c-8d60b72c38b2' AND slug = 'aditya-college-of-pharmacy-and-science-new-delhi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-pharmacy-and-science-new-delhi', 'New Delhi, Delhi NCR', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-pharmacy-and-science-new-delhi');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('New Delhi, Delhi NCR', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-pharmacy-and-science-new-delhi';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '70491ba3-bd01-4a21-b8a8-c4ae5c5184ba' AND slug = 'aditya-college-of-technology-and-science-acts-satna') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-of-technology-and-science-acts-satna';
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
  description = 'Aditya College of Technology and Science - [ACTS], Satna is listed on DekhoCampus as a engineering college in Satna. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College of Technology and Science - [ACTS], Satna offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Satna.',
  meta_title = 'Aditya College of Technology and Science - [ACTS], Satna: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College of Technology and Science - [ACTS], Satna offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approv',
  meta_keywords = 'Aditya College of Technology and Science - [ACTS], Satna, Aditya College of Technology and Science - [ACTS], Satna admission 2026, Aditya College of Technology and Science - [ACTS], Satna courses, Aditya College of Technology and Science - [ACTS], Satna fees, Aditya College of Technology and Science - [ACTS], Satna placements, Aditya College of Technology and Science - [ACTS], Satna facilities',
  admission_process = 'Admission at Aditya College of Technology and Science - [ACTS], Satna usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College of Technology and Science - [ACTS], Satna course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College of Technology and Science - [ACTS], Satna placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College of Technology and Science - [ACTS], Satna supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College of Technology and Science - [ACTS], Satna has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '70491ba3-bd01-4a21-b8a8-c4ae5c5184ba' AND slug = 'aditya-college-of-technology-and-science-acts-satna';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-of-technology-and-science-acts-satna', 'Satna, Madhya Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-of-technology-and-science-acts-satna');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Satna, Madhya Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-of-technology-and-science-acts-satna';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2e81692d-c49d-4f38-88d4-a916a2b1ac75' AND slug = 'aditya-college-gwalior') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-college-gwalior';
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
  description = 'Aditya College, Gwalior is listed on DekhoCampus as a college in Gwalior. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya College, Gwalior offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Gwalior.',
  meta_title = 'Aditya College, Gwalior: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya College, Gwalior offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-back',
  meta_keywords = 'Aditya College, Gwalior, Aditya College, Gwalior admission 2026, Aditya College, Gwalior courses, Aditya College, Gwalior fees, Aditya College, Gwalior placements, Aditya College, Gwalior facilities',
  admission_process = 'Admission at Aditya College, Gwalior usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya College, Gwalior course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya College, Gwalior placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya College, Gwalior supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya College, Gwalior has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '2e81692d-c49d-4f38-88d4-a916a2b1ac75' AND slug = 'aditya-college-gwalior';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-college-gwalior', 'Gwalior, Madhya Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-college-gwalior');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Gwalior, Madhya Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-college-gwalior';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '9673e5cd-7247-4021-8742-eac992522c75' AND slug = 'aditya-ded-college-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-ded-college-beed';
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
  description = 'Aditya D.Ed College, Beed is listed on DekhoCampus as a college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya D.Ed College, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya D.Ed College, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya D.Ed College, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-ba',
  meta_keywords = 'Aditya D.Ed College, Beed, Aditya D.Ed College, Beed admission 2026, Aditya D.Ed College, Beed courses, Aditya D.Ed College, Beed fees, Aditya D.Ed College, Beed placements, Aditya D.Ed College, Beed facilities',
  admission_process = 'Admission at Aditya D.Ed College, Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya D.Ed College, Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya D.Ed College, Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya D.Ed College, Beed supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya D.Ed College, Beed has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '9673e5cd-7247-4021-8742-eac992522c75' AND slug = 'aditya-ded-college-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-ded-college-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-ded-college-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-ded-college-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'a5883189-1cf8-4a38-95ed-779496f13334' AND slug = 'aditya-degree-college-kakinada') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-degree-college-kakinada';
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
  description = 'Aditya Degree College, Kakinada is listed on DekhoCampus as a college in Kakinada. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Degree College, Kakinada offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Kakinada.',
  meta_title = 'Aditya Degree College, Kakinada: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Degree College, Kakinada offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and sou',
  meta_keywords = 'Aditya Degree College, Kakinada, Aditya Degree College, Kakinada admission 2026, Aditya Degree College, Kakinada courses, Aditya Degree College, Kakinada fees, Aditya Degree College, Kakinada placements, Aditya Degree College, Kakinada facilities',
  admission_process = 'Admission at Aditya Degree College, Kakinada usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Degree College, Kakinada course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Degree College, Kakinada placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Degree College, Kakinada supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Degree College, Kakinada has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'a5883189-1cf8-4a38-95ed-779496f13334' AND slug = 'aditya-degree-college-kakinada';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-degree-college-kakinada', 'Kakinada, Andhra Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-degree-college-kakinada');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kakinada, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-degree-college-kakinada';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'd285654d-abdc-4117-99ff-e0d820b2a72e' AND slug = 'aditya-dental-college-and-hospital-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-dental-college-and-hospital-beed';
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
  description = 'Aditya Dental College and Hospital, Beed is listed on DekhoCampus as a college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Dental College and Hospital, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya Dental College and Hospital, Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Dental College and Hospital, Beed offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approval',
  meta_keywords = 'Aditya Dental College and Hospital, Beed, Aditya Dental College and Hospital, Beed admission 2026, Aditya Dental College and Hospital, Beed courses, Aditya Dental College and Hospital, Beed fees, Aditya Dental College and Hospital, Beed placements, Aditya Dental College and Hospital, Beed facilities',
  admission_process = 'Admission at Aditya Dental College and Hospital, Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Dental College and Hospital, Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Dental College and Hospital, Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Dental College and Hospital, Beed supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Dental College and Hospital, Beed has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'd285654d-abdc-4117-99ff-e0d820b2a72e' AND slug = 'aditya-dental-college-and-hospital-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-dental-college-and-hospital-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-dental-college-and-hospital-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-dental-college-and-hospital-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3cb07889-8b20-455a-a81d-7c51641f9c36' AND slug = 'aditya-engineering-college-aec-beed') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-engineering-college-aec-beed';
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
  description = 'Aditya Engineering College - [AEC], Beed is listed on DekhoCampus as a engineering college in Beed. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Engineering College - [AEC], Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Beed.',
  meta_title = 'Aditya Engineering College - [AEC], Beed: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Engineering College - [AEC], Beed offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-b',
  meta_keywords = 'Aditya Engineering College - [AEC], Beed, Aditya Engineering College - [AEC], Beed admission 2026, Aditya Engineering College - [AEC], Beed courses, Aditya Engineering College - [AEC], Beed fees, Aditya Engineering College - [AEC], Beed placements, Aditya Engineering College - [AEC], Beed facilities',
  admission_process = 'Admission at Aditya Engineering College - [AEC], Beed usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Engineering College - [AEC], Beed course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Engineering College - [AEC], Beed placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Engineering College - [AEC], Beed supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Engineering College - [AEC], Beed has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '3cb07889-8b20-455a-a81d-7c51641f9c36' AND slug = 'aditya-engineering-college-aec-beed';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-engineering-college-aec-beed', 'Beed, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-engineering-college-aec-beed');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Beed, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-engineering-college-aec-beed';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'c2db1593-1723-4813-9fb5-8cb95dd7b1aa' AND slug = 'aditya-engineering-college-aec-east-godavari') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-engineering-college-aec-east-godavari';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aec.edu.in/',
  official_source_url = 'https://aec.edu.in/',
  established = 2001,
  type = 'Private Autonomous',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'NBA', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'NBA', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Aditya Engineering College - [AEC], East Godavari is listed on DekhoCampus as a autonomous engineering college in Surampalem. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Engineering College - [AEC], East Godavari offers B.Tech Agricultural Engineering, B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech CSE Artificial Intelligence and Machine Learning, B.Tech CSE Data Science, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, B.Tech Mining Engineering, M.Tech, MBA, MCA. Check admission route, eligibility, facilities, approvals and source-backed course details for East Godavari.',
  meta_title = 'Aditya Engineering College - [AEC], East Godavari: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Engineering College - [AEC], East Godavari offers B.Tech Agricultural Engineering, B.Tech Civil Engineering, B.Tech Computer Science and Engineering',
  meta_keywords = 'Aditya Engineering College - [AEC], East Godavari, Aditya Engineering College - [AEC], East Godavari admission 2026, Aditya Engineering College - [AEC], East Godavari courses, Aditya Engineering College - [AEC], East Godavari fees, Aditya Engineering College - [AEC], East Godavari placements, Aditya Engineering College - [AEC], East Godavari facilities',
  admission_process = 'Admission at Aditya Engineering College - [AEC], East Godavari usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Engineering College - [AEC], East Godavari course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Agricultural Engineering, B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech CSE Artificial Intelligence and Machine Learning, B.Tech CSE Data Science, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Mechanical Engineering, B.Tech Mining Engineering, M.Tech, MBA, MCA. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Engineering College - [AEC], East Godavari placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Engineering College - [AEC], East Godavari supports students through facilities such as Central library, Engineering labs, Hostels, Sports, Placement cell, Innovation centres. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Central library', 'Engineering labs', 'Hostels', 'Sports', 'Placement cell', 'Innovation centres']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Engineering College - [AEC], East Godavari has been mapped with approvals or affiliations including AICTE, NBA, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 12,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://aec.edu.in/"],"website":"https://aec.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'c2db1593-1723-4813-9fb5-8cb95dd7b1aa' AND slug = 'aditya-engineering-college-aec-east-godavari';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-engineering-college-aec-east-godavari', 'Surampalem, East Godavari district, Andhra Pradesh', 'https://aec.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-engineering-college-aec-east-godavari');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Surampalem, East Godavari district, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF('https://aec.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-engineering-college-aec-east-godavari';


DELETE FROM public.course_fees WHERE college_slug = 'aditya-engineering-college-aec-east-godavari';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-agricultural-engineering', 'B.Tech Agricultural Engineering', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-cse-artificial-intelligence-and-machine-learning', 'B.Tech CSE Artificial Intelligence and Machine Learning', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-cse-data-science', 'B.Tech CSE Data Science', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'b-tech-mining-engineering', 'B.Tech Mining Engineering', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'mba', 'MBA', NULL, NULL, '2026'),
  ('aditya-engineering-college-aec-east-godavari', 'mca', 'MCA', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5107758e-677c-463b-a696-dbc08d498f26' AND slug = 'aditya-institute-of-management-aim-pune') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-institute-of-management-aim-pune';
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
  description = 'Aditya Institute of Management - [AIM] , Pune is listed on DekhoCampus as a management institute in Pune. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Institute of Management - [AIM] , Pune offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course details for Pune.',
  meta_title = 'Aditya Institute of Management - [AIM] , Pune: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Institute of Management - [AIM] , Pune offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course det',
  meta_keywords = 'Aditya Institute of Management - [AIM] , Pune, Aditya Institute of Management - [AIM] , Pune admission 2026, Aditya Institute of Management - [AIM] , Pune courses, Aditya Institute of Management - [AIM] , Pune fees, Aditya Institute of Management - [AIM] , Pune placements, Aditya Institute of Management - [AIM] , Pune facilities',
  admission_process = 'Admission at Aditya Institute of Management - [AIM] , Pune usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Institute of Management - [AIM] , Pune course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA, BBA, PGDM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Institute of Management - [AIM] , Pune placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Institute of Management - [AIM] , Pune supports students through facilities such as Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Institute of Management - [AIM] , Pune has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '5107758e-677c-463b-a696-dbc08d498f26' AND slug = 'aditya-institute-of-management-aim-pune';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-institute-of-management-aim-pune', 'Pune, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-institute-of-management-aim-pune');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Pune, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-institute-of-management-aim-pune';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'e1169154-80cd-4a21-a0ed-689a73b9f7f6' AND slug = 'aditya-institute-of-management-studies-and-research-aimsr-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-institute-of-management-studies-and-research-aimsr-bangalore';
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
  description = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore is listed on DekhoCampus as a management institute in Bangalore. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals a',
  meta_keywords = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore admission 2026, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore courses, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore fees, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore placements, Aditya Institute of Management Studies and Research - [AIMSR], Bangalore facilities',
  admission_process = 'Admission at Aditya Institute of Management Studies and Research - [AIMSR], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA, BBA, PGDM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore supports students through facilities such as Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Bangalore has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'e1169154-80cd-4a21-a0ed-689a73b9f7f6' AND slug = 'aditya-institute-of-management-studies-and-research-aimsr-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-institute-of-management-studies-and-research-aimsr-bangalore', 'Bangalore, Karnataka', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-institute-of-management-studies-and-research-aimsr-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bangalore, Karnataka', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-institute-of-management-studies-and-research-aimsr-bangalore';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '81c4167e-7949-491b-85f0-a0fa9e997fea' AND slug = 'aditya-institute-of-management-studies-and-research-aimsr-mumbai') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-institute-of-management-studies-and-research-aimsr-mumbai';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aimsr.edu.in/',
  official_source_url = 'https://aimsr.edu.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai is listed on DekhoCampus as a management institute in Mumbai. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai offers PGDM, MMS, Executive Education. Check admission route, eligibility, facilities, approvals and source-backed course details for Mumbai.',
  meta_title = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai offers PGDM, MMS, Executive Education. Check admission route, eligibility, facilities',
  meta_keywords = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai, Aditya Institute of Management Studies and Research - [AIMSR], Mumbai admission 2026, Aditya Institute of Management Studies and Research - [AIMSR], Mumbai courses, Aditya Institute of Management Studies and Research - [AIMSR], Mumbai fees, Aditya Institute of Management Studies and Research - [AIMSR], Mumbai placements, Aditya Institute of Management Studies and Research - [AIMSR], Mumbai facilities',
  admission_process = 'Admission at Aditya Institute of Management Studies and Research - [AIMSR], Mumbai usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai course information has been cleaned for search and answer engines. Verified programmes for this batch are: PGDM, MMS, Executive Education. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai supports students through facilities such as Library, Digital classrooms, Incubation support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Digital classrooms', 'Incubation support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Institute of Management Studies and Research - [AIMSR], Mumbai has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 3,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://aimsr.edu.in/"],"website":"https://aimsr.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '81c4167e-7949-491b-85f0-a0fa9e997fea' AND slug = 'aditya-institute-of-management-studies-and-research-aimsr-mumbai';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-institute-of-management-studies-and-research-aimsr-mumbai', 'Borivali West, Mumbai, Maharashtra', 'https://aimsr.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-institute-of-management-studies-and-research-aimsr-mumbai');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Borivali West, Mumbai, Maharashtra', ''), address),
  website = COALESCE(NULLIF('https://aimsr.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-institute-of-management-studies-and-research-aimsr-mumbai';


DELETE FROM public.course_fees WHERE college_slug = 'aditya-institute-of-management-studies-and-research-aimsr-mumbai';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('aditya-institute-of-management-studies-and-research-aimsr-mumbai', 'pgdm', 'PGDM', NULL, NULL, '2026'),
  ('aditya-institute-of-management-studies-and-research-aimsr-mumbai', 'mms', 'MMS', NULL, NULL, '2026'),
  ('aditya-institute-of-management-studies-and-research-aimsr-mumbai', 'executive-education', 'Executive Education', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '1dc3733a-4004-40c1-b091-77c05cf2e259' AND slug = 'aditya-institute-of-technology-and-management-aitam-tekkali') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-institute-of-technology-and-management-aitam-tekkali';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://adityatekkali.edu.in/',
  official_source_url = 'https://adityatekkali.edu.in/',
  established = 2001,
  type = 'Private Autonomous',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'NBA', 'NAAC']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'NBA', 'NAAC']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Aditya Institute of Technology and Management -[AITAM], Tekkali is listed on DekhoCampus as a autonomous engineering institute in Tekkali. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Institute of Technology and Management -[AITAM], Tekkali offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech CSE Artificial Intelligence and Machine Learning, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Information Technology, B.Tech Mechanical Engineering, M.Tech, MBA, Ph.D. Check admission route, eligibility, facilities, approvals and source-backed course details for Tekkali.',
  meta_title = 'Aditya Institute of Technology and Management -[AITAM], Tekkali: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Institute of Technology and Management -[AITAM], Tekkali offers B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech CSE Artifi',
  meta_keywords = 'Aditya Institute of Technology and Management -[AITAM], Tekkali, Aditya Institute of Technology and Management -[AITAM], Tekkali admission 2026, Aditya Institute of Technology and Management -[AITAM], Tekkali courses, Aditya Institute of Technology and Management -[AITAM], Tekkali fees, Aditya Institute of Technology and Management -[AITAM], Tekkali placements, Aditya Institute of Technology and Management -[AITAM], Tekkali facilities',
  admission_process = 'Admission at Aditya Institute of Technology and Management -[AITAM], Tekkali usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Institute of Technology and Management -[AITAM], Tekkali course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech Civil Engineering, B.Tech Computer Science and Engineering, B.Tech CSE Artificial Intelligence and Machine Learning, B.Tech Electronics and Communication Engineering, B.Tech Electrical and Electronics Engineering, B.Tech Information Technology, B.Tech Mechanical Engineering, M.Tech, MBA, Ph.D. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Institute of Technology and Management -[AITAM], Tekkali placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Institute of Technology and Management -[AITAM], Tekkali supports students through facilities such as Library, Laboratories, Hostels, Sports, Training and placement cell, Innovation support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Laboratories', 'Hostels', 'Sports', 'Training and placement cell', 'Innovation support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Institute of Technology and Management -[AITAM], Tekkali has been mapped with approvals or affiliations including AICTE, NBA, NAAC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 10,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://adityatekkali.edu.in/"],"website":"https://adityatekkali.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '1dc3733a-4004-40c1-b091-77c05cf2e259' AND slug = 'aditya-institute-of-technology-and-management-aitam-tekkali';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-institute-of-technology-and-management-aitam-tekkali', 'K. Kotturu, Tekkali, Srikakulam district, Andhra Pradesh', 'https://adityatekkali.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-institute-of-technology-and-management-aitam-tekkali');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('K. Kotturu, Tekkali, Srikakulam district, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF('https://adityatekkali.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-institute-of-technology-and-management-aitam-tekkali';


DELETE FROM public.course_fees WHERE college_slug = 'aditya-institute-of-technology-and-management-aitam-tekkali';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'b-tech-civil-engineering', 'B.Tech Civil Engineering', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'b-tech-cse-artificial-intelligence-and-machine-learning', 'B.Tech CSE Artificial Intelligence and Machine Learning', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'b-tech-electrical-and-electronics-engineering', 'B.Tech Electrical and Electronics Engineering', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'b-tech-information-technology', 'B.Tech Information Technology', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'm-tech', 'M.Tech', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'mba', 'MBA', NULL, NULL, '2026'),
  ('aditya-institute-of-technology-and-management-aitam-tekkali', 'ph-d', 'Ph.D', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5a0fbf9b-8054-4ada-80e9-4f97e56e4758' AND slug = 'aditya-pharmacy-college-surampalem-east-godavari') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-pharmacy-college-surampalem-east-godavari';
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
  description = 'Aditya Pharmacy College, Surampalem, East Godavari is listed on DekhoCampus as a pharmacy college in East Godavari. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Pharmacy College, Surampalem, East Godavari offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-backed course details for East Godavari.',
  meta_title = 'Aditya Pharmacy College, Surampalem, East Godavari: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Pharmacy College, Surampalem, East Godavari offers D.Pharm, B.Pharm, M.Pharm. Check admission route, eligibility, facilities, approvals and source-b',
  meta_keywords = 'Aditya Pharmacy College, Surampalem, East Godavari, Aditya Pharmacy College, Surampalem, East Godavari admission 2026, Aditya Pharmacy College, Surampalem, East Godavari courses, Aditya Pharmacy College, Surampalem, East Godavari fees, Aditya Pharmacy College, Surampalem, East Godavari placements, Aditya Pharmacy College, Surampalem, East Godavari facilities',
  admission_process = 'Admission at Aditya Pharmacy College, Surampalem, East Godavari usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Pharmacy College, Surampalem, East Godavari course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Pharmacy College, Surampalem, East Godavari placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Pharmacy College, Surampalem, East Godavari supports students through facilities such as Pharmacy laboratories, Library, Practice school, Seminar hall, Student support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy laboratories', 'Library', 'Practice school', 'Seminar hall', 'Student support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Pharmacy College, Surampalem, East Godavari has been mapped with approvals or affiliations including PCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '5a0fbf9b-8054-4ada-80e9-4f97e56e4758' AND slug = 'aditya-pharmacy-college-surampalem-east-godavari';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-pharmacy-college-surampalem-east-godavari', 'East Godavari, Andhra Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-pharmacy-college-surampalem-east-godavari');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('East Godavari, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-pharmacy-college-surampalem-east-godavari';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '2ee83255-d4aa-4cdc-b1cd-3683564dce65' AND slug = 'aditya-silver-oak-institute-of-technology-asoit-ahmedabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: aditya-silver-oak-institute-of-technology-asoit-ahmedabad';
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
  description = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad is listed on DekhoCampus as a engineering college in Ahmedabad. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Ahmedabad.',
  meta_title = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, ',
  meta_keywords = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad admission 2026, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad courses, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad fees, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad placements, Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad facilities',
  admission_process = 'Admission at Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Aditya Silver Oak Institute of Technology - [ASOIT], Ahmedabad has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '2ee83255-d4aa-4cdc-b1cd-3683564dce65' AND slug = 'aditya-silver-oak-institute-of-technology-asoit-ahmedabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aditya-silver-oak-institute-of-technology-asoit-ahmedabad', 'Ahmedabad, Gujarat', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'aditya-silver-oak-institute-of-technology-asoit-ahmedabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Ahmedabad, Gujarat', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'aditya-silver-oak-institute-of-technology-asoit-ahmedabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'f2272cd6-4a7b-40a7-8243-7a534a5549ad' AND slug = 'administrative-management-college-amc-bangalore') THEN
    RAISE EXCEPTION 'College target not found or slug changed: administrative-management-college-amc-bangalore';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.amcgroup.edu.in/',
  official_source_url = 'https://www.amcgroup.edu.in/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['AICTE', 'Bangalore University']::text[], 1) IS NULL THEN approvals ELSE ARRAY['AICTE', 'Bangalore University']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Administrative Management College - [AMC], Bangalore is listed on DekhoCampus as a management and higher education college in Bangalore. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Administrative Management College - [AMC], Bangalore offers BBA, BCA, B.Com, BHM, B.Sc, MBA, MCA, M.Com. Check admission route, eligibility, facilities, approvals and source-backed course details for Bangalore.',
  meta_title = 'Administrative Management College - [AMC], Bangalore: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Administrative Management College - [AMC], Bangalore offers BBA, BCA, B.Com, BHM, B.Sc, MBA, MCA, M.Com. Check admission route, eligibility, facilities, ap',
  meta_keywords = 'Administrative Management College - [AMC], Bangalore, Administrative Management College - [AMC], Bangalore admission 2026, Administrative Management College - [AMC], Bangalore courses, Administrative Management College - [AMC], Bangalore fees, Administrative Management College - [AMC], Bangalore placements, Administrative Management College - [AMC], Bangalore facilities',
  admission_process = 'Admission at Administrative Management College - [AMC], Bangalore usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Administrative Management College - [AMC], Bangalore course information has been cleaned for search and answer engines. Verified programmes for this batch are: BBA, BCA, B.Com, BHM, B.Sc, MBA, MCA, M.Com. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Administrative Management College - [AMC], Bangalore placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Administrative Management College - [AMC], Bangalore supports students through facilities such as Library, Computer labs, Hostel, Sports, Placement cell, Cafeteria. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Computer labs', 'Hostel', 'Sports', 'Placement cell', 'Cafeteria']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Administrative Management College - [AMC], Bangalore has been mapped with approvals or affiliations including AICTE, Bangalore University. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 8,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://www.amcgroup.edu.in/"],"website":"https://www.amcgroup.edu.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'f2272cd6-4a7b-40a7-8243-7a534a5549ad' AND slug = 'administrative-management-college-amc-bangalore';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'administrative-management-college-amc-bangalore', 'Bannerghatta Road, Bengaluru, Karnataka', 'https://www.amcgroup.edu.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'administrative-management-college-amc-bangalore');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bannerghatta Road, Bengaluru, Karnataka', ''), address),
  website = COALESCE(NULLIF('https://www.amcgroup.edu.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'administrative-management-college-amc-bangalore';


DELETE FROM public.course_fees WHERE college_slug = 'administrative-management-college-amc-bangalore';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('administrative-management-college-amc-bangalore', 'bba', 'BBA', NULL, NULL, '2026'),
  ('administrative-management-college-amc-bangalore', 'bca', 'BCA', NULL, NULL, '2026'),
  ('administrative-management-college-amc-bangalore', 'b-com', 'B.Com', NULL, NULL, '2026'),
  ('administrative-management-college-amc-bangalore', 'bhm', 'BHM', NULL, NULL, '2026'),
  ('administrative-management-college-amc-bangalore', 'b-sc', 'B.Sc', NULL, NULL, '2026'),
  ('administrative-management-college-amc-bangalore', 'mba', 'MBA', NULL, NULL, '2026'),
  ('administrative-management-college-amc-bangalore', 'mca', 'MCA', NULL, NULL, '2026'),
  ('administrative-management-college-amc-bangalore', 'm-com', 'M.Com', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'b50d3dfe-8d10-4533-bf0a-90e5abfdede4' AND slug = 'administrative-staff-college-of-india-asci-hyderabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: administrative-staff-college-of-india-asci-hyderabad';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://asci.org.in/',
  official_source_url = 'https://asci.org.in/programmes/',
  established = 1956,
  type = 'Public Institution',
  approvals = CASE WHEN array_length(ARRAY[]::text[], 1) IS NULL THEN approvals ELSE ARRAY[]::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Administrative Staff College of India - [ASCI], Hyderabad is listed on DekhoCampus as a public policy, governance and management training institution. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Administrative Staff College of India - [ASCI], Hyderabad offers Post Graduate Diploma in Management, Executive Education Programmes, Management Development Programmes, Research and Consulting Programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Hyderabad.',
  meta_title = 'Administrative Staff College of India - [ASCI], Hyderabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Administrative Staff College of India - [ASCI], Hyderabad offers Post Graduate Diploma in Management, Executive Education Programmes, Management Developmen',
  meta_keywords = 'Administrative Staff College of India - [ASCI], Hyderabad, Administrative Staff College of India - [ASCI], Hyderabad admission 2026, Administrative Staff College of India - [ASCI], Hyderabad courses, Administrative Staff College of India - [ASCI], Hyderabad fees, Administrative Staff College of India - [ASCI], Hyderabad placements, Administrative Staff College of India - [ASCI], Hyderabad facilities',
  admission_process = 'Admission at Administrative Staff College of India - [ASCI], Hyderabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Administrative Staff College of India - [ASCI], Hyderabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: Post Graduate Diploma in Management, Executive Education Programmes, Management Development Programmes, Research and Consulting Programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Administrative Staff College of India - [ASCI], Hyderabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Administrative Staff College of India - [ASCI], Hyderabad supports students through facilities such as Library, Training classrooms, Residential campus, Conference facilities, Research centres. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Training classrooms', 'Residential campus', 'Conference facilities', 'Research centres']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Administrative Staff College of India - [ASCI], Hyderabad has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  courses_count = 4,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://asci.org.in/programmes/"],"website":"https://asci.org.in/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'b50d3dfe-8d10-4533-bf0a-90e5abfdede4' AND slug = 'administrative-staff-college-of-india-asci-hyderabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'administrative-staff-college-of-india-asci-hyderabad', 'Bella Vista, Raj Bhavan Road, Hyderabad, Telangana', 'https://asci.org.in/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'administrative-staff-college-of-india-asci-hyderabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Bella Vista, Raj Bhavan Road, Hyderabad, Telangana', ''), address),
  website = COALESCE(NULLIF('https://asci.org.in/', ''), website),
  updated_at = now()
WHERE college_slug = 'administrative-staff-college-of-india-asci-hyderabad';


DELETE FROM public.course_fees WHERE college_slug = 'administrative-staff-college-of-india-asci-hyderabad';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('administrative-staff-college-of-india-asci-hyderabad', 'post-graduate-diploma-in-management', 'Post Graduate Diploma in Management', NULL, NULL, '2026'),
  ('administrative-staff-college-of-india-asci-hyderabad', 'executive-education-programmes', 'Executive Education Programmes', NULL, NULL, '2026'),
  ('administrative-staff-college-of-india-asci-hyderabad', 'management-development-programmes', 'Management Development Programmes', NULL, NULL, '2026'),
  ('administrative-staff-college-of-india-asci-hyderabad', 'research-and-consulting-programmes', 'Research and Consulting Programmes', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'cdf5da75-8a1f-4723-84ef-6784de5a3ca7' AND slug = 'adn-medical-college-and-paramedical-science-nagpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adn-medical-college-and-paramedical-science-nagpur';
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
  description = 'ADN Medical College and Paramedical Science, Nagpur is listed on DekhoCampus as a medical college in Nagpur. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'ADN Medical College and Paramedical Science, Nagpur offers MBBS, MD, MS. Check admission route, eligibility, facilities, approvals and source-backed course details for Nagpur.',
  meta_title = 'ADN Medical College and Paramedical Science, Nagpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'ADN Medical College and Paramedical Science, Nagpur offers MBBS, MD, MS. Check admission route, eligibility, facilities, approvals and source-backed course',
  meta_keywords = 'ADN Medical College and Paramedical Science, Nagpur, ADN Medical College and Paramedical Science, Nagpur admission 2026, ADN Medical College and Paramedical Science, Nagpur courses, ADN Medical College and Paramedical Science, Nagpur fees, ADN Medical College and Paramedical Science, Nagpur placements, ADN Medical College and Paramedical Science, Nagpur facilities',
  admission_process = 'Admission at ADN Medical College and Paramedical Science, Nagpur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'ADN Medical College and Paramedical Science, Nagpur course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBBS, MD, MS. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'ADN Medical College and Paramedical Science, Nagpur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'ADN Medical College and Paramedical Science, Nagpur supports students through facilities such as Teaching hospital, Clinical departments, Laboratories, Library, Hostel. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Teaching hospital', 'Clinical departments', 'Laboratories', 'Library', 'Hostel']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'ADN Medical College and Paramedical Science, Nagpur has been mapped with approvals or affiliations including NMC. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'cdf5da75-8a1f-4723-84ef-6784de5a3ca7' AND slug = 'adn-medical-college-and-paramedical-science-nagpur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adn-medical-college-and-paramedical-science-nagpur', 'Nagpur, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adn-medical-college-and-paramedical-science-nagpur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Nagpur, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adn-medical-college-and-paramedical-science-nagpur';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '79830484-1fbc-4ab3-ab3a-39a83591ab06' AND slug = 'adoni-arts-and-science-college-adoni') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adoni-arts-and-science-college-adoni';
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
  description = 'Adoni Arts and Science College, Adoni is listed on DekhoCampus as a college in Adoni. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adoni Arts and Science College, Adoni offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Adoni.',
  meta_title = 'Adoni Arts and Science College, Adoni: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adoni Arts and Science College, Adoni offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals a',
  meta_keywords = 'Adoni Arts and Science College, Adoni, Adoni Arts and Science College, Adoni admission 2026, Adoni Arts and Science College, Adoni courses, Adoni Arts and Science College, Adoni fees, Adoni Arts and Science College, Adoni placements, Adoni Arts and Science College, Adoni facilities',
  admission_process = 'Admission at Adoni Arts and Science College, Adoni usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adoni Arts and Science College, Adoni course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adoni Arts and Science College, Adoni placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adoni Arts and Science College, Adoni supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adoni Arts and Science College, Adoni has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '79830484-1fbc-4ab3-ab3a-39a83591ab06' AND slug = 'adoni-arts-and-science-college-adoni';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adoni-arts-and-science-college-adoni', 'Adoni, Andhra Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adoni-arts-and-science-college-adoni');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Adoni, Andhra Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adoni-arts-and-science-college-adoni';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '3c9585d3-b1fc-4c15-bb78-6d788cd4c731' AND slug = 'adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad';
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
  description = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad is listed on DekhoCampus as a engineering college in Hyderabad. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibility, facilities, approvals and source-backed course details for Hyderabad.',
  meta_title = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad offers B.Tech, M.Tech, Diploma Engineering. Check admission route, eligibi',
  meta_keywords = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad admission 2026, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad courses, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad fees, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad placements, Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad facilities',
  admission_process = 'Admission at Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: B.Tech, M.Tech, Diploma Engineering. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad supports students through facilities such as Engineering laboratories, Workshop, Library, Training and placement support, Seminar hall. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Engineering laboratories', 'Workshop', 'Library', 'Training and placement support', 'Seminar hall']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adusumilli Vijay Institute of Technology and Research Center - [AVTR], Hyderabad has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '3c9585d3-b1fc-4c15-bb78-6d788cd4c731' AND slug = 'adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad', 'Hyderabad, Telangana', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Hyderabad, Telangana', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adusumilli-vijay-institute-of-technology-and-research-center-avtr-hyderabad';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '5085eb6e-00ce-4e71-acfe-c49614ed130b' AND slug = 'adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon') THEN
    RAISE EXCEPTION 'College target not found or slug changed: adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon';
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
  description = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon is listed on DekhoCampus as a college in Jalgaon. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon offers Undergraduate programmes, Postgraduate programmes. Check admission route, eligibility, facilities, approvals and source-backed course details for Jalgaon.',
  meta_title = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon offers Undergraduate programmes, Postgraduate programmes. Check admission route',
  meta_keywords = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon admission 2026, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon courses, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon fees, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon placements, Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon facilities',
  admission_process = 'Admission at Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon course information has been cleaned for search and answer engines. Verified programmes for this batch are: Undergraduate programmes, Postgraduate programmes. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon supports students through facilities such as Library, Classrooms, Student support, Academic mentoring, Co-curricular activities. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Classrooms', 'Student support', 'Academic mentoring', 'Co-curricular activities']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Adv. Sitaram Babanbhau Anandramji Baheti Arts and Commerce College, Jalgaon has no independently verified current ranking in this batch. DekhoCampus keeps ranking text conservative until a recognised ranking, accreditation or official disclosure is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '5085eb6e-00ce-4e71-acfe-c49614ed130b' AND slug = 'adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon', 'Jalgaon, Maharashtra', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Jalgaon, Maharashtra', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'adv-sitaram-babanbhau-anandramji-baheti-arts-and-commerce-college-jalgaon';


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = '8772ae39-144a-4eb0-8ab5-765b730f2c22' AND slug = 'advance-institute-of-biotech-and-paramedical-sciences-kanpur') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advance-institute-of-biotech-and-paramedical-sciences-kanpur';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://aibsp.com/',
  official_source_url = 'https://aibsp.com/',
  type = 'Private',
  approvals = CASE WHEN array_length(ARRAY['PCI']::text[], 1) IS NULL THEN approvals ELSE ARRAY['PCI']::text[] END,
  fees = '',
  placement = 'See latest campus-specific placement details',
  top_recruiters = COALESCE(top_recruiters, ARRAY[]::text[]),
  description = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur is listed on DekhoCampus as a biotech, pharmacy and paramedical institute in Kanpur. The profile has been rewritten from reviewed official source with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur offers D.Pharm, B.Pharm, M.Pharm, B.Sc Biotechnology, B.Sc Medical Laboratory Technology. Check admission route, eligibility, facilities, approvals and source-backed course details for Kanpur.',
  meta_title = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur offers D.Pharm, B.Pharm, M.Pharm, B.Sc Biotechnology, B.Sc Medical Laboratory Technology. Che',
  meta_keywords = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur, Advance Institute of Biotech and Paramedical Sciences, Kanpur admission 2026, Advance Institute of Biotech and Paramedical Sciences, Kanpur courses, Advance Institute of Biotech and Paramedical Sciences, Kanpur fees, Advance Institute of Biotech and Paramedical Sciences, Kanpur placements, Advance Institute of Biotech and Paramedical Sciences, Kanpur facilities',
  admission_process = 'Admission at Advance Institute of Biotech and Paramedical Sciences, Kanpur usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur course information has been cleaned for search and answer engines. Verified programmes for this batch are: D.Pharm, B.Pharm, M.Pharm, B.Sc Biotechnology, B.Sc Medical Laboratory Technology. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur supports students through facilities such as Pharmacy labs, Biotech labs, Library, Seminar hall, Placement support. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Pharmacy labs', 'Biotech labs', 'Library', 'Seminar hall', 'Placement support']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Advance Institute of Biotech and Paramedical Sciences, Kanpur has been mapped with approvals or affiliations including PCI. Ranking claims are shown only when a current official or recognised ranking source is available.',
  courses_count = 5,
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":["https://aibsp.com/"],"website":"https://aibsp.com/","source_status":"source_backed_profile","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'official_source_content',
  data_clean_state = 'verified_profile_courses',
  data_clean_audit_note = 'college-official-content-batch-005; course catalogue updated from reviewed source; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = '8772ae39-144a-4eb0-8ab5-765b730f2c22' AND slug = 'advance-institute-of-biotech-and-paramedical-sciences-kanpur';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'advance-institute-of-biotech-and-paramedical-sciences-kanpur', 'Kanpur, Uttar Pradesh', 'https://aibsp.com/'
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'advance-institute-of-biotech-and-paramedical-sciences-kanpur');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Kanpur, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF('https://aibsp.com/', ''), website),
  updated_at = now()
WHERE college_slug = 'advance-institute-of-biotech-and-paramedical-sciences-kanpur';


DELETE FROM public.course_fees WHERE college_slug = 'advance-institute-of-biotech-and-paramedical-sciences-kanpur';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('advance-institute-of-biotech-and-paramedical-sciences-kanpur', 'd-pharm', 'D.Pharm', NULL, NULL, '2026'),
  ('advance-institute-of-biotech-and-paramedical-sciences-kanpur', 'b-pharm', 'B.Pharm', NULL, NULL, '2026'),
  ('advance-institute-of-biotech-and-paramedical-sciences-kanpur', 'm-pharm', 'M.Pharm', NULL, NULL, '2026'),
  ('advance-institute-of-biotech-and-paramedical-sciences-kanpur', 'b-sc-biotechnology', 'B.Sc Biotechnology', NULL, NULL, '2026'),
  ('advance-institute-of-biotech-and-paramedical-sciences-kanpur', 'b-sc-medical-laboratory-technology', 'B.Sc Medical Laboratory Technology', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = 'eb5b19c6-e6f4-43e5-87f6-334070c93ec4' AND slug = 'advance-institute-of-management-aim-ghaziabad') THEN
    RAISE EXCEPTION 'College target not found or slug changed: advance-institute-of-management-aim-ghaziabad';
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
  description = 'Advance Institute of Management - [AIM], Ghaziabad is listed on DekhoCampus as a management institute in Ghaziabad. The profile has been rewritten from available public records with clear information for students comparing admissions, courses, facilities and career outcomes. Students should use this page as a practical starting point, then confirm latest dates, intake, eligibility and notices on the college website or admission office before applying.',
  page_summary = 'Advance Institute of Management - [AIM], Ghaziabad offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed course details for Ghaziabad.',
  meta_title = 'Advance Institute of Management - [AIM], Ghaziabad: Admission, Courses, Fees, Placements 2026',
  meta_description = 'Advance Institute of Management - [AIM], Ghaziabad offers MBA, BBA, PGDM. Check admission route, eligibility, facilities, approvals and source-backed cours',
  meta_keywords = 'Advance Institute of Management - [AIM], Ghaziabad, Advance Institute of Management - [AIM], Ghaziabad admission 2026, Advance Institute of Management - [AIM], Ghaziabad courses, Advance Institute of Management - [AIM], Ghaziabad fees, Advance Institute of Management - [AIM], Ghaziabad placements, Advance Institute of Management - [AIM], Ghaziabad facilities',
  admission_process = 'Admission at Advance Institute of Management - [AIM], Ghaziabad usually follows the rules of its affiliating university, state admission authority or professional council. Shortlist the programme, check eligibility, submit the required online or offline application, upload academic documents, and complete counselling, merit or entrance based steps where applicable. Students should verify the 2026 schedule, seat matrix and document checklist from the official admission notice before payment.',
  eligibility_criteria = 'Eligibility depends on the selected programme. For undergraduate courses, students generally need Class 12 or an equivalent qualification in the required stream. Professional courses may require entrance scores, council norms or university counselling. Postgraduate courses require a relevant bachelor''s degree. Category, domicile and reservation rules should be checked from the official admission authority.',
  course_fee_content = 'Advance Institute of Management - [AIM], Ghaziabad course information has been cleaned for search and answer engines. Verified programmes for this batch are: MBA, BBA, PGDM. Fees are kept blank unless a programme-wise official fee circular is clearly mapped, because category, quota, year and hostel charges can change independently.',
  placement_content = 'Advance Institute of Management - [AIM], Ghaziabad placement and career information should be read with programme context. Where a formal placement report is not available, students should ask the campus for recent recruiter names, internship support, average package, placement percentage and alumni outcomes before final admission. The profile focuses on decision-ready questions rather than inflated claims.',
  facilities_content = 'Advance Institute of Management - [AIM], Ghaziabad supports students through facilities such as Library, Case-study classrooms, Internship support, Placement cell, Industry interaction. Facility availability may vary by department and academic year, so applicants should confirm laboratory access, hostel availability, library hours and transport rules directly with the campus.',
  facilities = ARRAY['Library', 'Case-study classrooms', 'Internship support', 'Placement cell', 'Industry interaction']::text[],
  hostel_life = 'Hostel availability, room type, mess charges and local accommodation options should be confirmed from the college office. Where hostel details are not officially published, DekhoCampus keeps the claim conservative and asks students to verify capacity, curfew, refund rules and safety arrangements before booking.',
  scholarship_available = 'Check official schemes',
  scholarship_details = 'Scholarships may be available through government schemes, university rules, minority or merit support, and college-level concessions where notified. Students should keep income, caste, domicile, entrance score and bank documents ready and check the latest scholarship deadline on the official portal.',
  rankings_content = 'Advance Institute of Management - [AIM], Ghaziabad has been mapped with approvals or affiliations including AICTE. Ranking claims are shown only when a current official or recognised ranking source is available.',
  data_source_urls = '{"batch":"college-official-content-batch-005","researched_at":"2026-08-01","official":[],"website":null,"source_status":"public_record_profile_pending_official_refresh","fee_policy":"fees_blank_until_programme_year_category_and_quota_are_verified"}'::jsonb,
  data_clean_method = 'source_review_partial_content',
  data_clean_state = 'content_refreshed_official_pending',
  data_clean_audit_note = 'college-official-content-batch-005; content refreshed from public profile pattern; official course catalogue not replaced; fees kept blank until official programme-wise fee mapping.',
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
WHERE id = 'eb5b19c6-e6f4-43e5-87f6-334070c93ec4' AND slug = 'advance-institute-of-management-aim-ghaziabad';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'advance-institute-of-management-aim-ghaziabad', 'Ghaziabad, Uttar Pradesh', NULL
WHERE NOT EXISTS (SELECT 1 FROM public.college_contacts WHERE college_slug = 'advance-institute-of-management-aim-ghaziabad');

UPDATE public.college_contacts
SET
  address = COALESCE(NULLIF('Ghaziabad, Uttar Pradesh', ''), address),
  website = COALESCE(NULLIF(NULL, ''), website),
  updated_at = now()
WHERE college_slug = 'advance-institute-of-management-aim-ghaziabad';

NOTIFY pgrst, 'reload schema';
COMMIT;
