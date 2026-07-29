-- Generated from data/college-official-enrichment/batch-001.json
-- Official-source enrichment is intentionally campus-specific.
-- Course fees remain NULL until an official programme/year/category amount is verified.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE slug = 'iit-delhi') THEN
    RAISE EXCEPTION 'College slug not found: iit-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://home.iitd.ac.in/',
  official_source_url = 'https://home.iitd.ac.in/',
  established = 1961,
  type = 'Government',
  approvals = ARRAY['Institute of National Importance']::text[],
  naac_grade = '',
  ranking = 'NIRF 2025: #2 Engineering, #4 Overall',
  fees = '',
  placement = 'See latest official placement report',
  top_recruiters = ARRAY[]::text[],
  description = 'IIT Delhi is a public technical and research institute in Hauz Khas, New Delhi. Its academic portfolio spans undergraduate engineering and design, postgraduate technology, science, management, public policy and research programmes. Students should choose a programme first and then follow its official admission route: JEE Advanced and JoSAA for most BTech admissions, UCEED for BDes, and the relevant national test or institute process for postgraduate and doctoral study.',
  page_summary = 'IIT Delhi offers BTech, BDes, MTech, MSc, MBA, MDes, public-policy and doctoral pathways from its Hauz Khas campus. This page separates verified programme and admission information from fees that still need a programme-specific official circular.',
  meta_title = 'IIT Delhi: Courses, Admission, Fees & Ranking 2026',
  meta_description = 'IIT Delhi offers BTech, BDes, MTech, MSc, MBA, MDes, public-policy and doctoral pathways from its Hauz Khas campus. This page separates verified programme ',
  meta_keywords = 'IIT Delhi, IIT Delhi admission 2026, IIT Delhi courses, IIT Delhi fees, IIT Delhi placement, IIT Delhi hostel, IIT Delhi ranking',
  admission_process = 'Undergraduate engineering admission is primarily through JEE Advanced followed by JoSAA counselling, while BDes admission uses UCEED. Postgraduate admission depends on the programme: GATE is used for many MTech routes, JAM for MSc, CAT for MBA, and institute shortlisting, tests or interviews may apply to research and other postgraduate programmes. Applicants must use the current IIT Delhi admission notice for the exact eligibility, category rules and reporting schedule.',
  eligibility_criteria = 'Eligibility is programme-specific. BTech applicants must satisfy the current JEE Advanced and JoSAA conditions; BDes applicants follow UCEED requirements. MTech, MSc, MBA, MDes, MS Research, MPP, MA and PhD applicants should check the official 2026–27 brochure or department notice because qualifying degrees, test scores, experience requirements and selection stages differ.',
  course_fee_content = 'Verified programme families are listed below. IIT Delhi publishes fees through academic circulars and programme prospectuses, and the payable amount can change by entry year, programme, category, income band and hostel choice. A fee is therefore left blank unless it is tied to the correct official circular and student category; applicants should use the current fee circular before making a payment decision.',
  placement_content = 'IIT Delhi runs institute and academic-unit career processes for eligible students, but outcomes differ by degree, discipline and graduating cohort. This page does not convert an isolated offer into an average package or promise a placement. Students comparing outcomes should use the institute''s latest placement or annual report and check the programme-level context behind every number.',
  facilities_content = 'The Hauz Khas campus combines teaching spaces, laboratories, libraries, student activity areas, sports facilities, health support and residential services. Facilities available to a student can depend on the academic unit and programme, so department pages and current campus notices remain the best source for specialised laboratories or access rules.',
  facilities = ARRAY['Central library', 'Laboratories', 'Hostels', 'Sports facilities', 'Health services', 'Student activity facilities']::text[],
  hostel_life = 'IIT Delhi operates halls of residence through its hostel-management system. Hostel allotment is governed by institute rules and availability; accepting a hostel seat is not compulsory. The official 2026–27 prospectus notes that some newer postgraduate hostels have different accommodation conditions and charges, so students should verify the current allotment and fee circular rather than relying on a single historic amount.',
  scholarship_available = 'Yes',
  scholarship_details = 'Financial support varies by programme and student category. IIT Delhi publishes institute assistantships, scholarships and fee-related rules through its academic and programme notices. Research applicants may also find assistantship or externally funded fellowship routes. Eligibility, continuation conditions and amounts must be checked in the current official notice.',
  rankings_content = 'In the Government of India''s NIRF 2025 results, IIT Delhi is ranked 2nd in Engineering and 4th Overall. Rankings describe performance under a published methodology; they should be considered alongside programme fit, curriculum, research opportunities, location and cost.',
  related_courses = ARRAY['btech', 'bdes', 'master-of-technology-mtech', 'msc', 'mba', 'phd', 'ma']::text[],
  courses_count = 7,
  data_source_urls = '{"official":["https://home.iitd.ac.in/","https://academics.iitd.ac.in/","https://academics.iitd.ac.in/undergraduate-academic-rules/","https://academics.iitd.ac.in/pg-admissions/","https://academics.iitd.ac.in/circulars/","https://home.iitd.ac.in/hall-of-residence.php","https://home.iitd.ac.in/uploads/PROSPECTUS%202026-27.pdf"],"ranking":["https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html"],"researched_at":"2026-07-29","batch":"college-official-001","fee_policy":"blank_until_programme_year_and_category_are_verified"}'::jsonb,
  data_clean_method = 'official_source',
  data_clean_state = 'verified',
  data_clean_audit_note = 'Official-source enrichment college-official-001; course families verified; fees intentionally blank pending programme-specific official circular mapping.',
  data_quality_score = 90,
  data_verified_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = false,
  updated_at = now()
WHERE slug = 'iit-delhi';

UPDATE public.college_contacts
SET address = 'Indian Institute of Technology Delhi, Hauz Khas, New Delhi 110016, India', website = 'https://home.iitd.ac.in/', updated_at = now()
WHERE college_slug = 'iit-delhi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'iit-delhi', 'Indian Institute of Technology Delhi, Hauz Khas, New Delhi 110016, India', 'https://home.iitd.ac.in/'
WHERE NOT EXISTS (
  SELECT 1 FROM public.college_contacts WHERE college_slug = 'iit-delhi'
);

DELETE FROM public.course_fees WHERE college_slug = 'iit-delhi';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('iit-delhi', 'btech', 'Bachelor of Technology', NULL, NULL, '2026'),
  ('iit-delhi', 'bdes', 'Bachelor of Design', NULL, NULL, '2026'),
  ('iit-delhi', 'master-of-technology-mtech', 'Master of Technology', NULL, NULL, '2026'),
  ('iit-delhi', 'msc', 'Master of Science', NULL, NULL, '2026'),
  ('iit-delhi', 'mba', 'Master of Business Administration', NULL, NULL, '2026'),
  ('iit-delhi', 'ma', 'Master of Arts', NULL, NULL, '2026'),
  ('iit-delhi', 'phd', 'Doctor of Philosophy', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE slug = 'iit-bombay') THEN
    RAISE EXCEPTION 'College slug not found: iit-bombay';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.iitb.ac.in/',
  official_source_url = 'https://www.iitb.ac.in/about-iit-bombay',
  established = 1958,
  type = 'Government',
  approvals = ARRAY['Institute of National Importance']::text[],
  naac_grade = '',
  ranking = 'NIRF 2025: #3 Engineering, #3 Overall',
  fees = '',
  placement = 'See latest official placement report',
  top_recruiters = ARRAY[]::text[],
  description = 'IIT Bombay is a public technical and research institute located at Powai in Mumbai. Its degree pathways include BTech, BS and BDes programmes, technology, science, design, management and public-policy master''s routes, and doctoral research across engineering, sciences, humanities and management. Admissions are programme-led, so the relevant official academic page—not a generic college form—should determine the test, eligibility and application process.',
  page_summary = 'IIT Bombay''s Powai campus offers undergraduate, master''s and doctoral programmes across engineering, science, design, management and public policy. Verified course families are shown without inventing a common fee for programmes that follow different official circulars.',
  meta_title = 'IIT Bombay: Courses, Admission, Fees & Ranking 2026',
  meta_description = 'IIT Bombay''s Powai campus offers undergraduate, master''s and doctoral programmes across engineering, science, design, management and public policy. Verifie',
  meta_keywords = 'IIT Bombay, IIT Bombay admission 2026, IIT Bombay courses, IIT Bombay fees, IIT Bombay placement, IIT Bombay hostel, IIT Bombay ranking',
  admission_process = 'BTech and BS admission generally follows JEE Advanced and JoSAA, while BDes uses UCEED. MTech applicants usually enter through GATE and the applicable counselling or institute process; MSc admissions use JAM, MDes uses CEED and MBA follows the management school''s published selection route. Research and other master''s programmes may add a written test or interview. Candidates must confirm the current route on IIT Bombay''s Academic Office page.',
  eligibility_criteria = 'Eligibility varies by degree and academic division. Applicants should match their qualifying examination, required subjects, national test score and category documents to the current official brochure. Meeting the minimum condition does not by itself guarantee admission where shortlisting, counselling, tests or interviews apply.',
  course_fee_content = 'IIT Bombay publishes academic and hostel fee circulars for new and continuing students. The amount depends on programme, entry batch, category and accommodation. Course rows are verified here, but fee cells remain blank until a value is mapped to the correct 2026–27 circular and student category.',
  placement_content = 'IIT Bombay has an institute Placement Cell serving multiple degree groups and an internship process. Placement participation, hiring roles and outcomes vary by programme and year. Students should consult the latest official placement report or Placement Cell material rather than treating a highest offer as a representative result. No recruiter has been added here without a current official source.',
  facilities_content = 'The Powai campus includes academic departments, research centres, library and computing resources, sports and cultural spaces, healthcare, dining and residential facilities. Specialised facilities belong to particular departments or centres, so prospective students should confirm access and curriculum relevance with the academic division.',
  facilities = ARRAY['Library', 'Research laboratories', 'Hostels', 'Sports facilities', 'Healthcare', 'Student activity facilities']::text[],
  hostel_life = 'IIT Bombay''s Student Affairs and hostel administration manage residential accommodation and student activities. Official information describes furnished rooms, common areas, councils, sports and cultural activity across the hostel system. Allotment, room type and charges are governed by the current entrant instructions and fee circular.',
  scholarship_available = 'Yes',
  scholarship_details = 'Institute and external financial assistance is available under published eligibility rules. The applicable support depends on programme, category, family income, academic standing and funding source. Students should use the current Academic Office or student-support notice for documents, deadlines and renewal conditions.',
  rankings_content = 'In NIRF 2025, IIT Bombay is ranked 3rd in Engineering and 3rd Overall. These are national category positions under the NIRF methodology, not a guarantee of outcomes for an individual programme or student.',
  related_courses = ARRAY['btech', 'bachelor-of-science-bsc', 'bdes', 'master-of-technology-mtech', 'msc', 'mba', 'ma', 'phd']::text[],
  courses_count = 8,
  data_source_urls = '{"official":["https://www.iitb.ac.in/about-iit-bombay","https://acad.iitb.ac.in/","https://acad.iitb.ac.in/admissions/bachelors","https://acad.iitb.ac.in/index.php/admissions/masters","https://acad.iitb.ac.in/admissions/fees-structure","https://www.iitb.ac.in/students/students-affair-office","https://campus.placements.iitb.ac.in/"],"ranking":["https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html"],"researched_at":"2026-07-29","batch":"college-official-001","fee_policy":"blank_until_programme_year_and_category_are_verified"}'::jsonb,
  data_clean_method = 'official_source',
  data_clean_state = 'verified',
  data_clean_audit_note = 'Official-source enrichment college-official-001; course families verified; fees intentionally blank pending programme-specific official circular mapping.',
  data_quality_score = 90,
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

UPDATE public.college_contacts
SET address = 'Indian Institute of Technology Bombay, Powai, Mumbai 400076, Maharashtra, India', website = 'https://www.iitb.ac.in/', updated_at = now()
WHERE college_slug = 'iit-bombay';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'iit-bombay', 'Indian Institute of Technology Bombay, Powai, Mumbai 400076, Maharashtra, India', 'https://www.iitb.ac.in/'
WHERE NOT EXISTS (
  SELECT 1 FROM public.college_contacts WHERE college_slug = 'iit-bombay'
);

DELETE FROM public.course_fees WHERE college_slug = 'iit-bombay';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('iit-bombay', 'btech', 'Bachelor of Technology', NULL, NULL, '2026'),
  ('iit-bombay', 'bachelor-of-science-bsc', 'Bachelor of Science', NULL, NULL, '2026'),
  ('iit-bombay', 'bdes', 'Bachelor of Design', NULL, NULL, '2026'),
  ('iit-bombay', 'master-of-technology-mtech', 'Master of Technology', NULL, NULL, '2026'),
  ('iit-bombay', 'msc', 'Master of Science', NULL, NULL, '2026'),
  ('iit-bombay', 'mba', 'Master of Business Administration', NULL, NULL, '2026'),
  ('iit-bombay', 'ma', 'Master of Arts and related research pathways', NULL, NULL, '2026'),
  ('iit-bombay', 'phd', 'Doctor of Philosophy', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE slug = 'iit-madras') THEN
    RAISE EXCEPTION 'College slug not found: iit-madras';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.iitm.ac.in/',
  official_source_url = 'https://www.iitm.ac.in/academics/academic-curricula',
  established = 1959,
  type = 'Government',
  approvals = ARRAY['Institute of National Importance']::text[],
  naac_grade = '',
  ranking = 'NIRF 2025: #1 Engineering, #1 Overall',
  fees = '',
  placement = 'See latest official placement report',
  top_recruiters = ARRAY[]::text[],
  description = 'IIT Madras is a public technical and research institute in Chennai with campus and approved non-campus academic pathways. Its portfolio includes BTech, BS, dual-degree, MTech, MSc, MA, MBA, MS by Research and PhD programmes, alongside selected diploma and interdisciplinary options. Because the institute offers several admission formats, applicants should identify the exact programme before comparing eligibility, delivery mode or fees.',
  page_summary = 'IIT Madras offers engineering, science, humanities, management and research pathways from Chennai, plus selected approved non-campus programmes. Programme families and current ranking context are verified; fees stay blank where the official amount depends on the route and term.',
  meta_title = 'IIT Madras: Courses, Admission, Fees & Ranking 2026',
  meta_description = 'IIT Madras offers engineering, science, humanities, management and research pathways from Chennai, plus selected approved non-campus programmes. Programme ',
  meta_keywords = 'IIT Madras, IIT Madras admission 2026, IIT Madras courses, IIT Madras fees, IIT Madras placement, IIT Madras hostel, IIT Madras ranking',
  admission_process = 'BTech and conventional dual-degree admission follows JEE Advanced and JoSAA. Postgraduate routes vary: GATE is used for many MTech admissions, JAM for MSc, CAT for MBA, and research programmes use the institute''s research admission portal with department evaluation. IIT Madras also runs separately administered BS and other non-campus programmes with their own application and qualifier rules.',
  eligibility_criteria = 'The required qualification, subjects and selection process depend on the programme and delivery mode. Applicants should use the current academic curriculum, admissions portal and programme page to verify eligibility. A campus BTech route and an online BS route are separate products and should not be treated as interchangeable.',
  course_fee_content = 'Verified degree families are shown below. IIT Madras fees differ across campus programmes, research categories and separately administered non-campus degrees. A fee is left blank unless the official source identifies the programme, entry period and applicable student category.',
  placement_content = 'Career outcomes at IIT Madras vary across campus degree, department and cohort. The institute''s official placement and annual reporting should be used for programme-level interpretation. This page avoids turning a single offer or an unverified recruiter list into a general placement claim.',
  facilities_content = 'The Chennai campus supports teaching, research, library and computing work alongside healthcare, transport, sport, student activities and residential services. Individual departments and centres maintain specialised laboratories; students should check the relevant academic unit for facilities tied to a chosen programme.',
  facilities = ARRAY['Library', 'Research laboratories', 'Hostels', 'Institute hospital', 'Sports facilities', 'Campus transport', 'Student activity facilities']::text[],
  hostel_life = 'IIT Madras describes itself as a residential institute and publishes hostel information through the Office of Hostel Management. Official campus information lists 20 hostels, room and LAN facilities, common spaces, sports and cultural activity. Allotment type, mess arrangements and charges should be checked in the current hostel circular.',
  scholarship_available = 'Yes',
  scholarship_details = 'IIT Madras publishes institute, government, alumni and externally supported scholarships. Eligibility can depend on income, category, programme, entrance rank and continuing academic performance. Applicants should verify current amounts and renewal conditions on the official scholarship page before budgeting.',
  rankings_content = 'IIT Madras is ranked 1st in both Engineering and Overall in NIRF 2025. The positions provide national context, while programme choice should still consider curriculum, admission route, mode, research interests and total cost.',
  related_courses = ARRAY['btech', 'bachelor-of-science-bsc', 'master-of-technology-mtech', 'msc', 'mba', 'ma', 'phd']::text[],
  courses_count = 7,
  data_source_urls = '{"official":["https://www.iitm.ac.in/academics/academic-curricula","https://www.iitm.ac.in/annual-reports","https://research.iitm.ac.in/","https://www.iitm.ac.in/campus-life/hostel-life","https://ccw.iitm.ac.in/?q=node%2F11","https://www.iitm.ac.in/academics/academic-services/scholarships-and-financial-assistance"],"ranking":["https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html"],"researched_at":"2026-07-29","batch":"college-official-001","fee_policy":"blank_until_programme_year_and_category_are_verified"}'::jsonb,
  data_clean_method = 'official_source',
  data_clean_state = 'verified',
  data_clean_audit_note = 'Official-source enrichment college-official-001; course families verified; fees intentionally blank pending programme-specific official circular mapping.',
  data_quality_score = 90,
  data_verified_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = false,
  updated_at = now()
WHERE slug = 'iit-madras';

UPDATE public.college_contacts
SET address = 'Indian Institute of Technology Madras, Chennai 600036, Tamil Nadu, India', website = 'https://www.iitm.ac.in/', updated_at = now()
WHERE college_slug = 'iit-madras';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'iit-madras', 'Indian Institute of Technology Madras, Chennai 600036, Tamil Nadu, India', 'https://www.iitm.ac.in/'
WHERE NOT EXISTS (
  SELECT 1 FROM public.college_contacts WHERE college_slug = 'iit-madras'
);

DELETE FROM public.course_fees WHERE college_slug = 'iit-madras';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('iit-madras', 'btech', 'Bachelor of Technology', NULL, NULL, '2026'),
  ('iit-madras', 'bachelor-of-science-bsc', 'Bachelor of Science and BS pathways', NULL, NULL, '2026'),
  ('iit-madras', 'master-of-technology-mtech', 'Master of Technology', NULL, NULL, '2026'),
  ('iit-madras', 'msc', 'Master of Science', NULL, NULL, '2026'),
  ('iit-madras', 'ma', 'Master of Arts', NULL, NULL, '2026'),
  ('iit-madras', 'mba', 'Master of Business Administration', NULL, NULL, '2026'),
  ('iit-madras', 'phd', 'Doctor of Philosophy and research pathways', NULL, NULL, '2026');


DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE slug = 'aiims-delhi') THEN
    RAISE EXCEPTION 'College slug not found: aiims-delhi';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = 'https://www.aiims.edu/',
  official_source_url = 'https://www.aiims.edu/index.php/en/academic_section_courses',
  established = 1956,
  type = 'Government',
  approvals = ARRAY['Autonomous institution established by an Act of Parliament']::text[],
  naac_grade = '',
  ranking = 'NIRF 2025: #1 Medical, #1 Dental, #8 Overall',
  fees = '',
  placement = 'Clinical, residency and research pathways',
  top_recruiters = ARRAY[]::text[],
  description = 'AIIMS New Delhi is an autonomous public medical institution established by an Act of Parliament in 1956. It combines medical and health-sciences education with clinical care and research. Official course groups include MBBS, nursing and allied-health undergraduate programmes, MSc and biotechnology study, MD, MS and MDS, super-specialty DM and MCh routes, fellowships and PhD programmes.',
  page_summary = 'AIIMS New Delhi offers undergraduate, postgraduate, super-specialty and doctoral health-sciences programmes at Ansari Nagar. Courses and national rankings are sourced from AIIMS and NIRF; academic fee rows remain blank unless a current programme prospectus supports the exact amount.',
  meta_title = 'AIIMS Delhi: Courses, Admission, Fees & Ranking 2026',
  meta_description = 'AIIMS New Delhi offers undergraduate, postgraduate, super-specialty and doctoral health-sciences programmes at Ansari Nagar. Courses and national rankings ',
  meta_keywords = 'AIIMS Delhi, AIIMS Delhi admission 2026, AIIMS Delhi courses, AIIMS Delhi fees, AIIMS Delhi placement, AIIMS Delhi hostel, AIIMS Delhi ranking',
  admission_process = 'Admission is programme-specific. MBBS admission follows the current national medical admission and counselling framework, while nursing, allied-health, postgraduate, super-specialty and doctoral routes follow the applicable AIIMS or national notice. Applicants should use the current prospectus and examination notice because dates, eligibility, seat rules and counselling authorities differ.',
  eligibility_criteria = 'Eligibility depends on the programme, qualifying degree, required subjects, internship or registration status, and the applicable entrance or counselling process. Candidates should read the current AIIMS prospectus and official examination notice for their course rather than applying an MBBS rule to postgraduate, nursing or allied-health admission.',
  course_fee_content = 'AIIMS publishes programme and hostel charges through prospectuses, academic rules and hostel notices. The course list below is verified at programme-family level. Academic fee cells are blank until the amount is tied to the current prospectus, course and applicant category; hostel charges are not presented as tuition.',
  placement_content = 'Medical education at AIIMS New Delhi leads into internships, residency, clinical, research, public-health and academic pathways rather than a single conventional campus-placement model. Career progression depends on the qualification, registration requirements and competitive recruitment or residency process. No corporate recruiter list or package claim is shown without an official source.',
  facilities_content = 'AIIMS New Delhi integrates teaching departments, hospitals and specialty centres with laboratories, library resources, skills and academic facilities, hostels and student support. Clinical exposure and facility access depend on the programme and department, so applicants should consult the official course and department material.',
  facilities = ARRAY['Teaching hospitals', 'Specialty centres', 'Laboratories', 'Library', 'Hostels', 'Skills and academic facilities']::text[],
  hostel_life = 'AIIMS provides hostel accommodation for eligible undergraduate, postgraduate, resident and research categories under published allotment rules. Room facilities and entitlement vary, and accommodation may be subject to availability. The hostel page lists separate hostel charges; boarding and other actual expenses are additional.',
  scholarship_available = 'Yes',
  scholarship_details = 'Financial assistance can arise from government schemes, category-based support, fellowships, stipends or programme-specific rules. Availability is not uniform across courses. Students should verify the current prospectus and scholarship or fellowship notice for eligibility, documentation and payment terms.',
  rankings_content = 'In NIRF 2025, AIIMS New Delhi is ranked 1st in Medical, 1st in Dental and 8th Overall. Category ranks reflect NIRF''s published methodology and do not replace programme eligibility, clinical-training details or current admission rules.',
  related_courses = ARRAY['mbbs', 'bsc-nursing', 'msc-nursing', 'doctor-of-medicine-md', 'master-of-surgery-ms', 'master-of-dental-surgery-mds', 'dm-cardiology', 'mch-master-of-chirurgiae', 'phd']::text[],
  courses_count = 9,
  data_source_urls = '{"official":["https://www.aiims.edu/index.php/en/academic_section_courses","https://www.aiims.edu/index.php/en/hostel_accomodation_hos_official/fees","https://www.aiims.edu/index.php/en/hostel_accomodation_faqs","https://www.aiims.edu/aiims/academic/Academic%20Rules%20n%20Procedures-8-3-22.pdf"],"ranking":["https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","https://www.nirfindia.org/Rankings/2025/DentalRanking.html","https://www.nirfindia.org/Rankings/2025/OverallRanking.html"],"researched_at":"2026-07-29","batch":"college-official-001","fee_policy":"blank_until_programme_year_and_category_are_verified"}'::jsonb,
  data_clean_method = 'official_source',
  data_clean_state = 'verified',
  data_clean_audit_note = 'Official-source enrichment college-official-001; course families verified; fees intentionally blank pending programme-specific official circular mapping.',
  data_quality_score = 90,
  data_verified_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  data_last_checked_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-07-29T00:00:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = false,
  updated_at = now()
WHERE slug = 'aiims-delhi';

UPDATE public.college_contacts
SET address = 'All India Institute of Medical Sciences, Ansari Nagar, New Delhi 110029, India', website = 'https://www.aiims.edu/', updated_at = now()
WHERE college_slug = 'aiims-delhi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT 'aiims-delhi', 'All India Institute of Medical Sciences, Ansari Nagar, New Delhi 110029, India', 'https://www.aiims.edu/'
WHERE NOT EXISTS (
  SELECT 1 FROM public.college_contacts WHERE college_slug = 'aiims-delhi'
);

DELETE FROM public.course_fees WHERE college_slug = 'aiims-delhi';

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('aiims-delhi', 'mbbs', 'Bachelor of Medicine and Bachelor of Surgery', NULL, NULL, '2026'),
  ('aiims-delhi', 'bsc-nursing', 'BSc Nursing and related undergraduate nursing routes', NULL, NULL, '2026'),
  ('aiims-delhi', 'msc-nursing', 'MSc Nursing', NULL, NULL, '2026'),
  ('aiims-delhi', 'doctor-of-medicine-md', 'Doctor of Medicine', NULL, NULL, '2026'),
  ('aiims-delhi', 'master-of-surgery-ms', 'Master of Surgery', NULL, NULL, '2026'),
  ('aiims-delhi', 'master-of-dental-surgery-mds', 'Master of Dental Surgery', NULL, NULL, '2026'),
  ('aiims-delhi', 'dm-cardiology', 'DM super-specialty programmes', NULL, NULL, '2026'),
  ('aiims-delhi', 'mch-master-of-chirurgiae', 'MCh super-specialty programmes', NULL, NULL, '2026'),
  ('aiims-delhi', 'phd', 'Doctor of Philosophy', NULL, NULL, '2026');

NOTIFY pgrst, 'reload schema';
COMMIT;
