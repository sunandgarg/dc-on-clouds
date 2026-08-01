-- Map only course families supported by official institutional sources.
-- Fees remain NULL unless a current official programme-level fee is available.
BEGIN;

CREATE TEMP TABLE verified_college_courses (
  college_slug text NOT NULL,
  course_slug text NOT NULL,
  PRIMARY KEY (college_slug, course_slug)
) ON COMMIT DROP;

INSERT INTO verified_college_courses (college_slug, course_slug) VALUES
  ('anand-agricultural-university-aau-anand', 'bsc-agriculture'),
  ('anand-agricultural-university-aau-anand', 'msc-agriculture'),
  ('anand-agricultural-university-aau-anand', 'b-tech-agricultural-engineering'),
  ('anand-agricultural-university-aau-anand', 'diploma-in-agriculture'),
  ('anand-agricultural-university-aau-anand', 'phd'),

  ('andhra-university-au-visakhapatnam', 'bachelor-of-arts-ba'),
  ('andhra-university-au-visakhapatnam', 'bachelor-of-commerce'),
  ('andhra-university-au-visakhapatnam', 'bachelor-of-science-bsc'),
  ('andhra-university-au-visakhapatnam', 'be'),
  ('andhra-university-au-visakhapatnam', 'btech-civil-engineering'),
  ('andhra-university-au-visakhapatnam', 'b-tech-mechanical-engineering'),
  ('andhra-university-au-visakhapatnam', 'btech-electronics-and-communications-engineering'),
  ('andhra-university-au-visakhapatnam', 'electrical-and-electronics-engineering'),
  ('andhra-university-au-visakhapatnam', 'btech-computer-science'),
  ('andhra-university-au-visakhapatnam', 'b-tech-metallurgical-engineering'),
  ('andhra-university-au-visakhapatnam', 'btech-marine-engineering'),
  ('andhra-university-au-visakhapatnam', 'bachelor-of-technology-btech-instrumentation-engineering'),
  ('andhra-university-au-visakhapatnam', 'b-tech-chemical-engineering'),
  ('andhra-university-au-visakhapatnam', 'master-of-arts-ma'),
  ('andhra-university-au-visakhapatnam', 'm-com-master-of-commerce'),
  ('andhra-university-au-visakhapatnam', 'master-of-science-msc'),
  ('andhra-university-au-visakhapatnam', 'mtech-computer-science-engineering'),
  ('andhra-university-au-visakhapatnam', 'mba'),
  ('andhra-university-au-visakhapatnam', 'mca'),
  ('andhra-university-au-visakhapatnam', 'b-pharma'),
  ('andhra-university-au-visakhapatnam', 'master-of-pharmacy-mpharma'),
  ('andhra-university-au-visakhapatnam', 'pharm-d-doctor-of-pharmacy'),
  ('andhra-university-au-visakhapatnam', 'bachelor-of-law'),
  ('andhra-university-au-visakhapatnam', 'master-of-law-llm'),

  ('all-india-institute-of-medical-sciences-aiims-patna', 'mbbs'),
  ('all-india-institute-of-medical-sciences-aiims-patna', 'doctor-of-medicine-md'),
  ('all-india-institute-of-medical-sciences-aiims-patna', 'master-of-surgery-ms'),
  ('all-india-institute-of-medical-sciences-aiims-patna', 'master-of-dental-surgery-mds'),
  ('all-india-institute-of-medical-sciences-aiims-patna', 'bsc-nursing'),
  ('all-india-institute-of-medical-sciences-aiims-patna', 'msc-nursing'),
  ('all-india-institute-of-medical-sciences-aiims-patna', 'paramedical-courses'),
  ('all-india-institute-of-medical-sciences-aiims-patna', 'phd'),

  ('all-india-institute-of-medical-sciences-aiims-raipur', 'mbbs'),
  ('all-india-institute-of-medical-sciences-aiims-raipur', 'doctor-of-medicine-md'),
  ('all-india-institute-of-medical-sciences-aiims-raipur', 'master-of-surgery-ms'),
  ('all-india-institute-of-medical-sciences-aiims-raipur', 'master-of-dental-surgery-mds'),
  ('all-india-institute-of-medical-sciences-aiims-raipur', 'master-of-public-health'),
  ('all-india-institute-of-medical-sciences-aiims-raipur', 'phd'),

  ('army-institute-of-law-ail-mohali', 'bachelor-of-law'),
  ('army-institute-of-law-ail-mohali', 'master-of-law-llm');

DELETE FROM public.course_fees cf
USING (SELECT DISTINCT college_slug FROM verified_college_courses) v
WHERE cf.college_slug = v.college_slug;

INSERT INTO public.course_fees (
  id,
  college_slug,
  course_slug,
  course_name,
  fee_amount,
  fee_type,
  year,
  created_at
)
SELECT
  gen_random_uuid(),
  v.college_slug,
  v.course_slug,
  c.name,
  NULL,
  NULL,
  '2026',
  now()
FROM verified_college_courses v
JOIN public.courses c ON c.slug = v.course_slug;

UPDATE public.colleges c
SET related_courses = ARRAY(
      SELECT v.course_slug
      FROM verified_college_courses v
      WHERE v.college_slug = c.slug
      ORDER BY v.course_slug
    ),
    courses_count = (
      SELECT count(*)::integer
      FROM verified_college_courses v
      WHERE v.college_slug = c.slug
    ),
    official_courses_verified = true,
    official_fees_verified = false,
    course_fee_content = CASE c.slug
      WHEN 'anand-agricultural-university-aau-anand' THEN 'The official Anand Agricultural University programme directory confirms undergraduate, postgraduate, doctoral and diploma study across agriculture and agricultural engineering. The course cards shown here map those official programmes to the closest course families available in DekhoCampus. Programme-level fees are not shown because a current official fee schedule was not verified.'
      WHEN 'andhra-university-au-visakhapatnam' THEN 'Andhra University publishes programme lists for its constituent colleges in arts and commerce, engineering, science and technology, pharmaceutical sciences and law. The course cards shown here represent official programmes that have a matching DekhoCampus course page. Specialisations remain available through the university course directory. Programme-level fees are not shown because a current official fee schedule was not verified.'
      WHEN 'all-india-institute-of-medical-sciences-aiims-patna' THEN 'AIIMS Patna officially lists medical, dental, nursing and allied-health study across undergraduate, postgraduate, super-specialty, doctoral and fellowship levels. The course cards shown here map the published course families to DekhoCampus. Programme-level fees are not shown because a current official fee schedule was not verified.'
      WHEN 'all-india-institute-of-medical-sciences-aiims-raipur' THEN 'AIIMS Raipur publishes an academic course table covering MBBS, MD and MS, MDS, DM and M.Ch, post-doctoral certificate programmes, Ph.D and Master of Public Health. The course cards shown here map the official degree families available in DekhoCampus. Programme-level fees are not shown because a current official fee schedule was not verified.'
      WHEN 'army-institute-of-law-ail-mohali' THEN 'Army Institute of Law publishes its five-year B.A. LL.B. programme and postgraduate LL.M. pathway through its official prospectus and academic pages. The course cards shown here map those official law programmes to DekhoCampus. Programme-level fees are not shown because a current official fee schedule was not verified.'
    END,
    official_source_url = CASE c.slug
      WHEN 'anand-agricultural-university-aau-anand' THEN 'https://aau.in/programme_offered_by_aau'
      WHEN 'andhra-university-au-visakhapatnam' THEN 'https://www.andhrauniversity.edu.in/academics/courses-offered.html'
      WHEN 'all-india-institute-of-medical-sciences-aiims-patna' THEN 'https://sms.aiimspatna.edu.in/opd-roster/'
      WHEN 'all-india-institute-of-medical-sciences-aiims-raipur' THEN 'https://www.aiimsraipur.edu.in/user/academic_courses.php'
      WHEN 'army-institute-of-law-ail-mohali' THEN 'https://www.ail.ac.in/pdf/prospectus-for-the-session-2025.pdf'
    END,
    official_website = CASE c.slug
      WHEN 'anand-agricultural-university-aau-anand' THEN 'https://aau.in/'
      WHEN 'andhra-university-au-visakhapatnam' THEN 'https://www.andhrauniversity.edu.in/'
      WHEN 'all-india-institute-of-medical-sciences-aiims-patna' THEN 'https://aiimspatna.edu.in/'
      WHEN 'all-india-institute-of-medical-sciences-aiims-raipur' THEN 'https://www.aiimsraipur.edu.in/'
      WHEN 'army-institute-of-law-ail-mohali' THEN 'https://www.ail.ac.in/'
    END,
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || jsonb_build_array(
      jsonb_build_object(
        'source', CASE c.slug
          WHEN 'anand-agricultural-university-aau-anand' THEN 'https://aau.in/programme_offered_by_aau'
          WHEN 'andhra-university-au-visakhapatnam' THEN 'https://www.andhrauniversity.edu.in/academics/courses-offered.html'
          WHEN 'all-india-institute-of-medical-sciences-aiims-patna' THEN 'https://sms.aiimspatna.edu.in/opd-roster/'
          WHEN 'all-india-institute-of-medical-sciences-aiims-raipur' THEN 'https://www.aiimsraipur.edu.in/user/academic_courses.php'
          WHEN 'army-institute-of-law-ail-mohali' THEN 'https://www.ail.ac.in/pdf/prospectus-for-the-session-2025.pdf'
        END,
        'type', 'official_courses'
      )
    ),
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug IN (SELECT DISTINCT college_slug FROM verified_college_courses);

UPDATE public.college_editorial_completion_queue q
SET course_status = 'verified',
    fee_status = 'pending',
    source_status = 'verified',
    updated_at = now(),
    last_audited_at = now()
WHERE q.college_slug IN (SELECT DISTINCT college_slug FROM verified_college_courses);

COMMIT;
