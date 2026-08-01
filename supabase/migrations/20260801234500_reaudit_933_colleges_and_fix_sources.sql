-- Editorial coverage audit for the colleges revisited through 2026-08-01.
-- This migration records real coverage, removes copied rank claims and applies
-- official-source corrections only where an institution-specific source exists.

BEGIN;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS editorial_word_count integer NOT NULL DEFAULT 0,
  ADD COLUMN IF NOT EXISTS editorial_module_count integer NOT NULL DEFAULT 0,
  ADD COLUMN IF NOT EXISTS editorial_audit_state text NOT NULL DEFAULT 'not_audited',
  ADD COLUMN IF NOT EXISTS editorial_source_tier text NOT NULL DEFAULT 'unresolved',
  ADD COLUMN IF NOT EXISTS editorial_audited_at timestamptz,
  ADD COLUMN IF NOT EXISTS editorial_audit_note text;

COMMENT ON COLUMN public.colleges.editorial_word_count IS 'Words across the core college editorial fields at the latest audit.';
COMMENT ON COLUMN public.colleges.editorial_module_count IS 'Populated core editorial modules at the latest audit.';
COMMENT ON COLUMN public.colleges.editorial_audit_state IS 'Editorial readiness independent of structural and source-clean passes.';
COMMENT ON COLUMN public.colleges.editorial_source_tier IS 'official, mixed_public or unresolved based on stored source evidence.';

WITH audited AS (
  SELECT
    c.id,
    COALESCE(array_length(regexp_split_to_array(
      NULLIF(trim(regexp_replace(concat_ws(' ',
        c.description, c.page_summary, c.eligibility_criteria, c.admission_process,
        c.scholarship_details, c.hostel_life, c.cutoff, c.course_fee_content,
        c.placement_content, c.rankings_content, c.facilities_content
      ), '\s+', ' ', 'g')), ''),
      '\s+'
    ), 1), 0) AS word_count,
    (CASE WHEN COALESCE(c.description, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.page_summary, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.admission_process, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.eligibility_criteria, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.course_fee_content, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.placement_content, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.cutoff, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.rankings_content, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.scholarship_details, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.facilities_content, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(c.hostel_life, '') <> '' THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(array_length(c.highlights, 1), 0) > 0 THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(array_length(c.gallery_images, 1), 0) > 0 THEN 1 ELSE 0 END
      + CASE WHEN COALESCE(array_length(c.top_recruiters, 1), 0) > 0 THEN 1 ELSE 0 END
    ) AS module_count,
    CASE
      WHEN COALESCE(c.official_source_url, '') <> '' OR COALESCE(c.official_website, '') <> '' THEN 'official'
      WHEN jsonb_array_length(COALESCE(c.data_source_urls, '[]'::jsonb)) > 0 THEN 'mixed_public'
      ELSE 'unresolved'
    END AS source_tier
  FROM public.colleges c
  WHERE c.data_clean_method IN ('source_review_humanized', 'official_source_content', 'official_source')
)
UPDATE public.colleges c
SET
  editorial_word_count = a.word_count,
  editorial_module_count = a.module_count,
  editorial_source_tier = a.source_tier,
  editorial_audit_state = CASE
    WHEN a.word_count BETWEEN 6000 AND 9000 AND a.module_count >= 12 AND a.source_tier = 'official' THEN 'editorial_ready'
    WHEN a.source_tier = 'official' THEN 'official_expansion_pending'
    ELSE 'source_research_and_expansion_pending'
  END,
  editorial_audited_at = now(),
  editorial_audit_note = 'AIO/AEO/SEO/GEO/LLMO revisit: answer-first structure present, but long-form expansion and module evidence remain pending unless explicitly source-verified.'
FROM audited a
WHERE c.id = a.id;

-- Remove rank-shaped tags from revisited colleges. Exact official tags are
-- restored below for the three institutions verified in this transaction.
UPDATE public.colleges c
SET tags = COALESCE((
  SELECT array_agg(tag ORDER BY ord)
  FROM unnest(COALESCE(c.tags, ARRAY[]::text[])) WITH ORDINALITY AS u(tag, ord)
  WHERE tag !~* '^NIRF([[:space:]]+202[0-9])?([[:space:]]+|[[:space:]]*#)'
), ARRAY[]::text[])
WHERE c.data_clean_method IN ('source_review_humanized', 'official_source_content', 'official_source');

-- A Delhi-specific paragraph was previously copied to other AIIMS campuses.
UPDATE public.colleges
SET rankings_content = name || ' does not carry an institution-specific verified NIRF position in this record. Check the current NIRF category table and the institution disclosure before using a rank for comparison.',
    ranking = CASE WHEN ranking ILIKE '%NIRF%' THEN '' ELSE ranking END,
    requires_official_source_refresh = true,
    editorial_audit_state = 'source_research_and_expansion_pending'
WHERE slug NOT IN ('aiims-delhi', 'all-india-institute-of-medical-sciences-aiims-new-delhi')
  AND rankings_content ILIKE 'AIIMS Delhi is a nationally recognised medical institution%';

UPDATE public.colleges
SET
  ranking = 'NIRF 2025: #2 Engineering, #4 Overall, #7 Innovation',
  rankings_content = 'IIT Delhi is ranked 2nd in Engineering, 4th Overall and 7th in Innovation in the Government of India NIRF 2025 tables. Category and year are stated because ranks from different tables are not interchangeable.',
  tags = ARRAY['IIT', 'Government', 'Institute of National Importance', 'NIRF 2025 Engineering #2', 'NIRF 2025 Overall #4', 'NIRF 2025 Innovation #7']::text[],
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/InnovationRanking.html","type":"official_ranking"}]'::jsonb,
  editorial_source_tier = 'official'
WHERE slug = 'iit-delhi';

UPDATE public.colleges
SET
  ranking = 'NIRF 2025: #3 Engineering, #3 Overall, #2 Innovation',
  rankings_content = 'IIT Bombay is ranked 3rd in Engineering, 3rd Overall and 2nd in Innovation in the Government of India NIRF 2025 tables. These category-specific positions should be considered with programme fit, curriculum, cost and student goals.',
  tags = ARRAY['IIT', 'Government', 'Institute of National Importance', 'NIRF 2025 Engineering #3', 'NIRF 2025 Overall #3', 'NIRF 2025 Innovation #2']::text[],
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/InnovationRanking.html","type":"official_ranking"}]'::jsonb,
  editorial_source_tier = 'official'
WHERE slug = 'iit-bombay';

UPDATE public.colleges
SET
  official_website = 'https://www.aiims.edu/',
  official_source_url = 'https://www.aiims.edu/index.php/en/academic_section_courses',
  ranking = 'NIRF 2025: #1 Medical, #8 Overall, #11 Research',
  rankings_content = 'AIIMS New Delhi is ranked 1st in Medical, 8th Overall and 11th in Research Institutions in the Government of India NIRF 2025 tables. These are category-specific institutional positions, not programme admission cutoffs.',
  tags = ARRAY['Medical', 'Government', 'Institute of National Importance', 'NIRF 2025 Medical #1', 'NIRF 2025 Overall #8', 'NIRF 2025 Research #11']::text[],
  related_courses = ARRAY['mbbs', 'bsc-nursing', 'bachelor-of-science-bsc', 'bsc-radiography', 'bsc-optometry', 'msc', 'msc-biotechnology', 'doctor-of-medicine-md', 'master-of-surgery-ms', 'master-of-dental-surgery-mds', 'master-of-hospital-administration', 'phd']::text[],
  courses_count = 12,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  course_fee_content = 'AIIMS New Delhi officially lists undergraduate, postgraduate, superspecialty, doctoral and residency pathways. The mapped course families include MBBS, nursing and allied-health bachelor programmes, M.Sc and M.Biotechnology programmes, MD, MS, MDS, DM, M.Ch, fellowships and Ph.D. Check the current prospectus for programme-level intake, eligibility and fees.',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || '[{"source":"https://www.aiims.edu/index.php/en/academic_section_courses","type":"official_course_catalogue"},{"source":"https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","type":"official_ranking"}]'::jsonb,
  editorial_source_tier = 'official'
WHERE slug IN ('aiims-delhi', 'all-india-institute-of-medical-sciences-aiims-new-delhi');

-- Official programme families for Bennett University. Existing unrelated
-- legacy course links and old third-party fee HTML are replaced.
UPDATE public.colleges
SET
  official_website = 'https://www.bennett.edu.in/',
  official_source_url = 'https://www.bennett.edu.in/admission/',
  related_courses = ARRAY['btech','bca','bachelor-of-science-bsc','master-of-technology-mtech','msc','mca','bba','bcom','mba','ba-llb','bba-llb','llm','bdes','bachelor-of-arts-ba','ma','phd']::text[],
  courses_count = 16,
  fees = '',
  course_fee_content = 'Bennett University officially lists programme families across engineering, artificial intelligence, applied sciences, management, law, design, liberal arts and media. Students should use the university 2026-27 fee page for the exact programme, year, hostel and scholarship figures because fees vary by programme and pathway.',
  admission_process = 'Bennett University describes a merit-based admission process using programme-specific criteria that may include Class 12 performance, graduation results, national entrance scores, a university entrance examination or a personal interview. Applicants should use the current programme page because the accepted route differs by course.',
  eligibility_criteria = 'Eligibility at Bennett University is programme-specific. Confirm the required qualifying subjects, minimum marks, accepted entrance route and selection stages on the current official programme page before applying.',
  scholarship_details = 'Bennett University publishes academic and merit-based scholarship information for applicants. Award and continuation conditions can change by programme and session, so students should verify the 2026-27 scholarship page and offer letter.',
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  data_clean_method = 'official_source_content',
  data_clean_state = 'official_courses_verified_fees_pending',
  editorial_source_tier = 'official',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || '[{"source":"https://www.bennett.edu.in/admission/","type":"official_course_catalogue"},{"source":"https://www.bennett.edu.in/admission/admission-process/","type":"official_admission_process"},{"source":"https://www.bennett.edu.in/admission/faqs/","type":"official_admission_faq"}]'::jsonb,
  updated_at = now()
WHERE slug = 'bennett-university-greater-noida';

DELETE FROM public.course_fees WHERE college_slug = 'bennett-university-greater-noida';

-- WCTM official home page lists nine broad programme families. Fee figures
-- remain blank because no programme/year/category fee schedule was verified.
UPDATE public.colleges
SET
  official_website = 'https://www.wctmgurgaon.com/',
  official_source_url = 'https://www.wctmgurgaon.com/',
  related_courses = ARRAY['btech','master-of-technology-mtech','bba','mba','bca','mca','diploma-in-engineering','bed','m-ed']::text[],
  courses_count = 9,
  fees = '',
  course_fee_content = 'WCTM officially lists B.Tech, M.Tech, BBA, MBA, BCA, MCA, Diploma, B.Ed and M.Ed programme families. Specialisations and fees should be checked against the current programme page and admission communication before payment.',
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  data_clean_method = 'official_source_content',
  data_clean_state = 'official_courses_verified_fees_pending',
  editorial_source_tier = 'official',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || '[{"source":"https://www.wctmgurgaon.com/","type":"official_course_catalogue"}]'::jsonb,
  updated_at = now()
WHERE slug IN ('wctm-gurgaon', 'world-college-of-technology-and-management-wctm-gurgaon');

DELETE FROM public.course_fees
WHERE college_slug IN ('wctm-gurgaon', 'world-college-of-technology-and-management-wctm-gurgaon');

-- Link the two Noida Amity profiles to current official sources. Course arrays
-- remain blank until the full official catalogue is mapped without omission.
UPDATE public.colleges
SET
  official_website = 'https://amity.edu/noida/',
  official_source_url = 'https://amity.edu/noida/programe-list.aspx?fd=all',
  ranking = 'NIRF 2025: #37 Overall, #22 University, #37 Engineering, #38 Research',
  rankings_content = 'Amity University, Gautam Budh Nagar is ranked 37th Overall, 22nd among Universities, 37th in Engineering and 38th among Research Institutions in the Government of India NIRF 2025 tables. These positions belong to separate categories and should not be presented as one interchangeable rank.',
  tags = ARRAY['Private University', 'NIRF 2025 Overall #37', 'NIRF 2025 University #22', 'NIRF 2025 Engineering #37', 'NIRF 2025 Research #38']::text[],
  fees = '',
  course_fee_content = 'Amity University Noida publishes a large discipline-wise programme catalogue and a separate current fee structure. The full catalogue is not compressed into a partial list here. Use the official programme and fee search for the exact course, eligibility, duration, sponsored category and semester fee.',
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  editorial_source_tier = 'official',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || '[{"source":"https://amity.edu/noida/programe-list.aspx?fd=all","type":"official_course_catalogue"},{"source":"https://noida.amity.edu/fee-structure","type":"official_fee_search"},{"source":"https://amity.edu/faqsAdmission.aspx","type":"official_admission_faq"},{"source":"https://www.nirfindia.org/Rankings/2025/OverallRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ResearchRanking.html","type":"official_ranking"}]'::jsonb,
  updated_at = now()
WHERE slug IN ('amity-noida', 'amity-university-noida');

INSERT INTO public.college_contacts (college_slug, address, phone, email, website, updated_at)
VALUES
  ('aiims-delhi', 'Ansari Nagar, New Delhi - 110029', '+91-11-26588500 / 26588700', '', 'https://www.aiims.edu/', now()),
  ('all-india-institute-of-medical-sciences-aiims-new-delhi', 'Ansari Nagar, New Delhi - 110029', '+91-11-26588500 / 26588700', '', 'https://www.aiims.edu/', now()),
  ('amity-noida', 'Amity Road, Sector 125, Noida, Uttar Pradesh 201301', '0120-2445252 / 4713600', 'admissions@amity.edu', 'https://amity.edu/noida/', now()),
  ('amity-university-noida', 'Amity Road, Sector 125, Noida, Uttar Pradesh 201301', '0120-2445252 / 4713600', 'admissions@amity.edu', 'https://amity.edu/noida/', now()),
  ('bennett-university-greater-noida', 'Greater Noida, Uttar Pradesh', '1800 103 8484', '', 'https://www.bennett.edu.in/', now()),
  ('wctm-gurgaon', 'Farukh Nagar, Gurugram, Haryana', '+91-8607788739 / +91-8607788740', '', 'https://www.wctmgurgaon.com/', now()),
  ('world-college-of-technology-and-management-wctm-gurgaon', 'Farukh Nagar, Gurugram, Haryana', '+91-8607788739 / +91-8607788740', '', 'https://www.wctmgurgaon.com/', now())
ON CONFLICT (college_slug) DO UPDATE SET
  address = EXCLUDED.address,
  phone = EXCLUDED.phone,
  email = EXCLUDED.email,
  website = EXCLUDED.website,
  updated_at = now();

-- Source corrections above can promote a record after the initial audit CTE.
UPDATE public.colleges
SET
  editorial_audited_at = COALESCE(editorial_audited_at, now()),
  editorial_audit_note = COALESCE(editorial_audit_note, 'AIO/AEO/SEO/GEO/LLMO revisit: official source linked; long-form evidence expansion remains pending.'),
  editorial_word_count = COALESCE(array_length(regexp_split_to_array(
    NULLIF(trim(regexp_replace(concat_ws(' ',
      description, page_summary, eligibility_criteria, admission_process,
      scholarship_details, hostel_life, cutoff, course_fee_content,
      placement_content, rankings_content, facilities_content
    ), '\s+', ' ', 'g')), ''), '\s+'
  ), 1), 0),
  editorial_module_count =
      CASE WHEN COALESCE(description, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(page_summary, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(admission_process, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(eligibility_criteria, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(course_fee_content, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(placement_content, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(cutoff, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(rankings_content, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(scholarship_details, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(facilities_content, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(hostel_life, '') <> '' THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(array_length(highlights, 1), 0) > 0 THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(array_length(gallery_images, 1), 0) > 0 THEN 1 ELSE 0 END
    + CASE WHEN COALESCE(array_length(top_recruiters, 1), 0) > 0 THEN 1 ELSE 0 END,
  editorial_source_tier = 'official',
  editorial_audit_state = 'official_expansion_pending'
WHERE official_source_url <> ''
  AND editorial_audit_state <> 'editorial_ready';

NOTIFY pgrst, 'reload schema';
COMMIT;
