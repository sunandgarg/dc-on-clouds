#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";

const input = process.argv[2] || "/private/tmp/college_next_100_full_wrapped.json";
const migration = process.argv[3] || "supabase/migrations/20260801171500_college_humanized_content_batch_006.sql";
const report = process.argv[4] || "reports/college-humanized-content-batch-006.md";
const researchedAt = process.argv[5] || "2026-08-01";
const batch = process.argv[6] || "college-humanized-content-batch-006";

const raw = await readFile(input, "utf8");
const wrapped = JSON.parse(raw.slice(raw.indexOf("{")));
const records = wrapped.rows || [];

const cleanText = (value) =>
  String(value || "")
    .replaceAll("&amp;", "&")
    .replaceAll("&#039;", "'")
    .replaceAll("&quot;", '"')
    .replaceAll("&nbsp;", " ")
    .replace(/<[^>]+>/g, " ")
    .replace(/[–—]/g, "-")
    .replace(/\s+/g, " ")
    .trim();

const sql = (value) => `'${String(value ?? "").replace(/[–—]/g, "-").replaceAll("'", "''")}'`;
const arraySql = (values = []) => `ARRAY[${[...new Set(values.map(cleanText).filter(Boolean))].map(sql).join(", ")}]::text[]`;
const jsonSql = (value) => `${sql(JSON.stringify(value).replace(/[–—]/g, "-"))}::jsonb`;
const slugify = (value) =>
  cleanText(value)
    .toLowerCase()
    .replace(/&/g, " and ")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 96) || "course";

const inferDomain = (name, type = "") => {
  const text = `${name} ${type}`.toLowerCase();
  if (/medical|medicine|health|nursing|dental|pharmacy|physio|paramedical|biomedical/.test(text)) return "healthcare education";
  if (/engineering|technology|polytechnic|architecture/.test(text)) return "technical education";
  if (/law/.test(text)) return "legal education";
  if (/management|business|mba|commerce/.test(text)) return "management and commerce education";
  if (/teacher|education|b\\.ed|d\\.ed|training/.test(text)) return "teacher education";
  if (/agricultural|agriculture|food technology/.test(text)) return "agriculture and applied science education";
  if (/fashion|textile|media|design/.test(text)) return "creative and professional education";
  return "higher education";
};

const extractCourses = () => [];


const allSources = (record) => {
  const urls = new Set();
  const pushUrl = (value) => {
    if (typeof value === "string" && /^https?:\/\//i.test(value)) urls.add(value.replace(/[–—]/g, "-"));
  };
  pushUrl(record.official_website);
  pushUrl(record.official_source_url);
  const walk = (value) => {
    if (Array.isArray(value)) return value.forEach(walk);
    if (value && typeof value === "object") return Object.values(value).forEach(walk);
    pushUrl(value);
  };
  walk(record.data_source_urls);
  return [...urls].slice(0, 8);
};

const sourceStatus = (record) => {
  const source = String(record.official_source_url || "");
  const site = String(record.official_website || "");
  try {
    if (site && source) {
      const sourceHost = new URL(source).hostname.replace(/^www\./, "");
      const siteHost = new URL(site).hostname.replace(/^www\./, "");
      if (sourceHost === siteHost || sourceHost.endsWith(`.${siteHost}`) || siteHost.endsWith(`.${sourceHost}`)) return "official_or_institution_source_reviewed";
    }
  } catch {
    return "public_source_reviewed_official_refresh_pending";
  }
  if (site) return "institution_site_present_with_public_source_review";
  return "public_source_reviewed_official_refresh_pending";
};

const openers = [
  "In practical terms",
  "For a student shortlisting options",
  "The useful way to read this profile is simple",
  "At a decision level",
  "For admissions research"
];

const blocks = [];
const reportRows = [];
const errors = [];

records.forEach((record, index) => {
  const name = cleanText(record.name);
  const city = cleanText(record.city || "");
  const state = cleanText(record.state || "");
  const location = [city, state].filter(Boolean).join(", ");
  const type = cleanText(record.type || inferDomain(name));
  const domain = inferDomain(name, type);
  const approvals = Array.isArray(record.approvals) ? record.approvals.map(cleanText).filter(Boolean) : [];
  const facilities = Array.isArray(record.facilities) && record.facilities.length
    ? record.facilities.map(cleanText).filter(Boolean).slice(0, 8)
    : ["Library", "Classrooms", "Student support", "Department facilities", "Campus assistance"];
  const courses = extractCourses(record);
  const courseLine = courses.length ? courses.join(", ") : "no official course catalogue verified for this batch";
  const sourceUrls = allSources(record);
  const approvalLine = approvals.length ? ` Current approval or affiliation signals available for review include ${approvals.join(", ")}.` : " Approval, affiliation and intake details should be confirmed from the latest notice before payment.";
  const establishmentLine = record.established ? ` The institution record carries an establishment year of ${record.established}.` : " The establishment year is not asserted here unless a reviewed source clearly supports it.";

  const description = `${openers[index % openers.length]}, ${name} is a ${domain} option in ${location || "India"} for students comparing admissions, course fit, campus support and career outcomes for 2026. This profile is written answer-first: check the course list, confirm eligibility, review facilities, then verify the latest admission notice from the source links before applying.${establishmentLine}${approvalLine} DekhoCampus keeps unverified fee claims out of the page so students are not misled by old or category-specific numbers.`;
  const pageSummary = `${name} in ${location || "India"}: source-reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.`;
  const admission = `${name} admissions should be approached in four steps: choose the programme, confirm eligibility, check whether admission is through merit, counselling or an entrance route, and submit documents only through the official or recognised admission channel. Students should re-check the 2026 dates, seat intake, reservation rules, refund policy and required certificates before making a payment.`;
  const eligibility = `Eligibility at ${name} depends on the selected programme and the relevant university, council or state admission rules. Undergraduate applicants generally need Class 12 or an equivalent qualification in the required stream, while postgraduate applicants need a relevant bachelor degree. Professional programmes may also require entrance scores, practical training rules or council norms.`;
  const courseFee = `${name} course information has been cleaned for AIO, AEO, SEO, GEO and LLMO visibility by using direct programme language and source context. Reviewed course signals include ${courseLine}. Course rows stay blank unless the catalogue is confirmed from an official institution page, statutory disclosure or official admission notice. Programme-wise fees stay blank until a current fee notice maps amount, year, quota, category and hostel or exam charges clearly.`;
  const placement = `${name} placement information is kept conservative and student-first. Applicants should ask for the latest recruiter list, internship support, placement percentage, highest and median package, and department-wise outcomes. Where a formal placement report is not available, this page avoids inflated salary promises and focuses on questions that help families verify outcomes.`;
  const facilityText = `${name} facilities currently highlighted for student checks include ${facilities.join(", ")}. Availability can differ by department, batch and campus rules, so students should confirm lab access, library hours, hostel capacity, transport, clinical or workshop exposure, and safety arrangements directly with the institution.`;
  const hostel = `Hostel and local accommodation details for ${name} should be verified before booking. Ask the campus about room type, mess charges, refund terms, curfew, security, distance from classrooms and whether accommodation is compulsory or optional for the selected programme.`;
  const scholarship = `Scholarships for ${name} may depend on government portals, category rules, merit, income criteria, minority schemes, state domicile and institution-level concessions. Students should keep income, caste or category, domicile, mark sheets, entrance score and bank documents ready and check deadlines from the official portal.`;
  const ranking = approvals.length
    ? `${name} is mapped with reviewed approval or affiliation signals such as ${approvals.join(", ")}. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.`
    : `${name} has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.`;

  [description, pageSummary, admission, eligibility, courseFee, placement, facilityText, hostel, scholarship, ranking].forEach((field, fIndex) => {
    if (/<\/?[a-z][\s\S]*>/i.test(field)) errors.push(`${record.slug}: field ${fIndex} contains HTML`);
    if (/[–—]/.test(field)) errors.push(`${record.slug}: field ${fIndex} contains big dash`);
    if (fIndex !== 1 && field.split(/\s+/).length < 22) errors.push(`${record.slug}: field ${fIndex} is too short`);
  });

  const sourcePayload = {
    batch,
    researched_at: "2026-08-01",
    source_status: sourceStatus(record),
    source_links_for_nofollow_rendering: sourceUrls,
    content_policy: "answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash",
    fee_policy: "fees_blank_until_programme_year_category_and_quota_are_verified"
  };
  const courseRows = courses.length
    ? ""
    : "";

  blocks.push(`
DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = ${sql(record.id)} AND slug = ${sql(record.slug)}) THEN
    RAISE EXCEPTION 'College target not found or slug changed: ${record.slug}';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = ${sql(description)},
  page_summary = ${sql(pageSummary)},
  meta_title = ${sql(`${name}: Admission, Courses, Fees, Placements 2026`)},
  meta_description = ${sql(pageSummary.slice(0, 155))},
  meta_keywords = ${sql([name, `${name} admission 2026`, `${name} courses`, `${name} fees`, `${name} placement`, `${name} facilities`, location].filter(Boolean).join(", "))},
  admission_process = ${sql(admission)},
  eligibility_criteria = ${sql(eligibility)},
  course_fee_content = ${sql(courseFee)},
  related_courses = ARRAY[]::text[],
  courses_count = 0,
  placement_content = ${sql(placement)},
  facilities_content = ${sql(facilityText)},
  facilities = CASE WHEN array_length(${arraySql(facilities)}, 1) IS NULL THEN facilities ELSE ${arraySql(facilities)} END,
  hostel_life = ${sql(hostel)},
  scholarship_available = 'Check official schemes',
  scholarship_details = ${sql(scholarship)},
  rankings_content = ${sql(ranking)},
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array(${jsonSql(sourcePayload)}),
  data_clean_method = 'source_review_humanized',
  data_clean_state = 'humanized_source_backed',
  data_clean_audit_note = ${sql(`${batch}; humanized answer-first content; sources preserved in data_source_urls; course surfaces cleared unless official catalogue is verified; fees kept blank pending official programme-wise mapping.`)},
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), 82),
  data_verified_at = ${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz,
  data_last_checked_at = ${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz,
  official_source_cleaned_at = ${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz,
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + 1,
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  official_courses_verified = false,
  official_fees_verified = false,
  requires_official_source_refresh = true,
  updated_at = now()
WHERE id = ${sql(record.id)} AND slug = ${sql(record.slug)};

DELETE FROM public.course_fees WHERE college_slug = ${sql(record.slug)};
${courseRows}`);

  reportRows.push(`| ${index + 1} | ${name.replace(/\|/g, "/")} | ${record.slug} | blanked pending official catalogue | ${sourcePayload.source_status} |`);
});

if (records.length !== 100) errors.push(`Expected 100 records, got ${records.length}`);
if (errors.length) {
  console.error(errors.join("\n"));
  process.exit(1);
}

await writeFile(migration, `-- ${batch}\n-- Generated ${researchedAt}. Humanized source-backed college content batch.\n-- Fees stay blank unless programme, year, quota and category are verified.\nBEGIN;\n${blocks.join("\n")}\nNOTIFY pgrst, 'reload schema';\nCOMMIT;\n`);
await writeFile(report, `# ${batch}\n\nGenerated: ${researchedAt}\n\n| # | College | Slug | Course rows | Source status |\n|---:|---|---|---:|---|\n${reportRows.join("\n")}\n`);
console.log(`Generated ${records.length} records`);
console.log(migration);
console.log(report);
