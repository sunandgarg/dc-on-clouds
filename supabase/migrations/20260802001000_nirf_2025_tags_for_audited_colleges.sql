-- Official NIRF 2025 tags matched conservatively to the audited college set.
-- Ambiguous and non-matching institutions are not modified.
BEGIN;
UPDATE public.colleges c
SET ranking = 'NIRF 2025: #24 State Public University, #84 University',
    rankings_content = 'Acharya Nagarjuna University - [ANU], Guntur is listed in the Government of India NIRF 2025 tables at #24 State Public University, #84 University. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 State Public University #24', 'NIRF 2025 University #84']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/STATEPUBLICUNIVERSITYRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'acharya-nagarjuna-university-anu-guntur';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #21 College',
    rankings_content = 'Acharya Narendra Dev College - [ANDC], New Delhi is listed in the Government of India NIRF 2025 tables at #21 College. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 College #21']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/CollegeRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'acharya-narendra-dev-college-andc-new-delhi';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #31 Agriculture and Allied Sectors',
    rankings_content = 'Acharya NG Ranga Agricultural University - [ANGRAU], Guntur is listed in the Government of India NIRF 2025 tables at #31 Agriculture and Allied Sectors. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Agriculture and Allied Sectors #31']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/AgricultureRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'acharya-ng-ranga-agricultural-university-angrau-guntur';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #73 Overall, #14 State Public University, #44 University',
    rankings_content = 'Alagappa University, Karaikudi is listed in the Government of India NIRF 2025 tables at #73 Overall, #14 State Public University, #44 University. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Overall #73', 'NIRF 2025 State Public University #14', 'NIRF 2025 University #44']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/OverallRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/STATEPUBLICUNIVERSITYRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'alagappa-university-karaikudi';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #26 Architecture and Planning, #28 Dental, #34 Engineering, #9 Law, #69 Management, #29 Medical, #19 Overall, #28 Research, #10 University',
    rankings_content = 'Aligarh Muslim University - [AMU], Aligarh is listed in the Government of India NIRF 2025 tables at #26 Architecture and Planning, #28 Dental, #34 Engineering, #9 Law, #69 Management, #29 Medical, #19 Overall, #28 Research, #10 University. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Architecture and Planning #26', 'NIRF 2025 Dental #28', 'NIRF 2025 Engineering #34', 'NIRF 2025 Law #9', 'NIRF 2025 Management #69', 'NIRF 2025 Medical #29', 'NIRF 2025 Overall #19', 'NIRF 2025 Research #28', 'NIRF 2025 University #10']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/ArchitectureRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/DentalRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/LawRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ManagementRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/OverallRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ResearchRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'aligarh-muslim-university-amu-aligarh';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #14 Medical, #100 Overall',
    rankings_content = 'All India Institute of Medical Sciences - [AIIMS], Bhubaneswar is listed in the Government of India NIRF 2025 tables at #14 Medical, #100 Overall. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Medical #14', 'NIRF 2025 Overall #100']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'all-india-institute-of-medical-sciences-aiims-bhubaneswar';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #19 Medical',
    rankings_content = 'All India Institute of Medical Sciences - [AIIMS], Jodhpur is listed in the Government of India NIRF 2025 tables at #19 Medical. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Medical #19']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'all-india-institute-of-medical-sciences-aiims-jodhpur';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #27 Medical',
    rankings_content = 'All India Institute of Medical Sciences - [AIIMS], Patna is listed in the Government of India NIRF 2025 tables at #27 Medical. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Medical #27']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'all-india-institute-of-medical-sciences-aiims-patna';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #31 Medical',
    rankings_content = 'All India Institute of Medical Sciences - [AIIMS], Raipur is listed in the Government of India NIRF 2025 tables at #31 Medical. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Medical #31']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'all-india-institute-of-medical-sciences-aiims-raipur';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #20 Law, #71 Management',
    rankings_content = 'Alliance University, Bangalore is listed in the Government of India NIRF 2025 tables at #20 Law, #71 Management. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Law #20', 'NIRF 2025 Management #71']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/LawRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ManagementRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'alliance-university-bangalore';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #15 Agriculture and Allied Sectors, #25 Architecture and Planning, #37 Engineering, #49 Management, #37 Overall, #18 Pharmacy, #38 Research, #22 University',
    rankings_content = 'Amity University is listed in the Government of India NIRF 2025 tables at #15 Agriculture and Allied Sectors, #25 Architecture and Planning, #37 Engineering, #49 Management, #37 Overall, #18 Pharmacy, #38 Research, #22 University. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Agriculture and Allied Sectors #15', 'NIRF 2025 Architecture and Planning #25', 'NIRF 2025 Engineering #37', 'NIRF 2025 Management #49', 'NIRF 2025 Overall #37', 'NIRF 2025 Pharmacy #18', 'NIRF 2025 Research #38', 'NIRF 2025 University #22']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/AgricultureRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ArchitectureRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ManagementRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/PharmacyRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'amity-noida';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #14 Dental, #23 Engineering, #26 Management, #9 Medical, #17 Overall, #14 Pharmacy, #31 Research, #8 University',
    rankings_content = 'Amrita Vishwa Vidyapeetham, Coimbatore is listed in the Government of India NIRF 2025 tables at #14 Dental, #23 Engineering, #26 Management, #9 Medical, #17 Overall, #14 Pharmacy, #31 Research, #8 University. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Dental #14', 'NIRF 2025 Engineering #23', 'NIRF 2025 Management #26', 'NIRF 2025 Medical #9', 'NIRF 2025 Overall #17', 'NIRF 2025 Pharmacy #14', 'NIRF 2025 Research #31', 'NIRF 2025 University #8']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/DentalRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ManagementRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/MedicalRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/OverallRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/PharmacyRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ResearchRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'amrita-vishwa-vidyapeetham-coimbatore';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #27 Agriculture and Allied Sectors',
    rankings_content = 'Anand Agricultural University - [AAU], Anand is listed in the Government of India NIRF 2025 tables at #27 Agriculture and Allied Sectors. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Agriculture and Allied Sectors #27']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/AgricultureRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'anand-agricultural-university-aau-anand';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #41 Overall, #4 State Public University, #23 University',
    rankings_content = 'Andhra University - [AU], Visakhapatnam is listed in the Government of India NIRF 2025 tables at #41 Overall, #4 State Public University, #23 University. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Overall #41', 'NIRF 2025 State Public University #4', 'NIRF 2025 University #23']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/OverallRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/STATEPUBLICUNIVERSITYRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'andhra-university-au-visakhapatnam';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #28 Architecture and Planning, #20 Engineering, #9 Innovation, #88 Management, #29 Overall, #26 Research, #2 State Public University, #20 University',
    rankings_content = 'Anna University, Chennai is listed in the Government of India NIRF 2025 tables at #28 Architecture and Planning, #20 Engineering, #9 Innovation, #88 Management, #29 Overall, #26 Research, #2 State Public University, #20 University. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Architecture and Planning #28', 'NIRF 2025 Engineering #20', 'NIRF 2025 Innovation #9', 'NIRF 2025 Management #88', 'NIRF 2025 Overall #29', 'NIRF 2025 Research #26', 'NIRF 2025 State Public University #2', 'NIRF 2025 University #20']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/ArchitectureRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/EngineeringRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/InnovationRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ManagementRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/OverallRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/ResearchRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/STATEPUBLICUNIVERSITYRanking.html","type":"official_ranking"},{"source":"https://www.nirfindia.org/Rankings/2025/UniversityRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'anna-university-chennai';

UPDATE public.colleges c
SET ranking = 'NIRF 2025: #37 Law',
    rankings_content = 'Army Institute of Law - [AIL], Mohali is listed in the Government of India NIRF 2025 tables at #37 Law. Each position belongs to a separate category and should be compared only within that category and year.',
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ARRAY['NIRF 2025 Law #37']::text[]) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || '[{"source":"https://www.nirfindia.org/Rankings/2025/LawRanking.html","type":"official_ranking"}]'::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = 'army-institute-of-law-ail-mohali';
DELETE FROM public.college_editorial_completion_queue q
WHERE NOT EXISTS (SELECT 1 FROM public.colleges c WHERE c.slug = q.college_slug);
COMMIT;
