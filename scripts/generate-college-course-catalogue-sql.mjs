#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";

const input = resolve(process.argv[2] || "data/college-official-enrichment/batch-002-course-catalogues.json");
const output = resolve(process.argv[3] || "supabase/migrations/20260729190000_iit_bombay_complete_official_course_catalogue.sql");
const data = JSON.parse(await readFile(input, "utf8"));
const literal = (value) => `'${String(value ?? "").split("'").join("''")}'`;
const textArray = (values) => `ARRAY[${values.map(literal).join(", ")}]::text[]`;
const json = (value) => `${literal(JSON.stringify(value))}::jsonb`;
const blocks = [];

for (const record of data.records) {
  const sourcePatch = {
    course_catalogue: record.sources,
    course_catalogue_scope: record.catalogue_scope,
    course_catalogue_checked_at: data.researched_at,
    fee_verification: record.fee_verification,
    batch: data.batch
  };

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
  related_courses = ${textArray(record.related_courses)},
  courses_count = ${record.courses.length},
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || ${json(sourcePatch)},
  data_clean_method = 'official_source',
  data_clean_state = 'verified',
  data_clean_audit_note = ${literal(`Complete advertised programme and specialisation catalogue verified from official 2026-27 academic pages in ${data.batch}. Fees remain blank because the official circular varies by programme and student category.`)},
  data_quality_score = 92,
  data_verified_at = ${literal(`${data.researched_at}T00:00:00+05:30`)}::timestamptz,
  data_last_checked_at = ${literal(`${data.researched_at}T00:00:00+05:30`)}::timestamptz,
  official_source_cleaned_at = ${literal(`${data.researched_at}T00:00:00+05:30`)}::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = true,
  official_fees_verified = false,
  requires_official_source_refresh = false,
  updated_at = now()
WHERE slug = ${literal(record.slug)};

DELETE FROM public.course_fees WHERE college_slug = ${literal(record.slug)};

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
${record.courses.map((course) =>
  `  (${literal(record.slug)}, ${literal(course.slug)}, ${literal(course.name)}, NULL, NULL, ${literal(data.researched_at.slice(0, 4))})`
).join(",\n")};
`);
}

const sql = `-- Generated from ${input.split("/").slice(-3).join("/")}
-- Replaces generic degree-family rows with a complete official course catalogue.
-- Images and logos are deliberately untouched. Unverified fees remain NULL.
BEGIN;
${blocks.join("\n")}
NOTIFY pgrst, 'reload schema';
COMMIT;
`;

await writeFile(output, sql);
console.log(`Wrote ${data.records.length} records to ${output}`);
