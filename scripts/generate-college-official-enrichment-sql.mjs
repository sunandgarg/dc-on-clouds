#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";

const input = resolve(process.argv[2] || "data/college-official-enrichment/batch-001.json");
const output = resolve(process.argv[3] || "supabase/migrations/20260729170000_college_official_enrichment_batch_001.sql");
const data = JSON.parse(await readFile(input, "utf8"));

const literal = (value) => `'${String(value ?? "").split("'").join("''")}'`;
const textArray = (values) => `ARRAY[${values.map(literal).join(", ")}]::text[]`;
const json = (value) => `${literal(JSON.stringify(value))}::jsonb`;
const blocks = [];

for (const record of data.records) {
  const sources = {
    ...record.sources,
    researched_at: data.researched_at,
    batch: data.batch,
    fee_policy: "blank_until_programme_year_and_category_are_verified"
  };
  const metaTitle = `${record.name}: Courses, Admission, Fees & Ranking 2026`;
  const metaDescription = record.page_summary.slice(0, 155);
  const metaKeywords = `${record.name}, ${record.name} admission 2026, ${record.name} courses, ${record.name} fees, ${record.name} placement, ${record.name} hostel, ${record.name} ranking`;
  const coursesComplete = record.courses_scope === "complete";
  blocks.push(`
DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE slug = ${literal(record.slug)}) THEN
    RAISE EXCEPTION 'College slug not found: ${record.slug}';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  official_website = ${literal(record.official_website)},
  official_source_url = ${literal(record.sources.official[0])},
  established = ${Number(record.established)},
  type = ${literal(record.type)},
  approvals = ${textArray(record.approvals)},
  naac_grade = ${literal(record.naac_grade)},
  ranking = ${literal(record.ranking)},
  fees = '',
  placement = ${literal(record.slug === "aiims-delhi" ? "Clinical, residency and research pathways" : "See latest official placement report")},
  top_recruiters = ARRAY[]::text[],
  description = ${literal(record.description)},
  page_summary = ${literal(record.page_summary)},
  meta_title = ${literal(metaTitle)},
  meta_description = ${literal(metaDescription)},
  meta_keywords = ${literal(metaKeywords)},
  admission_process = ${literal(record.admission_process)},
  eligibility_criteria = ${literal(record.eligibility_criteria)},
  course_fee_content = ${literal(record.course_fee_content)},
  placement_content = ${literal(record.placement_content)},
  facilities_content = ${literal(record.facilities_content)},
  facilities = ${textArray(record.facilities)},
  hostel_life = ${literal(record.hostel_life)},
  scholarship_available = ${literal(record.scholarship_available ? "Yes" : "No")},
  scholarship_details = ${literal(record.scholarship_details)},
  rankings_content = ${literal(record.rankings_content)},
  related_courses = ${textArray(record.related_courses)},
  courses_count = ${record.courses.length},
  data_source_urls = ${json(sources)},
  data_clean_method = 'official_source',
  data_clean_state = ${literal(coursesComplete ? "verified" : "official_partial")},
  data_clean_audit_note = ${literal(`Official-source enrichment ${data.batch}; ${coursesComplete ? "complete course catalogue verified" : "programme families verified, branch/specialisation catalogue pending"}; fees intentionally blank pending programme-specific official circular mapping.`)},
  data_quality_score = ${coursesComplete ? 90 : 84},
  data_verified_at = ${literal(`${data.researched_at}T00:00:00+05:30`)}::timestamptz,
  data_last_checked_at = ${literal(`${data.researched_at}T00:00:00+05:30`)}::timestamptz,
  official_source_cleaned_at = ${literal(`${data.researched_at}T00:00:00+05:30`)}::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = ${coursesComplete ? "true" : "false"},
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE slug = ${literal(record.slug)};

UPDATE public.college_contacts
SET address = ${literal(record.address)}, website = ${literal(record.official_website)}, updated_at = now()
WHERE college_slug = ${literal(record.slug)};

INSERT INTO public.college_contacts (college_slug, address, website)
SELECT ${literal(record.slug)}, ${literal(record.address)}, ${literal(record.official_website)}
WHERE NOT EXISTS (
  SELECT 1 FROM public.college_contacts WHERE college_slug = ${literal(record.slug)}
);

DELETE FROM public.course_fees WHERE college_slug = ${literal(record.slug)};

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
${record.courses.map((course) => `  (${literal(record.slug)}, ${literal(course.slug)}, ${literal(course.name)}, NULL, NULL, ${literal(data.researched_at.slice(0, 4))})`).join(",\n")};
`);
}

const sql = `-- Generated from ${input.split("/").slice(-3).join("/")}
-- Official-source enrichment is intentionally campus-specific.
-- Course fees remain NULL until an official programme/year/category amount is verified.
BEGIN;
${blocks.join("\n")}
NOTIFY pgrst, 'reload schema';
COMMIT;
`;

await writeFile(output, sql);
console.log(`Wrote ${data.records.length} records to ${output}`);
