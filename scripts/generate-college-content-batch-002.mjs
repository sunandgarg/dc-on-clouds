#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";
import { resolve } from "node:path";

const input = resolve(
  "data/college-official-enrichment/research-next-50-content-draft.json",
);
const output = resolve(
  process.argv[2] ||
    "supabase/migrations/20260730150000_college_official_content_batch_002.sql",
);
const records = JSON.parse(await readFile(input, "utf8"));

const reviewed = {
  "abdulkalam-institute-of-technological-sciences-akit-khammam": {
    url: "https://akits.ac.in/admissions/",
    courses: [
      "B.Tech Artificial Intelligence and Machine Learning",
      "B.Tech Computer Science and Engineering",
      "B.Tech Electronics and Communication Engineering",
      "B.Tech Electrical and Electronics Engineering",
      "B.Tech Mechanical Engineering",
      "B.Tech Civil Engineering",
      "B.Tech Mining Engineering",
      "MBA",
      "M.Tech Electrical Power Systems",
      "M.Tech Thermal Engineering",
      "B.Tech Data Science",
    ],
    note:
      "The official admissions and department navigation identifies the engineering, management and postgraduate engineering areas offered by the institute.",
  },
  "abeda-inamdar-senior-college-pune": {
    url: "https://www.abedainamdarcollege.org.in/",
    courses: [
      "Bachelor of Arts",
      "Bachelor of Commerce",
      "Bachelor of Science",
      "B.Sc Computer Applications",
      "B.Sc Computer Science",
      "B.Com Computer Applications",
      "B.Com Business Management",
      "Master of Commerce",
    ],
    note:
      "The official college site publishes current admission notices and identifies arts, commerce, science and computing programmes.",
  },
  "abes-engineering-college-ghaziabad": {
    url: "https://abes.ac.in/courses-offered.html",
    courses: [
      "B.Tech Computer Science and Engineering",
      "B.Tech Computer Science and Engineering - Artificial Intelligence and Machine Learning",
      "B.Tech Computer Science and Engineering - Data Science",
      "B.Tech Electronics and Communication Engineering",
      "B.Tech Electrical and Computer Engineering",
      "B.Tech Mechanical Engineering",
      "Master of Computer Applications",
      "M.Tech Computer Science and Engineering",
      "M.Tech Electronics and Communication Engineering",
    ],
    note:
      "The official course page was used for programme names. Applicants should confirm branch intake and the active admission route for their session.",
  },
  "abes-institute-of-technology-abesit-ghaziabad": {
    url: "https://www.abesit.in/admission/",
    note:
      "The institute admission portal and its 2026 brochure were located, but this pass does not replace the catalogue until every branch is mapped from the brochure.",
  },
  "abhaya-college-of-nursing-bangalore": {
    url: "https://www.abhayainstitutions.com/",
    note:
      "The institution site describes nursing education and clinical training. The exact current campus-level catalogue still needs a dedicated verification pass.",
  },
  "abhayapuri-college-bongaigaon": {
    url: "https://abhayapuricollege.ac.in/coursesprogrammes.php",
    courses: [
      "Bachelor of Arts",
      "Bachelor of Science",
      "B.Voc Information Technology",
      "B.Voc Tourism and Travel Management",
      "B.Voc Banking Financial Services and Insurance",
    ],
    note:
      "The official programme page and current college notices were reviewed for this catalogue.",
  },
  "abhi-institute-of-hotel-management-aihm-new-delhi": {
    url: "https://abhiinstitute.com/admission-2026/",
    courses: [
      "B.Sc Hotel Management",
      "Bachelor of Hotel Management and Catering Technology",
      "Diploma in Hotel Management",
      "Diploma in Food Production",
      "Diploma in Food and Beverage Service",
      "Certificate in Food Production",
    ],
    note:
      "The official 2026 admission page identifies degree, diploma and short-duration hospitality options. Numeric fees are not copied without programme and fee-head mapping.",
  },
  "abhijit-kadam-institute-of-management-and-social-sciences-akimss-solapur": {
    url: "https://www.bvuniversity.edu.in/akim/",
    note:
      "The controlling university institute page, placement overview and institutional feature pages were reviewed. The course table remains unchanged pending a complete current prospectus mapping.",
  },
  "abhilashi-college-of-pharmacy-mandi": {
    url: "https://www.abhilashi-edu.in/acp.php",
    courses: ["Bachelor of Pharmacy"],
    note:
      "The official group page identifies the B.Pharm programme and its regulatory and university context.",
  },
  "abhilashi-institute-of-management-studies-aims-mandi": {
    url: "https://www.abhilashi-edu.in/aims.php",
    courses: [
      "Bachelor of Business Administration",
      "Bachelor of Computer Applications",
      "Master of Business Administration",
    ],
    note:
      "The official institute page identifies BBA, BCA and MBA. Fees remain blank because a complete current fee-head mapping was not established.",
  },
  "abhilashi-post-graduate-college-of-education-mandi": {
    url: "https://abhilashicollegeofeducation.in/",
    courses: ["Bachelor of Education", "Diploma in Elementary Education"],
    note:
      "The college and controlling group pages identify its teacher-education programmes.",
  },
  "abhinav-education-society039s-college-of-computer-science-and-management-ambegaon": {
    url: "https://abhinavcomputerscience.org/",
    courses: [
      "B.Sc Computer Science",
      "Bachelor of Computer Applications",
      "Bachelor of Business Administration",
    ],
    note:
      "The official college site identifies its computing and management undergraduate programmes.",
  },
  "abhinav-education-society039s-college-of-pharmacy-pune": {
    url: "https://abhinavpharmacycollege.org/",
    courses: [
      "Bachelor of Pharmacy",
      "Direct Second Year Bachelor of Pharmacy",
      "Doctor of Pharmacy",
      "Post Baccalaureate Doctor of Pharmacy",
      "M.Pharm Quality Assurance",
      "Bachelor of Pharmacy Practice",
    ],
    note:
      "The official college catalogue was used. Applicants should confirm current intake and approval for the selected programme.",
  },
  "abhinav-education-society039s-institute-of-management-and-research-aesimr-pune": {
    url: "https://aesimr.org/admission/",
    courses: ["Master of Business Administration", "Master of Computer Applications"],
    note:
      "The official admission page identifies MBA and MCA as the institute's principal postgraduate programmes.",
  },
  "abhinav-education-society039s-law-college-pune": {
    url: "https://abhinavlaw.org/about-college/",
    note:
      "The official college page and mandatory disclosure were reviewed. The programme table is held until the current intake disclosure is mapped.",
  },
  "abhinav-shetkari-shikshan-mandal-degree-college-thane": {
    url: "https://www.abhinavcollege.org/about.php",
    note:
      "The official college site supports the institution identity. Its current programme list still needs page-by-page verification.",
  },
  "abhishek-institute-of-professional-studies-aips-gwalior": {
    url: "https://www.abhishekinstituteofprofessionalstudies.com/",
    note:
      "The official institute site supports its paramedical education focus and campus facilities. The current course list remains pending.",
  },
  "abmsp039s-anantrao-pawar-college-of-engineering-amp-research-apcoer-pune": {
    url: "https://abmspcoerpune.org/",
    note:
      "The official college site and Maharashtra admission authority listing support the institution identity. Branch mapping remains pending.",
  },
  "abr-college-of-engineering-and-technology-prakasam": {
    url: "https://abrcet.edu.in/",
    note:
      "The official college site and district listing were reviewed. The course table remains unchanged until a current approval or intake document is mapped.",
  },
  "abs-academy-of-science-technology-and-management-bardhaman": {
    url: "https://www.absacademy.com/",
    note:
      "The official academy site supports the institution identity. Its complete current catalogue remains pending.",
  },
  "abss-institue-of-technology-meerut": {
    url: "https://abss.edu.in/",
    courses: [
      "B.Tech",
      "M.Tech",
      "Master of Business Administration",
      "Bachelor of Pharmacy",
      "Diploma in Pharmacy",
    ],
    note:
      "The official institute site identifies engineering, management and pharmacy programmes. Branch-level verification remains necessary.",
  },
  "academy-for-technical-and-management-excellence-atme-mysore": {
    url: "https://atme.edu.in/",
    note:
      "The official college site publishes current institutional, approval and accreditation information. Exact programme and branch mapping remains pending.",
  },
  "academy-of-applied-arts-aoaa-guwahati": {
    url: "https://www.academyofappliedarts.com/our-campus/",
    note:
      "The Academy of Applied Arts site was reviewed, but the historical Guwahati campus identity is not clearly confirmed as currently operating.",
  },
  "academy-of-applied-arts-north-campus-aoaa-new-delhi": {
    url: "https://www.academyofappliedarts.com/our-campus/",
    note:
      "The current academy site confirms Delhi operations, but it does not clearly preserve the legacy north-campus distinction in this database record.",
  },
  "academy-of-applied-arts-south-campus-aoaa-new-delhi": {
    url: "https://www.academyofappliedarts.com/our-campus/",
    note:
      "The current academy site confirms Delhi operations, but it does not clearly preserve the legacy south-campus distinction in this database record.",
  },
  "academy-of-architecture-aia-mumbai": {
    url: "https://rachanasansad.edu.in/academy-of-architecture/",
    courses: ["Bachelor of Architecture"],
    note:
      "The official Rachana Sansad page identifies the five-year B.Arch programme affiliated with the University of Mumbai.",
  },
  "academy-of-business-administration-aba-balasore": {
    url: "https://www.abaindia.com/",
    courses: [
      "Bachelor of Business Administration",
      "Bachelor of Computer Applications",
      "Master of Business Administration",
      "Master of Computer Applications",
    ],
    note:
      "The official site and 2026-27 AICTE approval references identify BBA, BCA, MBA and MCA.",
  },
  "academy-of-carver-aviation-pvt-ltd-pune": {
    url: "https://carveraviation.com/",
    courses: ["Commercial Pilot Licence Training"],
    note:
      "The official flying school site and DGCA listing support the commercial pilot training identity. Aircraft maintenance training is not merged into this row.",
  },
  "academy-of-hospital-administration-aha-noida": {
    url: "https://ahaindia.org/",
    note:
      "The Academy of Hospital Administration site and its Noida programme prospectus were reviewed. Short courses are not treated as a stable degree catalogue.",
  },
  "academy-of-maritime-education-and-training-university-amet-chennai": {
    url: "https://www.ametuniv.ac.in/admissions",
    note:
      "The official 2026 admissions portal confirms programmes across maritime studies, engineering, computing, management, commerce, life sciences and doctoral study. The large catalogue requires a dedicated faculty-level mapping.",
  },
  "academy-of-pharmaceutical-sciences-pariyaram-kannur": {
    url: "https://www.pci.nic.in/pdf/322_web.pdf",
    courses: [
      "Bachelor of Pharmacy",
      "Doctor of Pharmacy",
      "M.Pharm Pharmacognosy",
      "M.Pharm Pharmaceutics",
      "M.Pharm Pharmacology",
    ],
    note:
      "Pharmacy Council and Kerala entrance-authority records support the institution and current postgraduate specialisations. Fees remain blank.",
  },
  "academy-of-technology-aot-hooghly": {
    url: "https://aot.edu.in/",
    note:
      "The official college domain and its 2026 academic calendar support current operation. Branch-level catalogue mapping remains pending.",
  },
  "accurate-institute-of-architecture-and-planning-aiap-greater-noida": {
    url: "https://architecture.accurate.in/",
    courses: ["Bachelor of Architecture"],
    note:
      "The official architecture school site identifies its five-year B.Arch programme and campus facilities.",
  },
  "accurate-institute-of-management-and-technology-aimt-greater-noida": {
    url: "https://www.accurate.in/engg/about-aimt.php",
    courses: ["Bachelor of Technology", "Master of Computer Applications"],
    note:
      "The official AIMT page identifies B.Tech and MCA for this institute. Other Accurate Group programmes are not assigned to this college row.",
  },
};

const literal = (value) => `'${String(value ?? "").replaceAll("'", "''")}'`;
const slugify = (value) =>
  String(value)
    .toLowerCase()
    .replace(/&/g, " and ")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "");
const cleanName = (value) =>
  value
    .replaceAll("&#039;", "'")
    .replaceAll("&amp;", "&")
    .replace(/\s+/g, " ")
    .trim();
const classify = (name) => {
  const text = name.toLowerCase();
  if (/pharmacy|pharmaceutical/.test(text)) return "pharmacy";
  if (/nursing|medical|health/.test(text)) return "health sciences";
  if (/architecture/.test(text)) return "architecture";
  if (/aviation|maritime/.test(text)) return "specialist professional";
  if (/engineering|technology|technical/.test(text)) return "engineering and technology";
  if (/education|d\.t\.ed/.test(text)) return "teacher education";
  if (/law/.test(text)) return "law";
  if (/management|business/.test(text)) return "management";
  if (/fashion|arts|media/.test(text)) return "creative studies";
  return "multidisciplinary higher education";
};
const topicAdvice = {
  pharmacy:
    "Confirm Pharmacy Council approval, the examining university, intake and laboratory access for the selected programme.",
  "health sciences":
    "Confirm the relevant council recognition, clinical training arrangement, hospital attachment and registration eligibility.",
  architecture:
    "Confirm Council of Architecture status, aptitude-test requirements, studio access and the current university affiliation.",
  "specialist professional":
    "Confirm the regulator, licence or competency pathway, practical-training hours and the exact certification awarded.",
  "engineering and technology":
    "Confirm the accepted entrance route, branch intake, affiliation, laboratories and the approval letter for the admission year.",
  "teacher education":
    "Confirm NCTE recognition, university affiliation, teaching-method options and the school-internship arrangement.",
  law:
    "Confirm Bar Council approval, university affiliation, programme duration and the current admission route.",
  management:
    "Confirm the approving or affiliating body, accepted entrance route, internship structure and programme-level outcome disclosure.",
  "creative studies":
    "Confirm the awarding body, studio or production facilities, portfolio requirements and the credential issued on completion.",
  "multidisciplinary higher education":
    "Confirm the exact programme, awarding university, eligibility, intake and department facilities before applying.",
};

if (records.length !== 50) throw new Error(`Expected 50 records, found ${records.length}`);
const seen = new Set();
const updates = [];
const verifiedSlugs = [];
let sourced = 0;

for (const record of records) {
  if (seen.has(record.slug)) throw new Error(`Duplicate slug: ${record.slug}`);
  seen.add(record.slug);
  const review = reviewed[record.slug] || null;
  const name = cleanName(record.name);
  const subject = classify(name);
  const courses = review?.courses || [];
  const verified = courses.length > 0;
  const sourceText = review
    ? `A current institutional or regulator source was reviewed: ${review.note}`
    : "A reliable current primary source was not matched with enough confidence in this pass. Existing factual values and course rows are preserved for later verification.";
  const courseText = verified
    ? `${courses.length} programme${courses.length === 1 ? "" : "s"} were mapped from reviewed sources: ${courses
        .slice(0, 5)
        .join(", ")}${courses.length > 5 ? ", with further options shown in the course table" : ""}.`
    : "The existing course list is not labelled official in this pass because a complete current catalogue was not established.";
  const description = [
    `<h2>${name} overview</h2>`,
    `<p>${name} in ${record.city}, ${record.state}, is listed for ${subject}. ${courseText}</p>`,
    `<p>${sourceText}</p>`,
    `<h2>What applicants should verify</h2>`,
    `<p>${topicAdvice[subject]} Check the admission year, category rules, total payable amount and document deadline directly with the authorised institution or counselling body.</p>`,
    `<h2>Courses and fees</h2>`,
    `<p>${courseText} No numeric fee is published by this refresh unless it can be tied to the exact programme, year, category and fee head.</p>`,
    `<h2>Admissions</h2>`,
    `<p>Start with the exact programme and session. Verify eligibility, entrance or merit route, counselling process, documents and refund rules before making a payment.</p>`,
    `<h2>Placements and careers</h2>`,
    `<p>Compare recent programme-level outcomes, internships, role profiles and participating students. No recruiter, salary or placement-rate claim is added without a reviewed disclosure for this campus.</p>`,
    `<h2>Facilities, hostel and scholarships</h2>`,
    `<p>Confirm department laboratories, library access, practical facilities, hostel availability, mess charges and scholarship conditions for the selected programme. General campus photographs do not prove programme access.</p>`,
    `<h2>Quick answers</h2>`,
    `<h3>Are the fees verified?</h3><p>No numeric fee is added in this pass. Request the latest signed fee notice before paying.</p>`,
    `<h3>Is the course list complete?</h3><p>${
      verified
        ? "The listed programme names were mapped from the reviewed source, but intake and availability can change by session."
        : "Not yet. The existing list is preserved and the record remains queued for a full official catalogue review."
    }</p>`,
  ].join("");
  if (/[\u2013\u2014]/.test(description + JSON.stringify(review))) {
    throw new Error(`Large dash found for ${record.slug}`);
  }
  if (review) sourced += 1;
  if (verified) verifiedSlugs.push(record.slug);
  const audit = review
    ? verified
      ? "Official-source content and course catalogue refreshed. Fees, recruiters, salary, ranking and hostel claims remain blank unless separately verified."
      : "Institution-specific source content refreshed. The course catalogue remains pending because a complete current primary-source mapping was not established."
    : "Institution-specific structural content refreshed without inventing facts. No reliable current primary source was matched; existing course data is preserved and official refresh remains required.";
  updates.push(`
UPDATE public.colleges
SET
  ${review?.url ? `official_website = ${literal(review.url)},` : ""}
  ${review?.url ? `official_source_url = ${literal(review.url)},` : ""}
  description = ${literal(description)},
  page_summary = ${literal(
    `${name} courses, admissions, facilities and career guidance with a clear distinction between reviewed and still-pending information.`,
  )},
  eligibility_criteria = ${literal(
    `<h2>Eligibility</h2><p>${topicAdvice[subject]}</p><p>Use the latest programme notice for subjects, marks, category rules and documents.</p>`,
  )},
  admission_process = ${literal(
    "<h2>Admission process</h2><ol><li>Select the exact course and session.</li><li>Check the authorised admission notice.</li><li>Confirm eligibility, recognition and intake.</li><li>Submit the form and required documents.</li><li>Verify the total payable amount and refund rules before payment.</li></ol>",
  )},
  placement_content = ${literal(
    "<h2>Placements and career outcomes</h2><p>Ask for a recent programme-level report showing participating students, roles, internships and typical outcomes. Unsupported recruiter, salary and placement-rate claims are intentionally excluded.</p>",
  )},
  facilities_content = ${literal(
    `<h2>Facilities to check</h2><p>${topicAdvice[subject]} Confirm that the selected department can use the advertised resources.</p>`,
  )},
  hostel_life = ${literal(
    "<h2>Hostel and student life</h2><p>Hostel allocation, room type, mess charge and campus rules can change. Request the latest campus-specific notice before deciding.</p>",
  )},
  scholarship_details = ${literal(
    "<h2>Scholarships</h2><p>Check institutional notices and relevant government portals for category, income, merit, renewal and deadline conditions. No award is presented as guaranteed.</p>",
  )},
  rankings_content = ${literal(
    "<h2>Rankings, approvals and recognition</h2><p>Use only claims that identify the publisher or regulator, year, category and exact campus. A general institutional approval may not cover every programme.</p>",
  )},
  meta_title = left(${literal(`${name} Courses, Admission and Campus Guide`)}, 70),
  meta_description = left(${literal(
    `Explore ${name} courses, admissions, facilities and career context, with source status and applicant checks clearly explained.`,
  )}, 160),
  meta_keywords = ${literal(
    `${name}, courses, admission, eligibility, facilities, placements, hostel, scholarships, approvals`,
  )},
  data_clean_method = ${literal(review ? "official_source_content" : "source_review_partial")},
  official_courses_verified = ${verified},
  official_fees_verified = false,
  ${verified ? `courses_count = ${courses.length},` : ""}
  official_source_clean_pass_count = coalesce(official_source_clean_pass_count, 0) + 1,
  requires_official_source_refresh = true,
  data_clean_audit_note = ${literal(audit)},
  data_source_urls = coalesce(data_source_urls, '{}'::jsonb) || ${literal(
    JSON.stringify({
      batch: "college-official-content-batch-002",
      checked_at: "2026-07-30",
      source: review?.url || null,
      catalogue_status: verified ? "verified" : "pending",
      fee_status: "not_verified",
      writing_policy: "original_source_grounded_ascii_hyphens",
    }),
  )}::jsonb,
  data_last_checked_at = '2026-07-30T00:00:00+05:30'::timestamptz,
  official_source_cleaned_at = now(),
  updated_at = now()
WHERE slug = ${literal(record.slug)};`);

  if (verified) {
    const values = courses
      .map(
        (course) =>
          `(${literal(record.slug)}, ${literal(slugify(course))}, ${literal(
            course,
          )}, NULL::numeric, NULL::text, '2026'::text)`,
      )
      .join(",\n  ");
    updates.push(`
DELETE FROM public.course_fees WHERE college_slug = ${literal(record.slug)};
INSERT INTO public.course_fees
  (college_slug, course_slug, course_name, fee_amount, fee_type, year)
VALUES
  ${values};`);
  }
}

const preflightSlugs = records.map((record) => literal(record.slug)).join(",\n    ");
const sql = `-- College official-source and full-content batch 002.
-- Existing images and logos are intentionally untouched.
-- Numeric fees, recruiters, salaries, rankings and hostel claims are not invented.
BEGIN;

DO $preflight$
DECLARE requested_slug text; matches integer;
BEGIN
  FOREACH requested_slug IN ARRAY ARRAY[
    ${preflightSlugs}
  ]::text[]
  LOOP
    SELECT count(*) INTO matches FROM public.colleges WHERE slug = requested_slug;
    IF matches <> 1 THEN
      RAISE EXCEPTION 'Expected one production college for slug %, found %', requested_slug, matches;
    END IF;
  END LOOP;
END
$preflight$;

${updates.join("\n")}

NOTIFY pgrst, 'reload schema';
COMMIT;
`;

await writeFile(output, sql);
console.log(
  JSON.stringify({
    output,
    records: records.length,
    sourced_records: sourced,
    verified_catalogues: verifiedSlugs.length,
    held_catalogues: records.length - verifiedSlugs.length,
    verified_slugs: verifiedSlugs,
  }),
);
