#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";

const inputs = ["a", "b", "c"].map((part) =>
  resolve(`data/college-official-enrichment/research-next-50-${part}.json`),
);
const output = resolve(
  process.argv[2] ||
    "supabase/migrations/20260730133000_next_50_college_content_refresh.sql",
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

const literal = (value) => `'${String(value ?? "").replace(/'/g, "''")}'`;
const isVerified = (record) =>
  Array.isArray(record.courses) &&
  record.courses.length > 0 &&
  (record.official_courses_verified === true ||
    String(record.confidence || "").toLowerCase() === "high");

const classify = (record) => {
  const haystack = `${record.name} ${(record.courses || []).join(" ")}`.toLowerCase();
  if (/dental|dentistry|bds|mds/.test(haystack)) return "dental";
  if (/medical|medicine|mbbs|homoeopath|md |ms /.test(haystack)) return "medical";
  if (/nursing|gnm/.test(haystack)) return "nursing";
  if (/pharmacy|pharm/.test(haystack)) return "pharmacy";
  if (/architecture|b\\.arch/.test(haystack)) return "architecture";
  if (/engineering|technology|b\\.tech|b\\.e\\./.test(haystack)) return "engineering";
  if (/education|b\\.ed|teacher/.test(haystack)) return "education";
  if (/law|llb|ll\\.b/.test(haystack)) return "law";
  if (/management|business|mba|bba/.test(haystack)) return "management";
  if (/computer|information technology|bca|mca/.test(haystack)) return "computing";
  if (/mass communication|journalism|media/.test(haystack)) return "media";
  return "multidisciplinary";
};

const guidance = {
  dental: {
    admission:
      "For dental programmes, confirm the current counselling authority, qualifying examination, internship rules, seat category and document schedule before applying.",
    facilities:
      "For a useful campus comparison, verify teaching clinics, laboratories, patient exposure, radiology access, library resources and the hospital or clinical training arrangement.",
    careers:
      "Dental outcomes depend on clinical competence, registration, internship completion and the chosen speciality. Compare internship exposure and programme-level disclosures rather than relying on a single package claim.",
  },
  medical: {
    admission:
      "For medical programmes, use the current counselling notification and confirm the qualifying examination, recognised intake, reservation rules, service conditions and document requirements.",
    facilities:
      "Verify the teaching hospital, clinical departments, laboratories, library, skills facilities, patient exposure and accommodation arrangements for the exact campus.",
    careers:
      "Medical progression is shaped by registration, internship or residency requirements and speciality training. Placement-style salary claims are not a substitute for recognised clinical training.",
  },
  nursing: {
    admission:
      "Confirm the qualifying subjects, minimum age where applicable, nursing-council recognition, medical-fitness requirement and the current selection route.",
    facilities:
      "Check skills laboratories, hospital attachments, clinical rotations, library access, community-health exposure and hostel rules before accepting a seat.",
    careers:
      "Nursing outcomes depend on clinical hours, registration eligibility, practical competence and the healthcare settings used for training.",
  },
  pharmacy: {
    admission:
      "Confirm the required science subjects, entrance or counselling route, Pharmacy Council approval and the latest intake before applying.",
    facilities:
      "Compare pharmaceutics, chemistry, pharmacology and pharmacognosy laboratories, instrumentation access, library resources and industry or hospital exposure.",
    careers:
      "Relevant outcomes may include industry, hospital pharmacy, research, quality, regulatory and higher-study pathways. Use programme-level evidence when judging career support.",
  },
  architecture: {
    admission:
      "Confirm the current architecture aptitude-test requirement, qualifying subjects, counselling route, portfolio expectations and Council of Architecture status.",
    facilities:
      "Verify design studios, model-making and material facilities, computing resources, library collections, workshops and field-study opportunities.",
    careers:
      "Architecture outcomes depend heavily on studio work, software ability, internships, portfolio quality and professional-registration requirements.",
  },
  engineering: {
    admission:
      "Confirm the accepted entrance score, counselling or institute-level route, branch-wise intake, lateral-entry rules and current eligibility notice.",
    facilities:
      "Check branch-specific laboratories, workshops, computing access, library resources, project spaces, internet availability and industry-linked learning.",
    careers:
      "Judge engineering outcomes using branch-wise participation, internships, role quality, median or typical outcomes and recruiter diversity, not only a highest-package figure.",
  },
  education: {
    admission:
      "Confirm the qualifying degree, required marks, entrance or merit process, NCTE recognition, teaching-method subject and document schedule.",
    facilities:
      "Verify teaching-learning laboratories, school internship arrangements, library resources, ICT access, seminar facilities and accessibility.",
    careers:
      "Teacher-education outcomes depend on recognition, school-based practice, eligibility examinations and the recruitment rules of the intended employer.",
  },
  law: {
    admission:
      "Confirm the qualifying examination, accepted entrance test or merit route, Bar Council approval and the current admission calendar.",
    facilities:
      "Check the law library, legal databases, moot-court facilities, legal-aid activity, internships and court exposure.",
    careers:
      "Law outcomes depend on internships, drafting and research ability, bar-enrolment requirements and the chosen litigation, corporate or public-service path.",
  },
  management: {
    admission:
      "Confirm the qualifying degree or Class 12 requirement, accepted entrance score where applicable, selection stages and the current intake.",
    facilities:
      "Verify classrooms, computing resources, library databases, case-based learning, internship support, entrepreneurship facilities and industry interaction.",
    careers:
      "Compare internship access, role profiles, participating students, typical outcomes and recruiter variety. A highest-package claim alone is not representative.",
  },
  computing: {
    admission:
      "Confirm the qualifying subjects, mathematics requirement where applicable, merit or entrance route and the current programme intake.",
    facilities:
      "Check computing laboratories, licensed software, internet access, project facilities, library resources and opportunities for practical development work.",
    careers:
      "Computing outcomes depend on programming depth, projects, internships, problem-solving ability and the relevance of roles offered to graduates.",
  },
  media: {
    admission:
      "Confirm the qualifying examination, portfolio or interview requirements, entrance process and current programme schedule.",
    facilities:
      "Verify studios, cameras, editing systems, audio facilities, production laboratories, library resources and fieldwork opportunities.",
    careers:
      "Media outcomes depend on practical work, portfolio strength, internships, production exposure and the quality of roles rather than headline salary claims.",
  },
  multidisciplinary: {
    admission:
      "Admission rules differ by programme. Confirm the qualifying examination, required subjects, merit or entrance route and the latest institutional notice.",
    facilities:
      "Verify the laboratories, library, classrooms, digital resources, accessibility, sports, healthcare and practical-training arrangements relevant to the chosen course.",
    careers:
      "Career outcomes vary by subject. Compare internships, higher-study routes, skill development and programme-level outcome disclosures before deciding.",
  },
};

const errors = [];
if (records.length !== 50) errors.push(`Expected 50 records, found ${records.length}`);
if (productionSlugs.length !== records.length) errors.push("Production slug count mismatch");

const descriptions = new Set();
const blocks = records.map((record, index) => {
  const verified = isVerified(record);
  const area = classify(record);
  const advice = guidance[area];
  const courses = record.courses || [];
  const samples = courses.slice(0, 4);
  const catalogue =
    courses.length > 0
      ? `${courses.length} programmes were reviewed, including ${samples.join(", ")}${
          courses.length > samples.length ? ", and additional listed options" : ""
        }.`
      : "No complete current course catalogue was confirmed in this source pass.";
  const sourceStatus = verified
    ? "The programme catalogue is supported by the institution or its controlling university."
    : "The available catalogue remains provisional because a complete current primary-source list was not available.";
  const sourceLinks = record.sources
    .map(
      (source, sourceIndex) =>
        `<li><a href="${source}" rel="nofollow noopener" target="_blank">Reviewed source ${
          sourceIndex + 1
        }</a></li>`,
    )
    .join("");
  const description = [
    `<h2>What students should know about ${record.name}</h2>`,
    `<p>${record.name} is listed as a ${area.replace(/_/g, " ")} institution. ${catalogue} ${sourceStatus}</p>`,
    `<p>This profile separates verified programme information from details that still need confirmation. Students should match the exact course, intake year and campus before relying on an admission, fee or outcome claim.</p>`,
    `<h2>Courses reviewed</h2><p>${catalogue}</p>`,
    `<h2>How to evaluate this college</h2><p>${advice.admission}</p>`,
    `<h2>Source note</h2><p>${record.note || sourceStatus}</p><ul>${sourceLinks}</ul>`,
    `<h2>Frequently asked questions</h2>`,
    `<h3>Are the listed courses current?</h3><p>${
      verified
        ? "The published course names were checked against the reviewed primary sources. The admission cycle and intake should still be confirmed before applying."
        : "Not fully. The list is retained only as a research lead until a complete current official catalogue is available."
    }</p>`,
    `<h3>Are the fees verified?</h3><p>No. A complete programme, year and category mapping was not established, so this pass does not publish a numeric fee.</p>`,
    `<h3>What should an applicant verify first?</h3><p>Confirm the exact programme, recognition or affiliation, eligibility, admission route, total payable amount and document deadline through an authorised source.</p>`,
  ].join("");
  if (descriptions.has(description)) errors.push(`${record.name}: duplicate description`);
  descriptions.add(description);

  const pageSummary = `${record.name}: ${courses.length || "provisional"} reviewed programme${
    courses.length === 1 ? "" : "s"
  }, admission checks, campus facilities, career context and clearly labelled source status.`;
  const metaDescription = `Explore ${record.name} courses, admissions, facilities and career context. See what is source-verified and what applicants should confirm.`.slice(
    0,
    160,
  );
  const audit = verified
    ? "Campus-specific content pass completed from reviewed sources. Courses are verified; fees and unsupported outcome claims remain blank or explicitly unverified. Further source refresh remains required for time-sensitive sections."
    : "Partial source-content pass completed. The record remains held because its current official catalogue and time-sensitive claims are not fully verified.";
  const sourceAudit = JSON.stringify({
    batch: "college-source-content-refresh-next-50",
    checked_at: "2026-07-30",
    writing_policy: "original_source_grounded_no_large_dashes",
    catalogue_status: verified ? "verified" : "provisional",
  });

  return `
UPDATE public.colleges
SET
  description = ${literal(description)},
  page_summary = ${literal(pageSummary)},
  eligibility_criteria = ${literal(
    `<h2>Eligibility</h2><p>${advice.admission}</p><p>Do not assume that the same rule applies to every course. Use the latest programme notice for subjects, marks, category conditions and documents.</p>`,
  )},
  admission_process = ${literal(
    `<h2>Admission process</h2><ol><li>Select the exact programme and intake year.</li><li>Open the authorised admission notice or counselling portal.</li><li>Check eligibility, recognition, seat category and required documents.</li><li>Apply through the stated channel and retain the acknowledgement.</li><li>Confirm the final payable amount before completing admission.</li></ol><p>${advice.admission}</p>`,
  )},
  placement_content = ${literal(
    `<h2>Placements and career outcomes</h2><p>${advice.careers}</p><p>No campus-specific recruiter or salary claim is added unless it was supported by a reviewed disclosure. Ask for a recent programme-level report that states the batch, participating students and role details.</p>`,
  )},
  facilities_content = ${literal(
    `<h2>Facilities to verify</h2><p>${advice.facilities}</p><p>Availability can differ by department and academic year, so confirm access for the exact programme rather than relying on a general campus photograph.</p>`,
  )},
  hostel_life = ${literal(
    "<h2>Hostel and student life</h2><p>A current hostel allocation, room type, mess charge and campus-specific rule set was not established in this pass. Applicants who need accommodation should request the latest hostel notice and total annual cost before paying.</p>",
  )},
  scholarship_details = ${literal(
    "<h2>Scholarships</h2><p>No named scholarship is presented as guaranteed in this pass. Check institute notices and the relevant government scholarship portals for eligibility, income, category, merit, renewal and deadline conditions.</p>",
  )},
  rankings_content = ${literal(
    "<h2>Rankings, approvals and recognition</h2><p>Use only a ranking that identifies the publisher, year, category and exact campus. Programme recognition and affiliation should be checked independently because a general institutional claim may not cover every course.</p>",
  )},
  meta_title = left(name || ' Courses, Admission and Campus Guide', 70),
  meta_description = ${literal(metaDescription)},
  meta_keywords = ${literal(
    `${record.name}, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals`,
  )},
  data_clean_method = ${literal(verified ? "official_source_content" : "source_review_partial")},
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = ${literal(audit)},
  data_source_urls = coalesce(data_source_urls, '[]'::jsonb) || jsonb_build_array(${literal(
    sourceAudit,
  )}::jsonb),
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = ${literal(productionSlugs[index])};`;
});

if (/[\u2013\u2014]/.test(JSON.stringify(records)) || /[\u2013\u2014]/.test(blocks.join(""))) {
  errors.push("Large dash found in source or generated output");
}
if (descriptions.size !== records.length) {
  errors.push(`Expected ${records.length} unique descriptions, found ${descriptions.size}`);
}
if (errors.length) {
  console.error(errors.join("\n"));
  process.exit(1);
}

const slugs = productionSlugs.map(literal).join(",\n    ");
const sql = `-- Source-labelled content enrichment for the previously researched 50-college batch.
-- The writing is original synthesis. Unsupported fees, outcomes and campus claims are not invented.
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
    SELECT count(*) INTO matches FROM public.colleges WHERE slug = requested_slug;
    IF matches <> 1 THEN
      RAISE EXCEPTION 'Expected exactly one production college slug %, found %', requested_slug, matches;
    END IF;
  END LOOP;
END
$preflight$;

${blocks.join("\n")}

NOTIFY pgrst, 'reload schema';
COMMIT;
`;

await writeFile(output, sql);
console.log(
  JSON.stringify({
    output,
    content_records: records.length,
    primary_source_catalogues: records.filter(isVerified).length,
    partial_source_records: records.filter((record) => !isVerified(record)).length,
    unique_descriptions: descriptions.size,
  }),
);
