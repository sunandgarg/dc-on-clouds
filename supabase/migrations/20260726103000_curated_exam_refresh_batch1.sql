-- Curated, source-backed refresh for the first exam batch.
-- This pass focuses on records with strong official 2026 signals that can be
-- safely improved without waiting for the admin cleaner workflow.

UPDATE public.exams
SET
  short_name = 'JEE Advanced',
  full_name = 'Joint Entrance Examination (Advanced) 2026',
  website = 'https://jeeadv.ac.in/',
  official_website = 'https://jeeadv.ac.in/',
  registration_url = 'https://jeeadv.nic.in',
  application_start_date = '23 April 2026, 10:00 IST',
  application_end_date = '2 May 2026, 23:59 IST',
  exam_date = '17 May 2026',
  result_date = '1 June 2026',
  status = 'Result Declared',
  description = 'JEE Advanced 2026 was the national entrance exam for IIT admissions, conducted after JEE Main qualification. It remained the decisive route for candidates targeting BTech, BS and dual-degree seats across the IIT system.',
  page_summary = 'JEE Advanced 2026 covered IIT admission dates, registration, exam day, result updates and AAT follow-up steps for architecture aspirants.',
  summary_content = '<p>JEE Advanced 2026 was the second-stage IIT entrance exam for students who qualified through JEE Main. The official portal confirmed the registration window, admit card access, exam schedule, result announcement and AAT follow-up timeline for eligible candidates.</p><p>For students reviewing the 2026 cycle, the most reliable checkpoints are the official JEE Advanced website, candidate portal and JoSAA counselling flow.</p>',
  application_process = '<p>Eligible candidates first qualified through JEE Main 2026 and then completed online registration on the official JEE Advanced portal. Registration was considered complete only after fee payment within the notified deadline.</p><p>After registration, candidates used the candidate portal to download the admit card and later access result and AAT-related updates.</p>',
  dates_content = '<ul><li>Registration opened on 23 April 2026 at 10:00 IST.</li><li>Registration closed on 2 May 2026 at 23:59 IST.</li><li>Fee payment for registered candidates was allowed until 4 May 2026 at 23:59 IST.</li><li>The exam was held on Sunday, 17 May 2026.</li><li>AAT registration ran from 1 June 2026, 10:00 IST to 2 June 2026, 17:00 IST.</li><li>AAT was held on 4 June 2026 from 9:00 AM to 12:00 noon.</li></ul>',
  result_content = '<p>JEE Advanced 2026 results were released on 1 June 2026 through the official result portal. Students who qualified for architecture-based counselling could proceed to the AAT registration window and then continue through JoSAA where applicable.</p>',
  meta_title = 'JEE Advanced 2026 - Official Dates, Result, Registration and AAT',
  meta_description = 'Check JEE Advanced 2026 official dates, registration window, exam date, result update, AAT timeline and IIT admission next steps on DekhoCampus.',
  meta_keywords = 'JEE Advanced 2026, JEE Advanced result 2026, JEE Advanced exam date, JEE Advanced registration, AAT 2026, IIT admission',
  important_dates = jsonb_build_array(
    jsonb_build_object('event','Registration Start','date','23 April 2026, 10:00 IST'),
    jsonb_build_object('event','Registration End','date','2 May 2026, 23:59 IST'),
    jsonb_build_object('event','Fee Payment Deadline','date','4 May 2026, 23:59 IST'),
    jsonb_build_object('event','Exam Date','date','17 May 2026'),
    jsonb_build_object('event','Result Date','date','1 June 2026'),
    jsonb_build_object('event','AAT Registration','date','1 June 2026, 10:00 IST to 2 June 2026, 17:00 IST'),
    jsonb_build_object('event','AAT Exam','date','4 June 2026, 9:00 AM to 12:00 noon')
  ),
  data_source_urls = jsonb_build_array(
    'https://jeeadv.ac.in/',
    'https://jeeadv.nic.in',
    'https://cportal.jeeadv.ac.in/',
    'https://josaa.admissions.nic.in/applicant/root/candidatelogin.aspx'
  ),
  updated_at = now()
WHERE slug = 'jee-advanced-2026';

UPDATE public.exams
SET
  short_name = 'UCEED',
  full_name = 'Undergraduate Common Entrance Examination for Design 2026',
  website = 'https://www.uceed.iitb.ac.in/2026/',
  official_website = 'https://www.uceed.iitb.ac.in/2026/',
  registration_url = 'https://uceedapp.iitb.ac.in/UCEED/home.jsp',
  application_start_date = '1 October 2025, 5:00 PM',
  application_end_date = '31 October 2025',
  exam_date = '18 January 2026',
  result_date = '5 March 2026',
  status = 'Result Declared',
  eligibility = 'Candidates who passed Class 12 or equivalent in 2025, or were appearing in 2026, from any stream could appear for UCEED 2026, subject to the conditions listed in the official brochure.',
  description = 'UCEED 2026 was the undergraduate design entrance exam used for BDes admissions at participating IITs and IIITDM Jabalpur. The 2026 cycle was managed by IIT Bombay through its official brochure, candidate portal and result workflow.',
  page_summary = 'UCEED 2026 covered registration, exam date, admit card access, answer-key milestones, results and BDes admission follow-up for design aspirants.',
  summary_content = '<p>UCEED 2026 served students aiming for Bachelor of Design admissions through leading participating institutes including IIT Bombay, IIT Delhi, IIT Guwahati, IIT Hyderabad, IIT Indore, IIT Roorkee and IIITDM Jabalpur.</p><p>The official website clearly documented the registration windows, admit card release, exam date, answer-key cycle and result timeline, making it the primary source for any 2026 verification.</p>',
  application_process = '<p>Students completed UCEED 2026 registration online through the official candidate portal. The initial regular-fee window ran through 31 October 2025 and was later extended through 5 November 2025, with a late-fee window until 10 November 2025, 5:00 PM.</p><p>Once registered, candidates downloaded admit cards from the portal and used the same ecosystem for answer-key comments, result viewing and score-card access.</p>',
  dates_content = '<ul><li>Information brochure and registration launch: 1 October 2025.</li><li>Regular-fee registration deadline: 31 October 2025.</li><li>Extended regular-fee deadline: 5 November 2025.</li><li>Late-fee deadline: 10 November 2025, 5:00 PM.</li><li>Admit card download started on 2 January 2026.</li><li>UCEED 2026 was held on Sunday, 18 January 2026.</li><li>Draft answer key was released on 19 January 2026 and comments were accepted until 22 January 2026, 5:00 PM.</li><li>Results were announced on 5 March 2026, and score cards were available from 10 March to 11 June 2026.</li></ul>',
  result_content = '<p>UCEED 2026 results were released through the official candidate portal on 5 March 2026. Score cards became downloadable from 10 March 2026 and remained available until 11 June 2026.</p>',
  meta_title = 'UCEED 2026 - Official Dates, Result, Admit Card and Registration',
  meta_description = 'Check UCEED 2026 official registration dates, exam date, admit card timeline, answer-key updates, result release and design admission guidance on DekhoCampus.',
  meta_keywords = 'UCEED 2026, UCEED result 2026, UCEED exam date, UCEED admit card, UCEED registration, design entrance exam 2026',
  important_dates = jsonb_build_array(
    jsonb_build_object('event','Registration Launch','date','1 October 2025'),
    jsonb_build_object('event','Regular Fee Deadline','date','31 October 2025'),
    jsonb_build_object('event','Extended Regular Fee Deadline','date','5 November 2025'),
    jsonb_build_object('event','Late Fee Deadline','date','10 November 2025, 5:00 PM'),
    jsonb_build_object('event','Admit Card Release','date','2 January 2026'),
    jsonb_build_object('event','Exam Date','date','18 January 2026'),
    jsonb_build_object('event','Draft Answer Key','date','19 January 2026'),
    jsonb_build_object('event','Answer Key Comment Deadline','date','22 January 2026, 5:00 PM'),
    jsonb_build_object('event','Result Date','date','5 March 2026'),
    jsonb_build_object('event','Score Card Window','date','10 March 2026 to 11 June 2026')
  ),
  data_source_urls = jsonb_build_array(
    'https://www.uceed.iitb.ac.in/2026/',
    'https://www.uceed.iitb.ac.in/2026/assets/downloads/docs/UCEED2026_Information_Brochure.pdf',
    'https://uceedapp.iitb.ac.in/UCEED/home.jsp'
  ),
  updated_at = now()
WHERE slug = 'uceed-2026';

UPDATE public.exams
SET
  short_name = 'CUET UG',
  full_name = 'Common University Entrance Test (UG) 2026',
  website = 'https://cuet.nta.nic.in/',
  official_website = 'https://cuet.nta.nic.in/',
  registration_url = 'https://examinationservices.nic.in/ExamSysCUETUG26/root/CandidateLogin.aspx?enc=Ei4cajBkK1gZSfgr53ImFYsjZOdyj8DuPcxGBqAK2DwPXgGzSvy8OkvXqQJ0Bni9',
  application_start_date = 'January 2026',
  application_end_date = 'See official information bulletin',
  exam_date = 'CUET UG 2026 started on 11 May 2026',
  result_date = 'June 2026',
  status = 'Result Declared',
  description = 'CUET UG 2026 was the common entrance route for undergraduate admissions across central and participating universities. The official NTA portal hosted the information bulletin, syllabus, admit-card services, answer-key notices and score-card access.',
  page_summary = 'CUET UG 2026 included the information bulletin, official syllabus, exam commencement notice, admit-card links, answer-key notices and score-card release updates.',
  summary_content = '<p>CUET UG 2026 remained a high-importance national entrance exam for students targeting central and participating university admissions. The NTA portal brought together the official bulletin, syllabus, public notices, answer-key workflow and result links in one place.</p><p>For candidates reviewing the 2026 cycle, the official website and NTA-linked candidate services remain the strongest verification sources.</p>',
  application_process = '<p>Candidates followed the NTA workflow described in the 2026 information bulletin and used the linked examination services portal for candidate access. The CUET site then routed students to admit-card, answer-key challenge and score-card services as the cycle progressed.</p>',
  dates_content = '<ul><li>The 2026 information bulletin was published on the official CUET portal.</li><li>CUET UG 2026 commenced on 11 May 2026, as confirmed by the official press briefing note.</li><li>Public notices later covered rescheduled exams, fresh admit cards for affected candidates and the answer-key challenge cycle.</li><li>The final answer key and result notices were published in June 2026.</li></ul>',
  result_content = '<p>NTA published the final answer key notice and later declared the CUET UG 2026 result through the official portal and score-card login service. Students could use the score-card link on the CUET website for authenticated access.</p>',
  meta_title = 'CUET UG 2026 - Official Bulletin, Exam Updates, Score Card and Result',
  meta_description = 'Check CUET UG 2026 official bulletin, syllabus, exam commencement update, answer-key notices, score-card link and result guidance on DekhoCampus.',
  meta_keywords = 'CUET UG 2026, CUET result 2026, CUET score card 2026, CUET bulletin, CUET exam date 2026, NTA CUET',
  important_dates = jsonb_build_array(
    jsonb_build_object('event','Information Bulletin','date','Published on official portal'),
    jsonb_build_object('event','Exam Commencement','date','11 May 2026'),
    jsonb_build_object('event','Answer Key Challenge Notice','date','June 2026'),
    jsonb_build_object('event','Final Answer Key Notice','date','June 2026'),
    jsonb_build_object('event','Result Notice','date','June 2026')
  ),
  data_source_urls = jsonb_build_array(
    'https://cuet.nta.nic.in/',
    'https://cdnbbsr.s3waas.gov.in/s3d1a21da7bca4abff8b0b61b87597de73/uploads/2026/01/202601031633478370.pdf',
    'https://cuet.nta.nic.in/score-card-for-cuetug-2026/',
    'https://examinationservices.nic.in/ResultoService26/CUET2026/Login'
  ),
  updated_at = now()
WHERE slug = 'cuet-2026';
