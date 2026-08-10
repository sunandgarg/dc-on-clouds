-- Partner college cleanup and safe official-source seed.
-- Policy: course names are populated only for high-confidence institutional programme families.
-- Fees remain NULL unless a programme-wise official fee is safely mapped.

BEGIN;

WITH canonical_duplicates(old_slug, keep_slug) AS (
  VALUES
    ('wctm-gurgaon', 'world-college-of-technology-and-management-wctm-gurgaon'),
    ('amity-noida', 'amity-university-noida'),
    ('christ-university', 'christ-university-bangalore'),
    ('jadavpur-university', 'jadavpur-university-kolkata')
)
UPDATE public.colleges c
SET
  is_active = false,
  data_clean_method = 'duplicate_canonical_slug_cleanup',
  data_clean_audit_note = trim(concat_ws(
    ' ',
    nullif(c.data_clean_audit_note, ''),
    'Archived duplicate on 2026-08-10. Preferred active slug kept:',
    d.keep_slug || '.'
  )),
  data_source_urls = jsonb_build_object(
    'cleanup', 'duplicate_canonical_slug_cleanup',
    'archived_at', '2026-08-10',
    'preferred_slug', d.keep_slug
  ),
  updated_at = now()
FROM canonical_duplicates d
WHERE c.slug = d.old_slug;

WITH partner_profiles(slug, website, official_source_url, note) AS (
  VALUES
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'https://bhimtal.gehu.ac.in/', 'https://bhimtal.gehu.ac.in/', 'GEHU Bhimtal official website reviewed for identity and programme families.'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'https://dehradun.gehu.ac.in/', 'https://dehradun.gehu.ac.in/', 'GEHU Dehradun official website reviewed for identity and programme families.'),
    ('graphic-era-university-geu-dehradun', 'https://www.geu.ac.in/', 'https://www.geu.ac.in/', 'Graphic Era University official website reviewed for identity and programme families.'),
    ('uttaranchal-university-dehradun', 'https://uttaranchaluniversity.ac.in/', 'https://uttaranchaluniversity.ac.in/', 'Uttaranchal University official website reviewed for identity and programme families.'),
    ('roorkee-institute-of-technology-rit-dehradun', 'https://ritroorkee.com/', 'https://ritroorkee.com/', 'RIT Roorkee official website reviewed for identity and programme families.'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'https://saitm.ac.in/', 'https://saitm.ac.in/', 'SAITM official website reviewed for identity and programme families.'),
    ('masters-union-school-of-business', 'https://mastersunion.org/', 'https://mastersunion.org/', 'Masters Union official website reviewed for identity and programme families.'),
    ('vivekananda-global-university-vgu-jaipur', 'https://vgu.ac.in/', 'https://vgu.ac.in/', 'VGU official website reviewed for identity and programme families.'),
    ('suresh-gyan-vihar-university', 'https://www.gyanvihar.org/', 'https://www.gyanvihar.org/', 'SGVU official website reviewed for identity and programme families.'),
    ('invertis-university-bareilly', 'https://www.invertisuniversity.ac.in/', 'https://www.invertisuniversity.ac.in/', 'Invertis University official website reviewed for identity and programme families.')
)
UPDATE public.colleges c
SET
  official_website = p.website,
  official_source_url = p.official_source_url,
  data_clean_method = 'official_source_partner_seed',
  data_clean_audit_note = trim(concat_ws(
    ' ',
    nullif(c.data_clean_audit_note, ''),
    p.note,
    'Fees are blank unless programme-wise fee values are officially verified.'
  )),
  data_source_urls = jsonb_build_object(
    'batch', 'partner-college-logo-dedupe-official-seed',
    'researched_at', '2026-08-10',
    'official', jsonb_build_array(p.official_source_url),
    'website', p.website,
    'fee_policy', 'fees_blank_until_programme_year_category_and_quota_are_verified'
  ),
  official_source_cleaned_at = now(),
  official_source_clean_pass_count = coalesce(c.official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  official_courses_verified = true,
  official_fees_verified = false,
  updated_at = now()
FROM partner_profiles p
WHERE c.slug = p.slug;

WITH partner_courses(college_slug, course_slug, course_name) AS (
  VALUES
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'bba', 'BBA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'bca', 'BCA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'mba', 'MBA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'mca', 'MCA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'phd', 'Ph.D'),

    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'bba', 'BBA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'bca', 'BCA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'mba', 'MBA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'mca', 'MCA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'ba-llb', 'BA LL.B'),

    ('graphic-era-university-geu-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('graphic-era-university-geu-dehradun', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('graphic-era-university-geu-dehradun', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('graphic-era-university-geu-dehradun', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('graphic-era-university-geu-dehradun', 'bba', 'BBA'),
    ('graphic-era-university-geu-dehradun', 'bca', 'BCA'),
    ('graphic-era-university-geu-dehradun', 'mba', 'MBA'),
    ('graphic-era-university-geu-dehradun', 'mca', 'MCA'),
    ('graphic-era-university-geu-dehradun', 'm-tech', 'M.Tech'),
    ('graphic-era-university-geu-dehradun', 'phd', 'Ph.D'),

    ('uttaranchal-university-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('uttaranchal-university-dehradun', 'bba', 'BBA'),
    ('uttaranchal-university-dehradun', 'bca', 'BCA'),
    ('uttaranchal-university-dehradun', 'mba', 'MBA'),
    ('uttaranchal-university-dehradun', 'mca', 'MCA'),
    ('uttaranchal-university-dehradun', 'ba-llb', 'BA LL.B'),
    ('uttaranchal-university-dehradun', 'bba-llb', 'BBA LL.B'),
    ('uttaranchal-university-dehradun', 'b-pharm', 'B.Pharm'),
    ('uttaranchal-university-dehradun', 'm-pharm', 'M.Pharm'),
    ('uttaranchal-university-dehradun', 'bsc-nursing', 'B.Sc Nursing'),

    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'bba', 'BBA'),
    ('roorkee-institute-of-technology-rit-dehradun', 'bca', 'BCA'),
    ('roorkee-institute-of-technology-rit-dehradun', 'mba', 'MBA'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-pharm', 'B.Pharm'),
    ('roorkee-institute-of-technology-rit-dehradun', 'd-pharm', 'D.Pharm'),

    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'bba', 'BBA'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'bca', 'BCA'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'bcom', 'B.Com'),

    ('masters-union-school-of-business', 'undergraduate-programme-in-technology-and-business-management', 'Undergraduate Programme in Technology and Business Management'),
    ('masters-union-school-of-business', 'post-graduate-programme-in-technology-and-business-management', 'Post Graduate Programme in Technology and Business Management'),
    ('masters-union-school-of-business', 'pgp-rise', 'PGP Rise'),

    ('vivekananda-global-university-vgu-jaipur', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('vivekananda-global-university-vgu-jaipur', 'bba', 'BBA'),
    ('vivekananda-global-university-vgu-jaipur', 'bca', 'BCA'),
    ('vivekananda-global-university-vgu-jaipur', 'mba', 'MBA'),
    ('vivekananda-global-university-vgu-jaipur', 'mca', 'MCA'),
    ('vivekananda-global-university-vgu-jaipur', 'b-des', 'B.Des'),
    ('vivekananda-global-university-vgu-jaipur', 'b-arch', 'B.Arch'),
    ('vivekananda-global-university-vgu-jaipur', 'ba-llb', 'BA LL.B'),
    ('vivekananda-global-university-vgu-jaipur', 'b-pharm', 'B.Pharm'),

    ('suresh-gyan-vihar-university', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('suresh-gyan-vihar-university', 'bba', 'BBA'),
    ('suresh-gyan-vihar-university', 'bca', 'BCA'),
    ('suresh-gyan-vihar-university', 'mba', 'MBA'),
    ('suresh-gyan-vihar-university', 'mca', 'MCA'),
    ('suresh-gyan-vihar-university', 'bcom', 'B.Com'),
    ('suresh-gyan-vihar-university', 'bsc', 'B.Sc'),
    ('suresh-gyan-vihar-university', 'b-pharm', 'B.Pharm'),
    ('suresh-gyan-vihar-university', 'phd', 'Ph.D'),

    ('invertis-university-bareilly', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('invertis-university-bareilly', 'bba', 'BBA'),
    ('invertis-university-bareilly', 'bca', 'BCA'),
    ('invertis-university-bareilly', 'mba', 'MBA'),
    ('invertis-university-bareilly', 'mca', 'MCA'),
    ('invertis-university-bareilly', 'bcom-hons', 'B.Com (Hons.)'),
    ('invertis-university-bareilly', 'ba-llb', 'BA LL.B'),
    ('invertis-university-bareilly', 'bba-llb', 'BBA LL.B'),
    ('invertis-university-bareilly', 'b-pharm', 'B.Pharm'),
    ('invertis-university-bareilly', 'd-pharm', 'D.Pharm')
),
existing_partner_colleges AS (
  SELECT pc.*
  FROM partner_courses pc
  JOIN public.colleges c ON c.slug = pc.college_slug
)
DELETE FROM public.course_fees cf
USING (SELECT DISTINCT college_slug FROM existing_partner_colleges) p
WHERE cf.college_slug = p.college_slug;

WITH partner_courses(college_slug, course_slug, course_name) AS (
  VALUES
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'bba', 'BBA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'bca', 'BCA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'mba', 'MBA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'mca', 'MCA'),
    ('graphic-era-hill-university-bhimtal-campus-gehu-bhimtal', 'phd', 'Ph.D'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'bba', 'BBA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'bca', 'BCA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'mba', 'MBA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'mca', 'MCA'),
    ('graphic-era-hill-university-dehradun-campus-gehu-dehradun', 'ba-llb', 'BA LL.B'),
    ('graphic-era-university-geu-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('graphic-era-university-geu-dehradun', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('graphic-era-university-geu-dehradun', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('graphic-era-university-geu-dehradun', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('graphic-era-university-geu-dehradun', 'bba', 'BBA'),
    ('graphic-era-university-geu-dehradun', 'bca', 'BCA'),
    ('graphic-era-university-geu-dehradun', 'mba', 'MBA'),
    ('graphic-era-university-geu-dehradun', 'mca', 'MCA'),
    ('graphic-era-university-geu-dehradun', 'm-tech', 'M.Tech'),
    ('graphic-era-university-geu-dehradun', 'phd', 'Ph.D'),
    ('uttaranchal-university-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('uttaranchal-university-dehradun', 'bba', 'BBA'),
    ('uttaranchal-university-dehradun', 'bca', 'BCA'),
    ('uttaranchal-university-dehradun', 'mba', 'MBA'),
    ('uttaranchal-university-dehradun', 'mca', 'MCA'),
    ('uttaranchal-university-dehradun', 'ba-llb', 'BA LL.B'),
    ('uttaranchal-university-dehradun', 'bba-llb', 'BBA LL.B'),
    ('uttaranchal-university-dehradun', 'b-pharm', 'B.Pharm'),
    ('uttaranchal-university-dehradun', 'm-pharm', 'M.Pharm'),
    ('uttaranchal-university-dehradun', 'bsc-nursing', 'B.Sc Nursing'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-artificial-intelligence-and-machine-learning', 'B.Tech Artificial Intelligence and Machine Learning'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('roorkee-institute-of-technology-rit-dehradun', 'bba', 'BBA'),
    ('roorkee-institute-of-technology-rit-dehradun', 'bca', 'BCA'),
    ('roorkee-institute-of-technology-rit-dehradun', 'mba', 'MBA'),
    ('roorkee-institute-of-technology-rit-dehradun', 'b-pharm', 'B.Pharm'),
    ('roorkee-institute-of-technology-rit-dehradun', 'd-pharm', 'D.Pharm'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-electronics-and-communication-engineering', 'B.Tech Electronics and Communication Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-mechanical-engineering', 'B.Tech Mechanical Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'b-tech-civil-engineering', 'B.Tech Civil Engineering'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'bba', 'BBA'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'bca', 'BCA'),
    ('st-andrews-institute-of-technology-and-management-saitm-gurgaon', 'bcom', 'B.Com'),
    ('masters-union-school-of-business', 'undergraduate-programme-in-technology-and-business-management', 'Undergraduate Programme in Technology and Business Management'),
    ('masters-union-school-of-business', 'post-graduate-programme-in-technology-and-business-management', 'Post Graduate Programme in Technology and Business Management'),
    ('masters-union-school-of-business', 'pgp-rise', 'PGP Rise'),
    ('vivekananda-global-university-vgu-jaipur', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('vivekananda-global-university-vgu-jaipur', 'bba', 'BBA'),
    ('vivekananda-global-university-vgu-jaipur', 'bca', 'BCA'),
    ('vivekananda-global-university-vgu-jaipur', 'mba', 'MBA'),
    ('vivekananda-global-university-vgu-jaipur', 'mca', 'MCA'),
    ('vivekananda-global-university-vgu-jaipur', 'b-des', 'B.Des'),
    ('vivekananda-global-university-vgu-jaipur', 'b-arch', 'B.Arch'),
    ('vivekananda-global-university-vgu-jaipur', 'ba-llb', 'BA LL.B'),
    ('vivekananda-global-university-vgu-jaipur', 'b-pharm', 'B.Pharm'),
    ('suresh-gyan-vihar-university', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('suresh-gyan-vihar-university', 'bba', 'BBA'),
    ('suresh-gyan-vihar-university', 'bca', 'BCA'),
    ('suresh-gyan-vihar-university', 'mba', 'MBA'),
    ('suresh-gyan-vihar-university', 'mca', 'MCA'),
    ('suresh-gyan-vihar-university', 'bcom', 'B.Com'),
    ('suresh-gyan-vihar-university', 'bsc', 'B.Sc'),
    ('suresh-gyan-vihar-university', 'b-pharm', 'B.Pharm'),
    ('suresh-gyan-vihar-university', 'phd', 'Ph.D'),
    ('invertis-university-bareilly', 'b-tech-computer-science-and-engineering', 'B.Tech Computer Science and Engineering'),
    ('invertis-university-bareilly', 'bba', 'BBA'),
    ('invertis-university-bareilly', 'bca', 'BCA'),
    ('invertis-university-bareilly', 'mba', 'MBA'),
    ('invertis-university-bareilly', 'mca', 'MCA'),
    ('invertis-university-bareilly', 'bcom-hons', 'B.Com (Hons.)'),
    ('invertis-university-bareilly', 'ba-llb', 'BA LL.B'),
    ('invertis-university-bareilly', 'bba-llb', 'BBA LL.B'),
    ('invertis-university-bareilly', 'b-pharm', 'B.Pharm'),
    ('invertis-university-bareilly', 'd-pharm', 'D.Pharm')
),
existing_partner_colleges AS (
  SELECT pc.*
  FROM partner_courses pc
  JOIN public.colleges c ON c.slug = pc.college_slug
)
INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT college_slug, course_slug, course_name, NULL, NULL, '2026'
FROM existing_partner_colleges;

WITH course_counts AS (
  SELECT college_slug, count(*)::integer AS total
  FROM public.course_fees
  WHERE college_slug IN (
    'graphic-era-hill-university-bhimtal-campus-gehu-bhimtal',
    'graphic-era-hill-university-dehradun-campus-gehu-dehradun',
    'graphic-era-university-geu-dehradun',
    'uttaranchal-university-dehradun',
    'roorkee-institute-of-technology-rit-dehradun',
    'st-andrews-institute-of-technology-and-management-saitm-gurgaon',
    'masters-union-school-of-business',
    'vivekananda-global-university-vgu-jaipur',
    'suresh-gyan-vihar-university',
    'invertis-university-bareilly'
  )
  GROUP BY college_slug
)
UPDATE public.colleges c
SET courses_count = cc.total, updated_at = now()
FROM course_counts cc
WHERE c.slug = cc.college_slug;

COMMIT;
