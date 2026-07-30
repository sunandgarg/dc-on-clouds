-- Enrich the existing CPJ College profile and add the distinct CPJIMT campus.
-- Official sources are primary. Fee figures are explicitly marked as indicative
-- where the institute does not expose a public, programme-wise 2026 fee notice.
BEGIN;

DO $verify$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM public.colleges
    WHERE slug = 'chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi'
  ) THEN
    RAISE EXCEPTION 'Existing CPJ College profile was not found';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  name = 'Chanderprabhu Jain College of Higher Studies & School of Law, Delhi',
  short_name = 'CPJ College',
  city = 'Narela',
  state = 'Delhi',
  secondary_city = 'New Delhi',
  secondary_state = 'Delhi NCR',
  established = 2007,
  type = 'Private',
  category = 'Law',
  categories = ARRAY['Law', 'Management', 'Computer Applications', 'Commerce']::text[],
  description = 'Chanderprabhu Jain College of Higher Studies & School of Law, commonly called CPJ College, is a private higher-education institute in Narela, Delhi. Established in 2007 by the Rishi Aurobindo Educational Society, it is affiliated with Guru Gobind Singh Indraprastha University (GGSIPU). The college states that it is recognised under Section 2(f) of the UGC Act, while its law programmes follow the applicable Bar Council of India and university requirements.

The academic portfolio combines business, computing, commerce and law. Undergraduate options include BBA (General), BBA in Computer Aided Management, BCA, B.Com (Hons), BA LL.B (Hons) and BBA LL.B (Hons); LL.M is offered at postgraduate level. This makes the campus relevant to students comparing GGSIPU-affiliated colleges in North Delhi for management, computer applications and legal education.

Admission is programme-specific and governed by the current GGSIPU admission brochure. The college''s published brochure describes GGSIPU registration and the applicable CET, CUET or CLAT route for different programmes. Applicants should verify the 2026 counselling code, eligibility, reservation, entrance-test route and management-quota schedule before applying because university rules can change by admission cycle.

The Narela campus includes air-conditioned teaching spaces, computer laboratories, a central library, moot-court and legal-learning facilities, sports and cultural activities, transport support and a training and placement cell. Students should compare curriculum, commute, current fee notice, placement evidence and university affiliation before making an admission decision.',
  page_summary = 'CPJ College is a private GGSIPU-affiliated college in Narela, Delhi, offering BBA, BBA (CAM), BCA, B.Com (Hons), BA LL.B (Hons), BBA LL.B (Hons) and LL.M. It was established in 2007; admission routes and fees must be checked against the current GGSIPU and college notices.',
  approvals = ARRAY['UGC 2(f)', 'Bar Council of India']::text[],
  affiliation_kind = 'standalone',
  parent_university_slug = NULL,
  location = 'OCF, Sector A-8, Narela, Delhi 110040',
  fees = 'Indicative 2026 annual academic fees: BBA ₹1,37,925; BCA ₹1,36,125; B.Com (Hons) ₹1,33,125; BA LL.B (Hons), BBA LL.B (Hons) and LL.M ₹1,39,525. These are third-party published figures, not a substitute for the current GGSIPU/college fee notice; one-time, university, examination, hostel and transport charges may be additional.',
  course_fee_content = '<h2>CPJ College course fees 2026</h2><p>The following amounts are indicative annual academic fees reported by a recognised education portal for 2026. CPJ College and GGSIPU may revise tuition, university charges or one-time payments. Verify the payable amount in the current admission offer and official fee notice.</p><table><thead><tr><th>Programme</th><th>Duration</th><th>Indicative annual fee</th></tr></thead><tbody><tr><td>BBA / BBA (CAM)</td><td>3 years</td><td>₹1,37,925</td></tr><tr><td>BCA</td><td>3 years</td><td>₹1,36,125</td></tr><tr><td>B.Com (Hons)</td><td>3 years</td><td>₹1,33,125</td></tr><tr><td>BA LL.B (Hons)</td><td>5 years</td><td>₹1,39,525</td></tr><tr><td>BBA LL.B (Hons)</td><td>5 years</td><td>₹1,39,525</td></tr><tr><td>LL.M</td><td>Confirm current GGSIPU duration</td><td>₹1,39,525</td></tr></tbody></table><p><strong>Fee note:</strong> Hostel, transport, security deposit, examination and other university charges may not be included. Use the official college or GGSIPU notice before payment.</p>',
  admission_process = 'Register through the current GGSIPU admission portal and select the relevant programme/campus code. The official CPJ brochure describes CET or CUET routes for BBA, BCA and B.Com (Hons), CLAT-UG or CUET routes for the integrated law programmes, and CLAT-PG/GGSIPU registration for LL.M for the covered cycle. Counselling, document verification and fee payment follow GGSIPU rules. A management-quota route may be notified separately for eligible seats; applicants should use only the current official notice.',
  eligibility_criteria = 'For undergraduate management, computing and commerce programmes, applicants generally need Class 12 or an equivalent qualification with the subjects and minimum marks prescribed by GGSIPU. Integrated law applicants need Class 12 eligibility under the current university and BCI rules. LL.M applicants need a recognised LL.B or equivalent law degree and the minimum aggregate prescribed for the admission cycle. Category relaxations, subject requirements and entrance-test rules must be confirmed in the 2026 GGSIPU brochure.',
  admission_criteria_points = '["Choose the exact programme before checking eligibility and entrance route.","Complete GGSIPU registration within the current admission schedule.","Use the applicable CET, CUET, CLAT-UG or CLAT-PG route stated in the current university notice.","Participate in counselling and complete document verification.","Confirm tuition, university charges and refund rules before paying.","Use a separately published management-quota notice only when applicable."]'::jsonb,
  admission_deadline = NULL,
  cutoff = 'Cut-offs vary by programme, category, entrance route and counselling round. Check the current GGSIPU closing-rank or allotment notice; historic ranks should not be treated as a 2026 guarantee.',
  brochure_url = 'https://www.cpj.edu.in/wp-content/uploads/2024/02/CPJ-Information-Brochure-2024-25-VERSION2-WEB-VERSION-dt-16-02-2024.pdf',
  apply_url = 'https://www.cpj.edu.in/',
  facilities = ARRAY['Central library', 'Computer laboratories', 'Moot court', 'Air-conditioned classrooms', 'Sports facilities', 'Cultural activities', 'Transport support', 'Training and placement cell']::text[],
  facilities_content = 'The official college material describes a one-acre green campus with air-conditioned academic infrastructure, computer laboratories, a central library, moot-court and legal-learning facilities, sports and cultural activities, seminar and student-development spaces, transport support and the Genesis training and placement cell. Prospective students should confirm hostel availability, transport routes and programme-specific laboratory access for the 2026 session.',
  highlights = ARRAY['Established in 2007', 'Affiliated with GGSIPU', 'Recognised under UGC Act Section 2(f)', 'Business, computing, commerce and law programmes', 'Located in Narela, Delhi', 'Moot-court and computer-lab facilities']::text[],
  hostel_life = 'The college and education portals describe separate accommodation options and hostel support near the campus. Room type, capacity, mess inclusion, security, curfew, transport and the current monthly or annual charge should be confirmed directly before booking; hostel cost is not included in the course-fee table.',
  scholarship_available = 'Yes',
  scholarship_details = 'Scholarship or fee-support availability can depend on merit, category, family income, government schemes and the current college policy. Applicants should request the 2026 scholarship notice, eligibility documents, renewal conditions and whether support is adjusted against tuition before relying on an advertised amount.',
  placement = 'Training, internship and placement assistance through the college placement cell; outcomes vary by programme and graduating batch.',
  placement_content = 'CPJ College operates a training and placement function known as Genesis and describes corporate interaction, skill development, internships and placement activity. A placement-assistance service is not a placement guarantee. Students should ask for the latest programme-wise number of eligible students, participants, offers, median or average salary methodology and recruiter evidence instead of relying on a single highest-package claim.',
  ranking = '',
  rankings_content = 'No current NIRF institutional rank has been added to this profile. Awards or media-survey positions should be read with their year, category and methodology. Programme fit, GGSIPU affiliation, fees, commute, faculty, curriculum and verified outcomes are more useful comparison factors than an undated rank.',
  related_courses = ARRAY['bba', 'bba-computer-application', 'bca', 'b-com-honours', 'ba-llb', 'bba-llb', 'llm']::text[],
  courses_count = 7,
  related_exams = ARRAY['cuet', 'clat']::text[],
  meta_title = 'CPJ College Delhi: Courses, Fees & Admission 2026',
  meta_description = 'Explore CPJ College Narela courses, indicative 2026 fees, GGSIPU admission routes, eligibility, facilities and official brochure links.',
  meta_keywords = 'CPJ College, Chanderprabhu Jain College of Higher Studies, CPJ College Narela, CPJ College Delhi, CPJ College fees 2026, CPJ College courses, CPJ College admission 2026, CPJ College BBA, CPJ College BCA, CPJ College BCom, CPJ College BA LLB, CPJ College BBA LLB, CPJ College LLM, GGSIPU colleges in Delhi, law colleges in Narela',
  tags = ARRAY['CPJ College', 'Narela', 'Delhi', 'GGSIPU', 'BBA', 'BCA', 'BCom Hons', 'BA LLB', 'BBA LLB', 'LLM', 'Law college', 'Management college']::text[],
  official_website = 'https://www.cpj.edu.in/',
  official_source_url = 'https://www.cpj.edu.in/wp-content/uploads/2024/02/CPJ-Information-Brochure-2024-25-VERSION2-WEB-VERSION-dt-16-02-2024.pdf',
  data_source_urls = '{"official":["https://www.cpj.edu.in/","https://www.cpj.edu.in/wp-content/uploads/2024/02/CPJ-Information-Brochure-2024-25-VERSION2-WEB-VERSION-dt-16-02-2024.pdf"],"government":["https://cdnbbsr.s3waas.gov.in/s3ea119a40c1592979f51819b0bd38d39d/uploads/2025/04/2025043068.pdf"],"fee_reference":["https://www.collegedekho.com/colleges/cpj-college/courses-fees"],"researched_at":"2026-07-30","fee_policy":"indicative_until_current_official_notice_is_verified"}'::jsonb,
  data_clean_method = 'official_source_with_labelled_secondary_fee_reference',
  data_clean_state = 'verified_with_fee_caveat',
  data_clean_audit_note = 'Official programme, affiliation, location and facility enrichment completed. 2026 fee figures are clearly labelled as third-party indicative values pending a directly accessible official fee notice.',
  data_quality_score = 92,
  data_verified_at = '2026-07-30T21:30:00+05:30'::timestamptz,
  data_last_checked_at = '2026-07-30T21:30:00+05:30'::timestamptz,
  official_source_cleaned_at = '2026-07-30T21:30:00+05:30'::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = false,
  is_active = true,
  status = 'published',
  updated_at = now()
WHERE slug = 'chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi';

INSERT INTO public.colleges (
  name, slug, short_name, city, state, secondary_city, secondary_state,
  established, type, category, categories, description, page_summary,
  approvals, affiliation_kind, location, fees, course_fee_content,
  admission_process, eligibility_criteria, admission_criteria_points,
  cutoff, brochure_url, apply_url, facilities, facilities_content, highlights,
  hostel_life, scholarship_available, scholarship_details, placement,
  placement_content, ranking, rankings_content, related_courses, courses_count,
  related_exams, meta_title, meta_description, meta_keywords, tags, image, logo,
  official_website, official_source_url, data_source_urls, data_clean_method,
  data_clean_state, data_clean_audit_note, data_quality_score, data_verified_at,
  data_last_checked_at, official_source_cleaned_at, official_source_clean_pass_count,
  ai_clean_pass_count, official_courses_verified, official_fees_verified,
  requires_official_source_refresh, is_active, status, updated_at
)
VALUES (
  'CPJ Institute of Management & Technology, Delhi',
  'cpj-institute-of-management-and-technology-delhi',
  'CPJIMT',
  'Narela',
  'Delhi',
  'New Delhi',
  'Delhi NCR',
  2007,
  'Private',
  'Engineering',
  ARRAY['Engineering', 'Management', 'Computer Applications', 'Law']::text[],
  'CPJ Institute of Management & Technology (CPJIMT) is a private multidisciplinary college located at Rajiv Colony, Narela, Delhi. The institute presents regular degree programmes across technology, computer applications, management and law. It is a separate profile from CPJ College of Higher Studies & School of Law, although both belong to the wider CPJ Group of Institutions.

For technology and computing students, CPJIMT offers B.Tech in Computer Science and Engineering with Artificial Intelligence and Machine Learning, BCA and MCA. Management options include BBA and MBA, with the MBA page describing dual-specialisation choices in Marketing, Finance, Human Resource Management and Information Technology. Legal education includes BA LL.B, BBA LL.B, three-year LL.B and LL.M pathways.

The official 2026 site describes direct admission based on personal interaction, with programme-specific academic eligibility. Class 12 with at least 45% is stated for BBA and BCA; B.Tech requires PCM with at least 45%, while diploma holders may be considered for lateral entry. Law, MBA, MCA and LL.M applicants must satisfy the qualifying-degree requirements published for their programme. Candidates should obtain written confirmation of recognition, affiliation, intake, duration and fee before paying.

Campus resources described by CPJIMT include air-conditioned classrooms, advanced computer labs, a digital library, moot court, auditorium, cafeteria, Wi-Fi, sports facilities and CCTV security. The institute also describes transport across Delhi and Sonipat, hostel assistance, scholarships, professional certificate courses, internships and placement assistance. These services and outcomes can differ by programme and year, so applicants should verify the current academic and placement documents.',
  'CPJIMT is a private college in Narela, Delhi offering BBA, BCA, B.Tech CSE (AI & ML), BA LL.B, BBA LL.B, LL.B, MBA, MCA and LL.M. The official site states direct admission through personal interaction and publishes programme-specific eligibility for 2026.',
  ARRAY['Government-approved regular degree programmes', 'NAAC A+ stated by institute']::text[],
  'standalone',
  'Plot No. 25/20/1, Rajiv Colony, Narela, Delhi 110040',
  'Indicative 2026 fees from trusted education portals: B.Tech ₹1,56,000 per year; MBA ₹1,56,000 per year; BBA, BCA, BA LL.B and LL.B ₹1,46,000 per year; LL.M ₹1,36,000 per year. Other sources report different total tuition figures, so students must verify the official offer letter and current institute fee notice.',
  '<h2>CPJIMT course fees 2026</h2><p>CPJIMT does not expose a complete programme-wise fee table in the indexed official pages. The annual figures below come from a recognised education portal and are therefore <strong>indicative, not official quotations</strong>. Another trusted portal reports different total tuition values. Request the current fee sheet and refund policy from CPJIMT before paying.</p><table><thead><tr><th>Programme</th><th>Officially stated duration</th><th>Indicative annual fee</th></tr></thead><tbody><tr><td>B.Tech CSE (AI & ML)</td><td>4 years</td><td>₹1,56,000</td></tr><tr><td>MBA</td><td>2 years</td><td>₹1,56,000</td></tr><tr><td>BBA</td><td>4 years on official 2026 page</td><td>₹1,46,000</td></tr><tr><td>BCA</td><td>4 years on official 2026 page</td><td>₹1,46,000</td></tr><tr><td>BA LL.B</td><td>5 years</td><td>₹1,46,000</td></tr><tr><td>BBA LL.B</td><td>5 years</td><td>Confirm with institute</td></tr><tr><td>LL.B</td><td>3 years</td><td>₹1,46,000</td></tr><tr><td>MCA</td><td>2 years</td><td>Confirm with institute</td></tr><tr><td>LL.M</td><td>2 years on official 2026 page</td><td>₹1,36,000</td></tr></tbody></table><p>Application, admission, security, examination, hostel, transport and other charges may be additional. Programme duration and fee must match the written 2026 admission offer.</p>',
  'The official CPJIMT 2026 site states that admission is granted directly on the basis of personal interaction and that no entrance test is required. Applicants should choose a programme, complete the official application, submit qualifying-examination documents, attend the required interaction and confirm the written offer, recognition/affiliation and full fee schedule before payment. Lateral entry is stated for eligible three-year engineering diploma holders applying to B.Tech.',
  'BBA and BCA: Class 12 with at least 45%. B.Tech CSE (AI & ML): Class 12 with Physics, Chemistry and Mathematics and at least 45%; eligible three-year engineering diploma holders may seek lateral entry. BA LL.B and BBA LL.B: Class 12 with at least 45%. LL.B: graduation with at least 45%. MBA: recognised bachelor''s degree with at least 50%. MCA: BCA/B.Voc in IT or Software Development with at least 50%, or graduation with Mathematics at Class 12 or degree level, subject to current rules. LL.M: professional LL.B or equivalent with at least 50%.',
  '["Select the programme and review its 2026 eligibility on the official CPJIMT site.","Submit the official application and qualifying-examination documents.","Attend the personal interaction described by the institute.","For B.Tech lateral entry, provide the eligible three-year engineering diploma.","Obtain written confirmation of affiliation, approval, duration, total fee and refund rules.","Pay only through an authorised institute payment route after receiving the offer."]'::jsonb,
  'The official site describes direct, merit-based admission through personal interaction rather than an entrance-exam cut-off. Seat availability and programme-specific selection conditions can still apply.',
  'https://cpjimt.in/wp-content/uploads/2026/05/CPJIMT-BROCHURE-2026-1.pdf',
  'https://apply.cpjimt.in/',
  ARRAY['Air-conditioned classrooms', 'Advanced computer labs', 'Digital library', 'Moot court', 'Auditorium', 'Cafeteria', 'Wi-Fi campus', 'Sports facilities', 'CCTV security', 'Transport support']::text[],
  'The official CPJIMT site lists air-conditioned classrooms, advanced computer laboratories, a digital library, moot-court room, auditorium, cafeteria and coffee outlet, Wi-Fi, sports infrastructure and CCTV security. It also describes academic, corporate, court, Parliament, jail and Lok Adalat visits. Availability and access should be confirmed for the selected programme and academic session.',
  ARRAY['Admissions open for 2026', 'B.Tech CSE with AI & ML', 'Management, computing and law programmes', 'Direct admission through personal interaction stated by institute', 'Professional certificate courses', 'Located in Narela, Delhi']::text[],
  'CPJIMT states that hostel assistance is available and that its transport fleet covers routes in Delhi and Sonipat. Hostel ownership, room type, occupancy, mess, security, transport stop, refund terms and 2026 charges should be verified using the official hostel and transport notices before booking.',
  'Yes',
  'The official site states that scholarships may be available on merit, financial need or other criteria. Applicants should request the current scholarship matrix, qualifying score, supporting documents, deadline, renewal standard and whether the award reduces tuition or another fee component.',
  'Placement and internship assistance through the CPJ Industry Interface Cell; no individual outcome is guaranteed.',
  'CPJIMT describes placement preparation, internships, mock interviews and employer engagement through its Industry Interface Cell. The institute site also publishes placement claims, but students should ask for a programme-wise, graduating-batch report that distinguishes eligible students, participants, unique offers, internship offers and salary methodology. Placement assistance does not guarantee employment.',
  '',
  'The institute states NAAC A+ accreditation on its official website. No NIRF rank is asserted on this profile. Applicants should verify the accrediting entity, validity period and programme-level approvals from the current certificate or regulator before treating a promotional award as an academic ranking.',
  ARRAY['b-tech-artificial-intelligence', 'bca', 'bba', 'ba-llb', 'bba-llb', 'llb-honours', 'mba', 'mca', 'llm']::text[],
  9,
  ARRAY[]::text[],
  'CPJIMT Delhi: Courses, Fees & Admission 2026',
  'Check CPJIMT Narela courses, indicative 2026 fees, eligibility, direct admission process, facilities, brochure and official application links.',
  'CPJIMT, CPJ Institute of Management and Technology, Chanderprabhu Jain College of Information Technology, CPJIMT Delhi, CPJIMT Narela, CPJIMT fees 2026, CPJIMT admission 2026, CPJIMT courses, CPJIMT BTech AI ML, CPJIMT BBA, CPJIMT BCA, CPJIMT MBA, CPJIMT MCA, CPJIMT law, CPJIMT BA LLB, CPJIMT LLB, CPJIMT LLM, private colleges in Narela, colleges in North Delhi',
  ARRAY['CPJIMT', 'Narela', 'Delhi', 'BTech AI ML', 'BBA', 'BCA', 'MBA', 'MCA', 'BA LLB', 'BBA LLB', 'LLB', 'LLM', 'Private college']::text[],
  'https://cpjimt.in/wp-content/uploads/2026/06/WhatsApp-Image-2026-06-05-at-1.14.54-PM-2.webp',
  'https://cpjimt.in/wp-content/uploads/2026/06/WhatsApp-Image-2026-06-05-at-1.14.54-PM-2.webp',
  'https://cpjimt.in/',
  'https://cpjimt.in/',
  '{"official":["https://cpjimt.in/","https://cpjimt.in/wp-content/uploads/2026/05/CPJIMT-BROCHURE-2026-1.pdf","https://apply.cpjimt.in/"],"fee_references":["https://www.collegedekho.com/colleges/cpj-institute-of-management-and-technology-courses","https://www.shiksha.com/college/cpj-institute-of-management-and-technology-narela-delhi-213131/fees","https://collegedunia.com/college/64412-cpj-institute-of-management-and-technology-new-delhi/courses-fees"],"researched_at":"2026-07-30","fee_policy":"indicative_until_written_official_offer_is_verified"}'::jsonb,
  'official_source_with_labelled_secondary_fee_reference',
  'verified_with_fee_caveat',
  'Official 2026 programmes, eligibility, admission method, address and facilities verified. Fee figures are deliberately labelled indicative because trusted portals disagree and the complete official fee table is not indexed.',
  90,
  '2026-07-30T21:30:00+05:30'::timestamptz,
  '2026-07-30T21:30:00+05:30'::timestamptz,
  '2026-07-30T21:30:00+05:30'::timestamptz,
  1,
  1,
  true,
  false,
  false,
  true,
  'published',
  now()
)
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  city = EXCLUDED.city,
  state = EXCLUDED.state,
  secondary_city = EXCLUDED.secondary_city,
  secondary_state = EXCLUDED.secondary_state,
  established = EXCLUDED.established,
  type = EXCLUDED.type,
  category = EXCLUDED.category,
  categories = EXCLUDED.categories,
  description = EXCLUDED.description,
  page_summary = EXCLUDED.page_summary,
  approvals = EXCLUDED.approvals,
  affiliation_kind = EXCLUDED.affiliation_kind,
  location = EXCLUDED.location,
  fees = EXCLUDED.fees,
  course_fee_content = EXCLUDED.course_fee_content,
  admission_process = EXCLUDED.admission_process,
  eligibility_criteria = EXCLUDED.eligibility_criteria,
  admission_criteria_points = EXCLUDED.admission_criteria_points,
  cutoff = EXCLUDED.cutoff,
  brochure_url = EXCLUDED.brochure_url,
  apply_url = EXCLUDED.apply_url,
  facilities = EXCLUDED.facilities,
  facilities_content = EXCLUDED.facilities_content,
  highlights = EXCLUDED.highlights,
  hostel_life = EXCLUDED.hostel_life,
  scholarship_available = EXCLUDED.scholarship_available,
  scholarship_details = EXCLUDED.scholarship_details,
  placement = EXCLUDED.placement,
  placement_content = EXCLUDED.placement_content,
  ranking = EXCLUDED.ranking,
  rankings_content = EXCLUDED.rankings_content,
  related_courses = EXCLUDED.related_courses,
  courses_count = EXCLUDED.courses_count,
  related_exams = EXCLUDED.related_exams,
  meta_title = EXCLUDED.meta_title,
  meta_description = EXCLUDED.meta_description,
  meta_keywords = EXCLUDED.meta_keywords,
  tags = EXCLUDED.tags,
  image = EXCLUDED.image,
  logo = EXCLUDED.logo,
  official_website = EXCLUDED.official_website,
  official_source_url = EXCLUDED.official_source_url,
  data_source_urls = EXCLUDED.data_source_urls,
  data_clean_method = EXCLUDED.data_clean_method,
  data_clean_state = EXCLUDED.data_clean_state,
  data_clean_audit_note = EXCLUDED.data_clean_audit_note,
  data_quality_score = EXCLUDED.data_quality_score,
  data_verified_at = EXCLUDED.data_verified_at,
  data_last_checked_at = EXCLUDED.data_last_checked_at,
  official_source_cleaned_at = EXCLUDED.official_source_cleaned_at,
  official_source_clean_pass_count = COALESCE(public.colleges.official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(public.colleges.ai_clean_pass_count, 0) + 1,
  official_courses_verified = EXCLUDED.official_courses_verified,
  official_fees_verified = EXCLUDED.official_fees_verified,
  requires_official_source_refresh = EXCLUDED.requires_official_source_refresh,
  is_active = EXCLUDED.is_active,
  status = EXCLUDED.status,
  updated_at = now();

DELETE FROM public.course_fees
WHERE college_slug IN (
  'chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi',
  'cpj-institute-of-management-and-technology-delhi'
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ('chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi', 'bba', 'BBA (General)', 137925, 'Indicative annual fee', '2026'),
  ('chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi', 'bba-computer-application', 'BBA (Computer Aided Management)', 137925, 'Indicative annual fee', '2026'),
  ('chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi', 'bca', 'Bachelor of Computer Applications', 136125, 'Indicative annual fee', '2026'),
  ('chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi', 'b-com-honours', 'B.Com (Hons)', 133125, 'Indicative annual fee', '2026'),
  ('chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi', 'ba-llb', 'BA LL.B (Hons)', 139525, 'Indicative annual fee', '2026'),
  ('chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi', 'bba-llb', 'BBA LL.B (Hons)', 139525, 'Indicative annual fee', '2026'),
  ('chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi', 'llm', 'Master of Laws', 139525, 'Indicative annual fee', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'b-tech-artificial-intelligence', 'B.Tech CSE (Artificial Intelligence & Machine Learning)', 156000, 'Indicative annual fee', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'bca', 'Bachelor of Computer Applications', 146000, 'Indicative annual fee', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'bba', 'Bachelor of Business Administration', 146000, 'Indicative annual fee', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'ba-llb', 'BA LL.B', 146000, 'Indicative annual fee', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'bba-llb', 'BBA LL.B', NULL, 'Verify with institute', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'llb-honours', 'Bachelor of Laws', 146000, 'Indicative annual fee', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'mba', 'Master of Business Administration', 156000, 'Indicative annual fee', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'mca', 'Master of Computer Applications', NULL, 'Verify with institute', '2026'),
  ('cpj-institute-of-management-and-technology-delhi', 'llm', 'Master of Laws', 136000, 'Indicative annual fee', '2026');

UPDATE public.college_contacts
SET
  address = 'OCF, Sector A-8, Narela, Delhi 110040',
  website = 'https://www.cpj.edu.in/',
  updated_at = now()
WHERE college_slug = 'chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT
  'chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi',
  'OCF, Sector A-8, Narela, Delhi 110040',
  'https://www.cpj.edu.in/'
WHERE NOT EXISTS (
  SELECT 1 FROM public.college_contacts
  WHERE college_slug = 'chanderprabhu-jain-college-of-higher-studies-amp-school-of-law-new-delhi'
);

UPDATE public.college_contacts
SET
  address = 'Plot No. 25/20/1, Rajiv Colony, Narela, Delhi 110040',
  website = 'https://cpjimt.in/',
  updated_at = now()
WHERE college_slug = 'cpj-institute-of-management-and-technology-delhi';

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT
  'cpj-institute-of-management-and-technology-delhi',
  'Plot No. 25/20/1, Rajiv Colony, Narela, Delhi 110040',
  'https://cpjimt.in/'
WHERE NOT EXISTS (
  SELECT 1 FROM public.college_contacts
  WHERE college_slug = 'cpj-institute-of-management-and-technology-delhi'
);

COMMIT;
