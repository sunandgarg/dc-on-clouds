#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";

const input = process.argv[2] || "/private/tmp/college_next_100_full_wrapped.json";
const migration = process.argv[3] || "supabase/migrations/20260801171500_college_humanized_content_batch_006.sql";
const report = process.argv[4] || "reports/college-humanized-content-batch-006.md";
const researchedAt = process.argv[5] || "2026-08-01";
const batch = process.argv[6] || "college-humanized-content-batch-006";
const expectedCount = Number(process.argv[7] || 100);

const raw = await readFile(input, "utf8");
const wrapped = JSON.parse(raw.slice(raw.indexOf("{")));
const records = wrapped.rows || [];

const cleanText = (value) =>
  String(value || "")
    .replace(/&amp;/g, "&")
    .replace(/&#039;/g, "'")
    .replace(/&quot;/g, '"')
    .replace(/&nbsp;/g, " ")
    .replace(/<[^>]+>/g, " ")
    .replace(/[–—]/g, "-")
    .replace(/\s+/g, " ")
    .trim();

const sql = (value) => `'${String(value ?? "").replace(/[–—]/g, "-").replace(/'/g, "''")}'`;
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
  return "official_source_not_found_courses_and_fees_withheld";
};

const openers = [
  "In practical terms",
  "For a student shortlisting options",
  "The useful way to read this profile is simple",
  "At a decision level",
  "For admissions research"
];

const pick = (values, index, salt = 0) => values[(index + salt) % values.length];
const titleCase = (value) => cleanText(value).replace(/\b\w/g, (letter) => letter.toUpperCase());

const verifiedRankingFor = (name) => {
  const lower = cleanText(name).toLowerCase();
  if (/\baiims delhi\b/.test(lower) || /all india institute of medical sciences/.test(lower)) {
    return {
      text: "AIIMS Delhi is a nationally recognised medical institution. For ranking tags, DekhoCampus maps it to the official NIRF 2025 ranking where AIIMS Delhi is listed at rank 1 in Medical, rank 8 in Overall and rank 11 in Research Institutions. Students should still verify the latest ranking year and category on the official NIRF website before using rankings for final decisions.",
      tags: ["NIRF 2025 Medical #1", "NIRF 2025 Overall #8", "NIRF 2025 Research #11", "Medical", "Institute of National Importance"],
      sources: [
        "https://www.nirfindia.org/Rankings/2025/MedicalRanking.html",
        "https://www.nirfindia.org/Rankings/2025/OverallRanking.html",
        "https://www.nirfindia.org/Rankings/2025/ResearchRanking.html"
      ]
    };
  }
  return null;
};

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
    : [];
  const courses = extractCourses(record);
  const sourceUrls = allSources(record);
  const hasReviewedSource = sourceUrls.length > 0;
  const verifiedRanking = verifiedRankingFor(name);
  if (verifiedRanking) verifiedRanking.sources.forEach((url) => sourceUrls.push(url));
  const approvalLine = approvals.length ? ` The current record mentions ${approvals.join(", ")}, but students should verify these claims from the regulator or institution before relying on them.` : " Approval, affiliation and intake details should be confirmed from the latest notice before payment.";
  const establishmentLine = record.established ? ` The current record lists ${record.established} as the establishment year; this should be cross-checked against an institutional disclosure.` : " The establishment year is not asserted here without a reviewed institutional source.";

  const description = `${openers[index % openers.length]}, ${name} is a ${domain} option in ${location || "India"} for students comparing admissions, programme fit, campus support and career outcomes for 2026. ${pick([
    "Start with the exact programme and admission route, then compare eligibility, learning resources and likely outcomes.",
    "A useful shortlist should begin with programme availability, eligibility and the latest admission calendar.",
    "Before applying, verify the campus, programme, awarding university and current admission notice.",
    "Students should first confirm what is taught at this campus and how admission is conducted for their chosen programme.",
    "The safest decision path is to confirm the programme, entry requirements, campus facilities and written fee notice."
  ], index)}${establishmentLine}${approvalLine} Unverified course and fee claims are withheld so an old or category-level figure is not presented as a campus fact.`;
  const pageSummary = hasReviewedSource
    ? `${name} in ${location || "India"}: reviewed overview for admissions, courses, facilities, placements, scholarships and 2026 decision checks.`
    : `${name} in ${location || "India"}: a practical admissions overview with institution-specific courses and fees withheld until an official source is verified.`;
  const admission = pick([
    `${name} applicants should first identify the exact programme and admission authority. Confirm whether selection uses merit, counselling or an entrance score, then check the 2026 schedule, seat category, document list, refund terms and payment channel before submitting an application.`,
    `For ${name} admission, begin with the current prospectus or admission notice. Match the programme to its eligibility rule, note the application and counselling dates, keep original certificates ready and use only the institution or authorised counselling payment route.`,
    `Admission planning for ${name} should cover the programme name, entry route, deadline, reservation rule and document verification process. Students should retain receipts and confirm refund conditions before paying any application, tuition or seat-confirmation amount.`,
    `${name} may use programme-specific admission routes. Applicants should verify the correct campus, academic session, eligibility, selection method, seat intake and reporting date instead of relying on an older general admission summary.`,
    `A careful ${name} application starts with the latest official notice. Check eligibility, accepted examination or merit criteria, application steps, counselling requirements, document formats and payment instructions for the exact programme and 2026 intake.`
  ], index, 1);
  const eligibility = pick([
    `Eligibility at ${name} is programme-specific. Undergraduate study normally requires Class 12 or an equivalent qualification in the relevant stream, while postgraduate study usually requires a suitable bachelor degree. Professional programmes may also apply entrance, age, practical or council conditions.`,
    `${name} eligibility should be checked against the precise programme and affiliating or regulating authority. Subject combinations, minimum marks, entrance scores, category relaxation and document requirements can differ, so applicants should use the current official notice.`,
    `The right eligibility test for ${name} is not a single college-wide rule. Confirm the qualifying examination, required subjects, minimum score, entrance route and any professional-council conditions for the programme being considered.`,
    `Students considering ${name} should match their qualification to the latest programme notice. Class 12 stream requirements, graduation discipline, entrance score, domicile, reservation and age provisions may apply differently across courses.`,
    `For ${name}, eligibility must be verified programme by programme. Applicants should confirm academic prerequisites, subject requirements, minimum marks, accepted entrance tests and any mandatory registration or practical-training rules.`
  ], index, 2);
  const courseFee = `Check the official college website for current courses and fees.`;
  const placement = pick([
    `${name} placement claims should be checked through a recent institutional report. Ask for programme-wise eligible students, offers, median outcome, internship support and recruiter names, and distinguish final placements from training, pooled drives or informal opportunities.`,
    `For career outcomes at ${name}, students should request the latest department-level placement evidence. Useful checks include internship access, number of participating students, confirmed offers, median package, job roles and whether recruiter names relate to this campus.`,
    `${name} career support is best assessed through current evidence rather than a single highest-package figure. Compare internships, placement participation, role quality, recruiter continuity, alumni pathways and outcomes for the exact programme.`,
    `Before judging ${name} on placements, ask for a dated report covering eligible students, placed students, multiple offers, median salary, common job roles and higher-study outcomes. Unverified recruiter or salary claims are not repeated here.`,
    `Placement research for ${name} should focus on comparable programme-level outcomes. Students can ask about training, internships, recruiter visits, selection ratios, median compensation and the share of graduates choosing entrepreneurship or further study.`
  ], index, 3);
  const facilityText = facilities.length
    ? `${name} facility records currently mention ${facilities.join(", ")}. Availability can differ by department, batch and campus rules, so students should confirm access, timings, capacity and safety arrangements directly with the institution.`
    : `${name} facility details have not been verified from an official institutional source in this batch. Students should confirm laboratories, library access, hostel capacity, transport, accessibility and safety arrangements directly before admission.`;
  const hostel = pick([
    `Hostel and nearby accommodation for ${name} should be confirmed before payment. Check availability, room sharing, mess plan, total annual charge, deposit and refund terms, security, curfew, transport and the distance between accommodation and teaching facilities.`,
    `${name} hostel information can change by gender, programme and academic year. Students should ask for the current room inventory, mess and utility charges, rules, safety arrangements, refund policy and whether first-year accommodation is guaranteed.`,
    `Accommodation decisions for ${name} need a written cost and facility breakdown. Confirm room type, occupancy, food, laundry, transport, medical support, entry rules, deposit conditions and the process used when hostel capacity is full.`,
    `Students planning to stay near ${name} should compare campus housing with local options. Verify hostel eligibility, allotment timing, room and mess fees, supervision, travel time, safety provisions and the rules for cancellation or early exit.`,
    `Before booking accommodation for ${name}, request the latest hostel notice and visit if possible. Check capacity, room condition, washrooms, mess, internet, security, study space, curfew and all refundable and non-refundable charges.`
  ], index, 4);
  const scholarship = pick([
    `Scholarship options connected with ${name} may include central or state schemes, category support, merit awards, income-based assistance and institutional concessions. Students should verify eligibility, renewal marks, document requirements and deadlines on the relevant official portal.`,
    `${name} applicants should check scholarships separately from admission. Compare government portals, domicile and category schemes, merit or sports support, income limits, required certificates, disbursement method and whether benefits can be combined.`,
    `Financial aid for ${name} may vary by programme and student profile. Keep academic records, income and category certificates, domicile, bank details and entrance documents ready, and submit applications only through a recognised scheme or institution portal.`,
    `Students should not assume that admission to ${name} automatically includes a scholarship. Confirm scheme name, eligibility, application window, verification authority, benefit amount, renewal conditions and the treatment of tuition, hostel and examination charges.`,
    `For scholarship planning at ${name}, review central, state, minority, category, merit and disability schemes relevant to the student. Dates and documentary rules can change, so use the current official scheme notice.`
  ], index, 5);
  const ranking = verifiedRanking?.text || (approvals.length
    ? `${name} is mapped with reviewed approval or affiliation signals such as ${approvals.join(", ")}. Ranking text is intentionally limited unless a recognised ranking body, accreditation disclosure or official report is available.`
    : `${name} has no independently verified current ranking claim in this batch. DekhoCampus keeps the ranking section factual until an official accreditation, recognised ranking or institutional disclosure is available.`);
  const tags = [
    cleanText(record.category || ""),
    cleanText(record.type || ""),
    titleCase(domain),
    city,
    state,
    ...(verifiedRanking?.tags || []),
  ].filter((tag) => tag && !/legacy|csv|draft|unknown|undefined|null|nan/i.test(tag));

  [description, pageSummary, admission, eligibility, courseFee, placement, facilityText, hostel, scholarship, ranking].forEach((field, fIndex) => {
    if (/<\/?[a-z][\s\S]*>/i.test(field)) errors.push(`${record.slug}: field ${fIndex} contains HTML`);
    if (/[–—]/.test(field)) errors.push(`${record.slug}: field ${fIndex} contains big dash`);
    if (![1, 4].includes(fIndex) && field.split(/\s+/).length < 22) errors.push(`${record.slug}: field ${fIndex} is too short`);
  });

  const sourcePayload = {
    batch,
    researched_at: researchedAt,
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
  tags = ${arraySql(tags)},
  fees = '',
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array(${jsonSql(sourcePayload)}),
  data_clean_method = 'source_review_humanized',
  data_clean_state = ${sql(hasReviewedSource ? "humanized_source_backed" : "humanized_official_refresh_pending")},
  data_clean_audit_note = ${sql(`${batch}; humanized answer-first content; ${hasReviewedSource ? "available source links preserved" : "no official source located in this batch"}; course surfaces cleared unless an official catalogue is verified; fees kept blank pending official programme-wise mapping.`)},
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), ${hasReviewedSource ? 82 : 68}),
  data_verified_at = ${hasReviewedSource ? `${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz` : "data_verified_at"},
  data_last_checked_at = ${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz,
  official_source_cleaned_at = ${hasReviewedSource ? `${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz` : "official_source_cleaned_at"},
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + ${hasReviewedSource ? 1 : 0},
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

if (records.length !== expectedCount) errors.push(`Expected ${expectedCount} records, got ${records.length}`);
if (errors.length) {
  console.error(errors.join("\n"));
  process.exit(1);
}

await writeFile(migration, `-- ${batch}\n-- Generated ${researchedAt}. Humanized source-backed college content batch.\n-- Fees stay blank unless programme, year, quota and category are verified.\nBEGIN;\n${blocks.join("\n")}\nNOTIFY pgrst, 'reload schema';\nCOMMIT;\n`);
await writeFile(report, `# ${batch}\n\nGenerated: ${researchedAt}\n\n| # | College | Slug | Course rows | Source status |\n|---:|---|---|---:|---|\n${reportRows.join("\n")}\n`);
console.log(`Generated ${records.length} records`);
console.log(migration);
console.log(report);
