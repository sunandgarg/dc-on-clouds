#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";

const inputs = ["a", "b", "c"].map((part) =>
  resolve(`data/college-official-enrichment/research-next-50-${part}.json`),
);
const output = resolve(
  process.argv[2] ||
    "supabase/migrations/20260730123000_next_50_college_official_course_refresh.sql",
);

const batches = await Promise.all(
  inputs.map(async (file) => JSON.parse(await readFile(file, "utf8"))),
);
const records = batches.flat();
const productionSlugs = [
  "a-b-shetty-memorial-institute-of-dental-sciences-absmids-mangalore",
  "a-radiant-institute-of-management-and-technology-arimt-meerut",
  "a-d-patel-institute-of-technology-adit-vallabh-vidyanagar",
  "a-k-choudhury-school-of-information-technology-kolkata",
  "a-p-shah-institute-of-technology-apsit-thane",
  "a-v-patil-degree-college-of-arts-science-and-commerce-gulbarga",
  "acpm-dental-college-dhule",
  "acs-medical-college-and-hospital-chennai",
  "adm-college-for-women-admc-nagapattinam",
  "ag-amp-sg-siddhartha-degree-college-of-arts-and-science-krishna",
  "ag-college-of-education-coimbatore",
  "aj-college-of-science-and-technology-thonnakkal-thiruvananthapuram",
  "aj-institute-of-dental-sciences-mangalore",
  "ajk-mass-communication-research-centre-new-delhi",
  "akd-dharmaraja-college-for-women-rajapalayam",
  "akg-memorial-co-operative-college-of-nursing-kannur",
  "akk-new-law-academy-pune",
  "akt-memorial-college-of-education-villupuram",
  "am-college-gaya",
  "am-shaikh-homoeopathic-medical-college-asmc-belgaum",
  "ame039s-dental-college-and-hospital-raichur",
  "amreddy-memorial-college-of-pharmacy-guntur",
  "apc-mahalaxmi-college-for-women-thoothukudi",
  "ar-college-of-engineering-and-technology-arcet-tirunelveli",
  "ar-engineering-college-arec-villupuram",
  "asl-pauls-college-of-engineering-amp-technology-kinathukkadavu-aslpcet-coimbatore",
  "av-college-of-arts-science-and-commerce-av-college-hyderabad",
  "avc-college-of-engineering-avcce-nagapattinam",
  "awh-college-of-education-calicut",
  "aadhi-bhagawan-college-of-pharmacy-chennai",
  "aadinath-mahila-teacher039s-training-college-udaipur",
  "aakash-college-of-education-fatehabad",
  "aakash-college-of-education-hisar",
  "aakash-institute-of-business-management-aibm-mallathalli-bangalore",
  "aakashline-institute-new-delhi",
  "aakson-institute-for-management-studies-aims-bangalore",
  "aalim-muhammed-salegh-academy-of-architecture-chennai",
  "aalim-muhammed-salegh-college-of-engineering-aalimec-chennai",
  "aarupadai-veedu-institute-of-technology-avit-chennai",
  "aarupadai-veedu-medical-college-avmc-pondicherry",
  "aasee-college-of-education-karur",
  "aashlar-business-school-abs-mathura",
  "aayojan-school-of-architecture-asa-jaipur",
  "abacus-institute-of-computer-applications-aica-hadapsar-pune",
  "abacus-institute-of-engineering-and-management-hooghly",
  "abasaheb-garware-institute-of-management-studies-agims-sangli",
  "abasaheb-marathe-arts-and-new-commerce-science-college-ratnagiri",
  "abasaheb-parvekar-mahavidyalaya-yavatmal",
  "abdul-aziz-ansari-degree-college-jaunpur",
  "abdul-razak-degree-college-ardc-jyotiba-phule-nagar",
];
records.forEach((record, index) => {
  record.production_slug = productionSlugs[index];
});
const errors = [];
const seen = new Set();

const literal = (value) => `'${String(value ?? "").replaceAll("'", "''")}'`;
const slugify = (value) =>
  String(value)
    .toLowerCase()
    .replace(/&/g, " and ")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "");

const isVerified = (record) => {
  if (!Array.isArray(record.courses) || record.courses.length === 0) return false;
  if (record.official_courses_verified === true) return true;
  return String(record.confidence || "").toLowerCase() === "high";
};

if (records.length !== 50) errors.push(`Expected 50 records, found ${records.length}`);
if (productionSlugs.length !== records.length) {
  errors.push(`Expected one production slug per record, found ${productionSlugs.length}`);
}

for (const record of records) {
  if (!record.name || seen.has(record.name)) errors.push(`Missing or duplicate name: ${record.name}`);
  seen.add(record.name);
  if (!Array.isArray(record.sources) || !record.sources.length) {
    errors.push(`${record.name}: at least one source is required`);
  }
  if (!Array.isArray(record.courses)) errors.push(`${record.name}: courses must be an array`);
  if (/[\u2013\u2014]/.test(JSON.stringify(record))) errors.push(`${record.name}: large dash found`);
  const courseNames = new Set(record.courses || []);
  if (courseNames.size !== (record.courses || []).length) errors.push(`${record.name}: duplicate course name`);
}

if (errors.length) {
  console.error(errors.join("\n"));
  process.exit(1);
}

const blocks = records.map((record) => {
  const verified = isVerified(record);
  const sources = {
    course_catalogue: record.sources,
    course_catalogue_scope: verified ? "complete_advertised_catalogue" : "provisional_requires_review",
    course_catalogue_checked_at: "2026-07-30",
    fee_verification: "fees_blank_unless_a_complete_programme_year_and_category_mapping_is_reviewed",
    batch: "college-official-course-refresh-next-50",
  };
  const update = `
UPDATE public.colleges
SET
  ${record.official_url ? `official_website = ${literal(record.official_url)},` : ""}
  official_source_url = ${literal(record.sources[0])},
  data_source_urls = COALESCE(data_source_urls, '{}'::jsonb) || ${literal(JSON.stringify(sources))}::jsonb,
  official_courses_verified = ${verified},
  official_fees_verified = false,
  requires_official_source_refresh = true,
  ${verified ? `courses_count = ${record.courses.length},` : ""}
  data_clean_audit_note = ${literal(
    verified
      ? "Official course catalogue verified in next-50 source pass. Fees remain blank unless separately mapped. Narrative sections still require the campus-specific official-source pass."
      : `Course catalogue researched but not published because primary-source verification is incomplete. ${record.note || ""}`,
  )},
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  updated_at = now()
WHERE slug = ${literal(record.production_slug)};`;

  if (!verified) return update;

  const courseRows = record.courses
    .map(
      (course) =>
        `  (college.slug, ${literal(slugify(course))}, ${literal(course)}, NULL::numeric, NULL::text, '2026'::text)`,
    )
    .join(",\n");

  return `${update}

DELETE FROM public.course_fees
WHERE college_slug = (
  SELECT slug FROM public.colleges WHERE slug = ${literal(record.production_slug)}
);

INSERT INTO public.course_fees (college_slug, course_slug, course_name, fee_amount, fee_type, year)
SELECT rows.college_slug, rows.course_slug, rows.course_name, rows.fee_amount, rows.fee_type, rows.year
FROM (
  SELECT slug FROM public.colleges WHERE slug = ${literal(record.production_slug)}
) AS college
CROSS JOIN LATERAL (
  VALUES
${courseRows}
) AS rows(college_slug, course_slug, course_name, fee_amount, fee_type, year);`;
});

const slugs = records.map((record) => literal(record.production_slug)).join(",\n    ");
const sql = `-- Generated from the three reviewed next-50 research manifests.
-- Images and logos are intentionally untouched.
-- Fees remain NULL in this pass.
BEGIN;

DO $preflight$
DECLARE
  requested_slug text;
  matches integer;
BEGIN
  FOREACH requested_slug IN ARRAY ARRAY[
    ${slugs}
  ]::text[]
  LOOP
    SELECT count(*) INTO matches
    FROM public.colleges
    WHERE slug = requested_slug;
    IF matches <> 1 THEN
      RAISE EXCEPTION 'Expected exactly one production college slug %, found %', requested_slug, matches;
    END IF;
  END LOOP;
END
$preflight$;

${blocks.join("\n\n")}

NOTIFY pgrst, 'reload schema';
COMMIT;
`;

await writeFile(output, sql);
console.log(
  JSON.stringify({
    output,
    researched: records.length,
    official_course_catalogues: records.filter(isVerified).length,
    held_for_review: records.filter((record) => !isVerified(record)).length,
  }),
);
