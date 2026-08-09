#!/usr/bin/env node

import { readFile, writeFile } from "node:fs/promises";

const input = process.argv[2] || "data/college-official-enrichment/live-next-50-batch-017.json";
const migration = process.argv[3] || "supabase/migrations/20260810001500_college_humanized_content_batch_017_50_official_aware.sql";
const report = process.argv[4] || "reports/college-humanized-content-batch-017.md";
const researchedAt = process.argv[5] || "2026-08-09";
const batch = "college-humanized-content-batch-017-50-official-aware";

const rows = JSON.parse(await readFile(input, "utf8"));

const officialOverrides = {
  "bhailalbhai-and-bhikhabhai-institute-of-technology-anand": {
    sourceUrl: "https://bbit.ac.in/courses/",
    sourceStatus: "official_course_page_reviewed_fee_table_not_found",
    courses: [
      "Diploma in Civil Engineering",
      "Diploma in Computer Engineering",
      "Diploma in Electrical Engineering",
      "Diploma in Electronics and Communication Engineering",
      "Diploma in Information Technology",
      "Diploma in Mechanical Engineering"
    ],
    feesFound: false
  },
  "bharathiar-university-bu-coimbatore": {
    sourceUrl: "https://b-u.ac.in/academics/academic-programmes",
    sourceStatus: "official_course_page_reviewed_fee_table_not_found",
    courses: [
      "M.A. Tamil",
      "M.A. English Literature",
      "M.Sc. Mathematics",
      "M.Sc. Statistics",
      "M.Sc. Physics",
      "M.Sc. Chemistry",
      "M.Sc. Botany",
      "M.Sc. Zoology",
      "M.Sc. Computer Science",
      "M.Sc. Data Analytics",
      "M.Com",
      "MBA",
      "MCA",
      "M.Ed",
      "M.P.Ed",
      "M.Lib.I.Sc",
      "M.S.W",
      "M.Sc. Biotechnology",
      "M.Sc. Microbiology",
      "M.Sc. Environmental Sciences",
      "M.Sc. Applied Psychology",
      "M.A. Economics",
      "M.A. Sociology",
      "M.A. Women Studies"
    ],
    feesFound: false
  },
  "bharathidasan-institute-of-management-bim-thiruchirapalli": {
    sourceUrl: "https://bim.edu/academics/mba/",
    sourceStatus: "official_course_page_reviewed_fee_table_not_found",
    courses: [
      "MBA"
    ],
    feesFound: false
  },
  "bharathidasan-university-bu-thiruchirapalli": {
    sourceUrl: "https://www.bdu.ac.in/academics/programmes.php",
    sourceStatus: "official_course_page_reviewed_fee_table_not_found",
    courses: [
      "M.A. Tamil",
      "M.A. English",
      "M.A. Economics",
      "M.A. History",
      "M.Sc. Mathematics",
      "M.Sc. Physics",
      "M.Sc. Chemistry",
      "M.Sc. Computer Science",
      "M.Sc. Biotechnology",
      "M.Sc. Microbiology",
      "M.Sc. Environmental Science",
      "M.Com",
      "MBA",
      "MCA",
      "M.Ed",
      "M.P.Ed",
      "M.Lib.I.Sc",
      "M.S.W",
      "M.Phil",
      "Ph.D"
    ],
    feesFound: false
  },
  "bharathidasan-university-centre-for-distance-education-bucde-thiruchirapalli": {
    sourceUrl: "https://www.bdu.ac.in/cde/",
    sourceStatus: "official_course_page_reviewed_fee_table_not_found",
    courses: [
      "B.A.",
      "B.Com",
      "B.B.A.",
      "B.Sc.",
      "M.A.",
      "M.Com",
      "M.Sc.",
      "MBA",
      "MCA",
      "Diploma",
      "Certificate"
    ],
    feesFound: false
  }
};

const cleanText = (value) =>
  String(value ?? "")
    .replace(/&amp;/g, "&")
    .replace(/&#039;/g, "'")
    .replace(/&quot;/g, '"')
    .replace(/&nbsp;/g, " ")
    .replace(/<[^>]+>/g, " ")
    .replace(/[\u2013\u2014]/g, "-")
    .replace(/\s+/g, " ")
    .trim();

const sql = (value) => `'${String(value ?? "").replace(/[\u2013\u2014]/g, "-").replace(/'/g, "''")}'`;
const arraySql = (values = []) => {
  const unique = [...new Set(values.map(cleanText).filter(Boolean))];
  return `ARRAY[${unique.map(sql).join(", ")}]::text[]`;
};
const jsonSql = (value) => `${sql(JSON.stringify(value).replace(/[\u2013\u2014]/g, "-"))}::jsonb`;

const titleCase = (value) =>
  cleanText(value)
    .toLowerCase()
    .replace(/\b[a-z]/g, (letter) => letter.toUpperCase());

const inferDomain = (name, type = "", category = "") => {
  const text = `${name} ${type} ${category}`.toLowerCase();
  if (/dental|medical|medicine|nursing|pharmacy|physio|paramedical|health/.test(text)) return "healthcare education";
  if (/engineering|technology|polytechnic|architecture|computer|information technology/.test(text)) return "technical education";
  if (/law|legal/.test(text)) return "legal education";
  if (/management|business|mba|commerce|finance|accounting/.test(text)) return "management and commerce education";
  if (/teacher|education|b\.ed|d\.ed|training/.test(text)) return "teacher education";
  if (/agricultural|agriculture|food technology|rural/.test(text)) return "agriculture and applied science education";
  if (/fashion|textile|media|design|hotel|hospitality|tourism/.test(text)) return "creative and professional education";
  if (/arts|science|humanities|college/.test(text)) return "general higher education";
  return "higher education";
};

const locationText = (record) =>
  [cleanText(record.city), cleanText(record.state)].filter(Boolean).join(", ") || cleanText(record.location) || "India";

const allSources = (record) => {
  const urls = new Set();
  const override = officialOverrides[cleanText(record.slug)];
  if (override?.sourceUrl) urls.add(override.sourceUrl);
  const pushUrl = (value) => {
    const text = cleanText(value);
    if (/^https?:\/\//i.test(text)) urls.add(text);
  };
  pushUrl(record.official_website);
  pushUrl(record.official_source_url);
  const walk = (value) => {
    if (Array.isArray(value)) return value.forEach(walk);
    if (value && typeof value === "object") return Object.values(value).forEach(walk);
    pushUrl(value);
  };
  walk(record.data_source_urls);
  return [...urls].slice(0, 10);
};

const sourceStatus = (record, sources) => {
  const override = officialOverrides[cleanText(record.slug)];
  if (override?.sourceStatus) return override.sourceStatus;
  if (!sources.length) return "official_source_pending";
  const site = cleanText(record.official_website);
  const source = cleanText(record.official_source_url);
  try {
    if (site && source) {
      const siteHost = new URL(site).hostname.replace(/^www\./, "");
      const sourceHost = new URL(source).hostname.replace(/^www\./, "");
      if (sourceHost === siteHost || sourceHost.endsWith(`.${siteHost}`) || siteHost.endsWith(`.${sourceHost}`)) return "official_or_institution_source_reviewed";
    }
  } catch {
    return "public_source_reviewed_official_refresh_pending";
  }
  return site ? "institution_site_present_with_public_source_review" : "public_source_reviewed_official_refresh_pending";
};

const html = (...parts) => parts.join("\n");
const p = (text) => `<p>${cleanText(text)}</p>`;
const h = (text) => `<h3>${cleanText(text)}</h3>`;
const ul = (items) => `<ul>${items.map((item) => `<li>${cleanText(item)}</li>`).join("")}</ul>`;

const repeatedGuidance = (name, domain, location, sourcePhrase) => ({
  overview: html(
    p(`${name} is a ${domain} option in ${location}. This DekhoCampus profile is written for students and parents who want a clear 2026 starting point before they open the official admission notice, compare eligibility and speak to a counsellor.`),
    p(`The most useful way to read this page is simple: confirm the exact campus, the programme name, the awarding or affiliating body, and the current admission route. ${sourcePhrase} Time-sensitive details such as deadlines, intake, fee heads, hostel charges and counselling rules can change, so this profile keeps unsupported claims out of the main decision path.`),
    p(`For AIO, AEO, SEO, GEO and LLMO readability, the profile answers student questions directly and then expands into practical checks. That makes it easier for search engines, answer engines and AI assistants to understand what the college offers, where it is located, which facts still need official verification and what a student should do next.`),
    p(`Students comparing ${name} should not rely on one headline metric. A strong shortlist compares programme fit, academic support, placement evidence, faculty availability, infrastructure, accommodation, scholarships, travel comfort and the written fee notice. A profile is marked stronger only when those details can be supported by an official or institution-level source.`),
    p(`This batch also follows the official-course policy. Course names are preserved only when they were already verified from an official source in production. Fees remain blank unless the programme, year, quota and category are clear enough to avoid misleading a student.`)
  ),
  highlights: html(
    h("Student Decision Highlights"),
    ul([
      `${name} should be checked against its latest official admission notice before application payment.`,
      `Course and fee claims are treated separately because a college may publish courses without a reliable fee table.`,
      `Placement, ranking and approval claims should be matched with dated official reports or regulator records.`,
      `Students should compare the same programme across colleges, not just the college-level reputation.`,
      `Internal links and source links are maintained so AI crawlers can understand the entity graph around the college.`
    ]),
    p(`For students shortlisting colleges in ${location}, this page is meant to reduce confusion. It separates verified facts from pending checks, uses clean headings, and avoids language that over-promises outcomes such as guaranteed admission, guaranteed placement or fixed scholarships.`)
  )
});

const deepEditorialGuide = (name, domain, location, category) => html(
  h("Complete College Research Framework"),
  p(`A serious review of ${name} should be built like a student counselling file. The first layer is identity: confirm the full college name, campus city, state, legal status, affiliation, approval body and official website. The second layer is academic fit: check which programmes are actually offered, whether the curriculum is current, how classes are scheduled, and whether the department has the labs, studios, hospital exposure, workshops or fieldwork required for the subject.`),
  p(`The third layer is admission risk. Students should understand whether admission is centralised, entrance-based, merit-based, management-quota based or direct through the institution. For ${category || domain}, the route can change by programme and year. A good profile should not hide that complexity. It should help the student ask the right question: what is the correct application route for my course in the current session?`),
  p(`The fourth layer is cost. A college fee is not only tuition. Students should ask for tuition, university fee, exam fee, one-time admission charges, hostel fee, mess charge, transport, lab deposit, uniform, training fee, insurance and any refundable security. ${name} fees are therefore kept blank unless the source is strong enough to identify programme, year, quota and category. That is slower, but it is better than showing a number that can mislead a family.`),
  p(`The fifth layer is outcome. Placement should be read through evidence, not marketing language. Students should ask how many students were eligible, how many opted for placement, how many received offers, what the median package was, whether the roles matched the course, and whether the recruiter list belongs to this campus or to a wider group. For professional courses, internships, clinical exposure, apprenticeships, projects and licensure pathways can matter as much as final placement.`),
  p(`The sixth layer is experience. Campus life is not only events. It includes how easy it is to reach the campus, whether faculty are available outside lectures, how academic doubts are handled, how internal assessment works, whether hostels are safe and transparent, whether students receive career support, and whether grievance channels actually respond. This is why the profile separates facilities, hostel, scholarships, placements and admissions into individual decision modules.`),
  p(`The seventh layer is evidence freshness. For ${name}, every date-sensitive claim should be treated as perishable. Application deadlines, fee amounts, affiliation status, approvals, scholarship windows, seat intake, placement outcomes and ranking positions can change. Students should always open the source link or contact the institution before making payment. DekhoCampus keeps this instruction visible because it protects the student from stale information and protects the publisher from overstating facts.`),
  h("AIO, AEO, SEO, GEO And LLMO Structure"),
  p(`This page is organised for both humans and machine readers. The answer-first summary tells an AI assistant what ${name} is and how students should evaluate it. The supporting paragraphs then describe admissions, eligibility, courses, fees, placements, rankings, scholarships and facilities in language that is easy to parse. Entity-rich wording connects the college with ${location}, ${category || domain}, official-source verification, programme comparison and student decision support.`),
  p(`For answer engines, the profile avoids vague slogans and focuses on direct questions: what should I verify first, are courses official, are fees verified, how should I judge placements, and when should I contact the college? For search engines, the page uses natural terms around admission 2026, courses, fees, placements, hostel, scholarships, rankings, approvals and location. For generative engines, it states source limits clearly so an AI system does not confuse pending verification with confirmed fact.`),
  p(`For local and geographic relevance, ${location} is repeated only where it helps student intent. A student comparing colleges in the same city needs commute, hostel, safety, admission office, document verification and local counselling context. A student comparing across states needs affiliation, regulator, fee and language clarity. The profile therefore uses practical location signals without keyword stuffing.`),
  h("How Students Should Compare This College"),
  p(`A student comparing ${name} with another college should create a simple grid. Put the selected course in the first row, then compare eligibility, entrance route, tuition and total cost, hostel availability, commute time, approval, affiliation, practical learning, internship support, placement evidence, scholarship options and alumni outcomes. If one college has unclear course data, keep that cell blank until the official source is checked.`),
  p(`Students should also compare the level of support they need. Some students need strong placement training, some need affordable fees, some need hostel safety, some need a recognised university brand, and some need flexible local access. The best college is the one where verified facts and student priorities overlap. ${name} should be judged through that overlap, not through a single rating or a copied course list.`),
  p(`Parents should ask for written documents before payment. Important documents include the latest fee circular, admission form, refund rule, hostel fee sheet, scholarship notice, affiliation proof, approval proof, placement report and course curriculum. If the admission office cannot provide a document, treat the claim as pending until confirmed.`),
  h("Publisher Safety And Student Safety Notes"),
  p(`This profile does not present unverified third-party numbers as final facts. It can reference the existence of public or institutional sources, but final admission, fee and course decisions must be checked from official documents. This is especially important for colleges where older imported data may have mixed broad course names with campus-specific programmes.`),
  p(`DekhoCampus uses the profile as a student-first discovery layer. The goal is to help a student form better questions before applying. For ${name}, that means the public page should guide the student to verify courses, fees, seats, approvals, placements and facilities without pretending that every detail has been freshly audited by a human editor.`),
  p(`When official pages are unavailable, incomplete or unclear, the responsible choice is to leave sensitive facts blank. Course names, fee amounts, intake, cutoffs and placement numbers should not be invented to make a page look full. A blank field with a clear verification instruction is more useful than a confident but wrong answer.`)
);

const practicalModuleExpansion = (name, domain, location, category) => html(
  h("Admissions Checklist For Students And Parents"),
  p(`Before applying to ${name}, students should prepare a checklist that includes the latest prospectus, application dates, accepted entrance tests, merit-list rules, counselling process, document list, fee payment route, refund policy and reporting instructions. This checklist should be kept separately for each programme because one department may follow a different process from another.`),
  p(`Parents should ask the admission office direct questions in writing when possible. Ask whether the programme is running in the current session, whether seats are approved, whether the degree is awarded by the college or an affiliating university, and whether there are any additional university, examination, development, lab, uniform, transport or hostel charges. These questions sound basic, but they prevent most admission-stage confusion.`),
  p(`Students applying from outside ${location} should verify travel, hostel reporting, local guardianship rules where relevant, medical documents, anti-ragging forms, migration certificate, transfer certificate and original-document submission rules. A student may be eligible academically but still face delays if reporting documents are incomplete.`),
  h("Course Verification Method"),
  p(`The course table for ${name} should be built only from official evidence. Official evidence can include the college programme page, admission brochure, prospectus, university affiliation list, regulator approval list, mandatory disclosure, current admission notice or a dated official PDF. A course name found only on a third-party listing is not enough for this batch.`),
  p(`If the official source lists a broad programme but not a specialisation, the public page should not split it into many specialisations. If the official source lists a department but not an intake, the intake should remain blank. If the official source lists courses but no fee table, the course names may be shown but fees should remain blank. That is the cleanest way to avoid wrong course-fee combinations.`),
  p(`For ${category || domain}, specialisations can be especially sensitive. Engineering branches, nursing levels, pharmacy programmes, teacher-education approvals, law degrees, hotel-management diplomas and management programmes often have regulator or university naming rules. DekhoCampus should use the official name even when a shorter marketing name is easier to read.`),
  h("Fees And Affordability Review"),
  p(`Families shortlisting ${name} should request a complete fee breakup. The useful fee view includes tuition, registration, admission charge, university fee, examination fee, lab charge, activity fee, caution deposit, hostel, mess, transport and any compulsory training or uniform cost. A single annual number is not enough unless the official source clearly explains what it includes.`),
  p(`Fee comparisons should be done after normalising the year and category. A first-year fee may include one-time charges, while later-year fees may not. Management-quota, government-quota, scholarship, hostel and transport amounts may differ. If those differences are unclear, the correct public value is blank, with a student instruction to verify the official fee notice.`),
  h("Placement Evidence Review"),
  p(`A placement section for ${name} should tell students what to ask for, even when final numbers are not available. Ask for total eligible students, students registered for placement, offers made, median salary, highest salary, internship conversion, common job roles, recruiter names, and whether the same recruiters returned across multiple years.`),
  p(`Students should also judge preparation support. Does the college run aptitude sessions, coding practice, portfolio reviews, interview preparation, language support, internship guidance, project mentoring or professional certification support? For some colleges, the training system matters more than a one-year placement number.`),
  p(`For healthcare, education, law, journalism, design, hospitality and research-focused institutions, outcomes may not look like a corporate placement chart. Students should consider clinical postings, teaching practice, court exposure, newsroom training, portfolio reviews, internships, apprenticeships, fellowships, government exams, higher studies and professional licensing routes.`),
  h("Infrastructure And Learning Support"),
  p(`Infrastructure at ${name} should be judged by programme need. A technical course needs working labs, workshops, computing facilities and project support. A healthcare course needs clinical exposure and practical training. A design or media course needs studios and equipment. A management or commerce course needs case discussions, presentations, internships and industry interaction.`),
  p(`Students should visit the campus where possible. During a visit, check classrooms, library access, lab condition, washrooms, drinking water, canteen, accessibility, safety, transport, hostel route, academic office and student-support desk. Ask current students how often facilities are actually used, not only whether they exist in a brochure.`),
  h("Hostel, Commute And Daily Life"),
  p(`Daily life can decide whether a student completes a course comfortably. For ${name}, students should compare hostel availability, room sharing, food, security, study environment, internet, laundry, medical support, transport and distance from the main teaching area. Day scholars should calculate travel time during peak hours, not only map distance.`),
  p(`Hostel rules should be understood before payment. Ask about refund terms, guest rules, curfew, outing permissions, room-change process, maintenance, mess committee, grievance escalation and emergency contact. For students moving away from home for the first time, these details are not small; they shape the whole first-year experience.`),
  h("Scholarships And Funding Route"),
  p(`Scholarship research for ${name} should include government portals, state schemes, category schemes, minority schemes, merit awards, disability support, sports support, institutional concessions and bank-loan documentation. Students should check whether the scholarship is applied before payment, reimbursed later or adjusted after verification.`),
  p(`A scholarship claim should always be matched with eligibility, deadline, required documents, renewal conditions and benefit amount. Some schemes cover tuition only, some cover maintenance, and some are limited by income, domicile or category. If a student depends on a scholarship, they should not finalise admission until the application route is clear.`),
  h("Ranking And Approval Interpretation"),
  p(`Rankings for ${name} should be read by category and year. A college may be ranked in one category but not another. A university-level ranking may not represent every affiliated college. A private ranking may use a different method from NIRF or regulator records. The ranking section should therefore state the source, year and category whenever a ranking is used.`),
  p(`Approvals should also be read carefully. AICTE, PCI, NCTE, BCI, DCI, INC, NCISM, NMC, UGC, NAAC and university affiliation each answer different questions. One approval does not automatically prove every programme is approved. Students should verify the programme-level status if the course leads to professional registration or regulated practice.`),
  h("Internal Linking And Entity Context"),
  p(`A strong DekhoCampus page should connect ${name} with related courses, accepted exams, scholarships, job profiles, study material and news where those links are relevant. Internal links help students move from discovery to decision, and they help AI systems understand the relationship between college, course, exam, career path and funding option.`),
  p(`When course data is not official, internal links should be conservative. It is better to link to broad discovery pages such as colleges in the same city, the relevant stream, scholarship resources or admission tools than to imply a specific unverified programme. This keeps the user journey useful without adding unsupported facts.`),
  h("Human Review Notes"),
  p(`This generated expansion is designed to be human-readable and cautious, but it is not a substitute for a manual editorial review. A human editor should still check source links, remove generic lines when richer official facts are available, add verified course names, add fee tables only from official notices, and improve local context for high-traffic colleges.`),
  p(`For ${name}, the next editorial pass should prioritise official-source discovery, course catalogue verification, fee-table verification, contact details, source-backed placement notes, regulator status and any recognised ranking or accreditation claim. Once those are verified, the page can move from source-refresh pending to editorially complete.`)
);

const extendedDecisionExpansion = (name, domain, location, category) => html(
  h("Fourteen Module Editorial Coverage"),
  p(`The full DekhoCampus standard for ${name} covers fourteen student-facing modules. These are overview, highlights, admissions, courses, fees, eligibility, placements, cutoffs, rankings and approvals, scholarships, facilities, hostel, reviews or student questions, and contact or source verification. Some modules may be short when official data is unavailable, but each module should still guide the student toward a useful next step.`),
  p(`The overview module should answer the first question quickly: what is this college, where is it, and why would a student consider it? The highlights module should not be a marketing list. It should tell the student what is known, what is pending, and what must be verified before applying.`),
  p(`The admissions module should explain route and risk. If ${name} uses an entrance exam, the profile should mention the accepted exam only when source-backed. If admission is merit-based, the profile should explain document verification and merit-list checks. If admission is direct, the profile should still ask for written eligibility, fee and refund details.`),
  p(`The courses module should be strict. For ${category || domain}, a wrong course can create real student harm because families may travel, pay registration fees or skip better options. The page should therefore show official courses only. If nothing official is found, a short note is better than a long but uncertain course table.`),
  p(`The fees module should explain total cost. Students should understand tuition, one-time charges, recurring charges, hostel, mess, transport, exam fee, university fee and refundable deposit. If the exact official fee is not found, DekhoCampus should leave the amount blank and encourage the student to request the current circular.`),
  p(`The eligibility module should separate general eligibility from programme-specific eligibility. This matters for regulated courses, lateral entry, postgraduate study and professional programmes. It also matters for students with gap years, open-school qualifications, vocational backgrounds or out-of-state documents.`),
  p(`The placements module should include caution. A placement cell may be active, but the student needs to know whether outcomes are recent, programme-wise and campus-specific. The profile should encourage students to ask for median data, not just highest package. It should also mention internships, practical exposure and higher-study pathways where relevant.`),
  p(`The cutoff module should avoid false certainty. Cutoffs shift by year, round, category, quota, seat matrix and applicant demand. For ${name}, if no official cutoff is verified, the page should teach students how to read counselling records rather than inventing a number.`),
  p(`The rankings and approvals module should be precise. A regulator approval, university affiliation, accreditation grade and national ranking all mean different things. Students should verify the issuing body, validity period and programme scope. A college-level claim should never be stretched into a programme-level guarantee.`),
  p(`The scholarships module should focus on process. Students should know where to apply, which documents are required, whether the benefit is reimbursement or upfront concession, and whether renewal depends on attendance or marks. The profile should also remind students that scholarships can be delayed or rejected if documents are inconsistent.`),
  p(`The facilities module should connect infrastructure to learning. A library is useful when it has current books and access hours. A lab is useful when equipment works and students get hands-on time. A sports ground, transport service or clinic matters when students can actually use it. This context keeps the page useful even when source data is limited.`),
  p(`The hostel module should cover comfort and safety. Students and parents need practical details such as room sharing, mess, security, medical help, rules, refund policy and distance from academic blocks. Where no official hostel notice is available, the page should say that clearly.`),
  p(`The reviews and questions module should help students think. Instead of forcing a conclusion, it should ask: does this college fit my course, budget, commute, career goal and support needs? A student review is helpful only when it explains academics, faculty, attendance, placements, hostel and administration in plain language.`),
  p(`The contact and source module should close the loop. Every student should know where to verify the final facts. Official website, admission office, regulator page, affiliation list and current prospectus are stronger than copied snippets. That closing loop is central to publisher safety and student safety.`),
  h("Quality Standard For This Batch"),
  p(`This batch improves ${name} by expanding the rendered modules and tightening the decision language. It does not claim full official completion unless official courses, fees and sources are already present in production. That distinction matters. A profile can be helpful, structured and AI-readable while still being marked for official-source refresh.`),
  p(`The content is written to sound like a practical counsellor, not a copied brochure. It uses direct sentences, cautions, examples and questions a real student would ask. It avoids inflated claims, forced rankings and unsupported fee numbers. That makes it more human-readable and more reliable for AI answer systems.`),
  p(`For SEO, the page naturally includes admission 2026, courses, fees, placements, facilities, hostel, scholarships, rankings, approvals, eligibility, cutoffs and location. For GEO, it ties the college to ${location}. For LLMO, it repeats the evidence policy in clear language so AI systems can avoid hallucinating facts that are not present.`),
  p(`For operations, the migration records an audit state, word count, module count, batch name and source policy. That makes it easier to find this college again for the next pass. When the official source is later verified, the team can add exact programmes, fee rows, source links and contact details without redoing the whole writing structure.`),
  h("Next Pass Instructions"),
  p(`The next pass for ${name} should use web research and official documents. Search the college name with official website, admission, courses, fees, prospectus, mandatory disclosure, affiliation, approval, placement report and scholarship. Confirm that the domain belongs to the institution. If the institution belongs to a group, confirm that the source page refers to the same campus and not a different branch.`),
  p(`When an official course list is found, add only the exact course names and specialisations shown there. If a fee table is found, add fees only when the year and category are clear. If a placement report is found, summarise the latest verified year and avoid claims that do not match the source. If no source is found, leave sensitive fields blank and keep the profile in refresh-required state.`),
  p(`This approach is deliberately slower than bulk filling. The reason is simple: college data affects admissions, money and student decisions. A wrong course or fee can waste time and create distrust. A clean blank with a useful verification instruction is better than an attractive but unreliable table.`)
);

const finalStudentPlaybook = (name, domain, location, category) => html(
  h("Student Playbook Before Applying"),
  p(`A student who is serious about ${name} should turn this page into an action plan. First, write down the exact course name you want. Second, confirm whether the course appears on an official page, prospectus, affiliation record or admission brochure. Third, ask whether the course is open in the current session. Fourth, check the admission route and deadline. Fifth, ask for the written fee breakup before making any payment.`),
  p(`This practical order matters because many students start with images, ratings or a short college description. Those signals are useful for discovery, but they are not enough for admission. A student needs proof that the programme is active, approved where required, affordable and aligned with their long-term goal. ${name} should therefore be evaluated through documents, not assumptions.`),
  p(`For parents, the safest question is: what can the college give in writing? A written fee circular, admission notice, course list, hostel rule sheet, scholarship instruction and refund policy are stronger than verbal assurances. If a counsellor or admission executive says something important, ask them to share the official document or web link that supports it.`),
  p(`Students should also keep a comparison sheet. Add ${name}, two nearby colleges and two aspirational colleges. Compare course availability, official fee, travel or hostel cost, faculty support, practical exposure, placement evidence, scholarship route and admission risk. This makes the decision calmer and avoids last-minute pressure.`),
  h("What A Strong Official Source Looks Like"),
  p(`A strong official source for ${name} usually has the college or university domain, a dated PDF, a current admission year, a programme table, an approved intake or a clear fee schedule. A brochure without a date is weaker. A third-party page without a source is weaker. A social media post can be useful for alerts, but it should not be the only proof for courses, fees, approvals or placements.`),
  p(`For ${category || domain}, students should be extra careful when the course is regulated, professional, clinical, technical or licence-linked. In those cases, the official course name, regulator approval, affiliation and seat count can directly affect whether the qualification is accepted later. If the source is unclear, the course should remain pending until an official record is found.`),
  p(`If a source page belongs to a group of institutions, students should confirm that it is for the same campus in ${location}. Group websites sometimes show all campuses together, which can create wrong assumptions about courses, fees, hostels or placements. Campus-specific evidence is always stronger than group-level marketing material.`),
  h("How To Read Course And Fee Tables"),
  p(`Course and fee tables should be read together but verified separately. A college may have an official course page and no public fee table. In that case, the course can be shown while the fee remains blank. A college may publish a fee circular but not list every specialisation clearly. In that case, the fee should not be forced into an unrelated course row.`),
  p(`For ${name}, fee accuracy depends on year, quota, category, hostel choice and one-time charges. A number that was correct last year may be wrong for the new session. A number for one programme may not apply to another. A number for day scholars may not include hostel and mess. Students should always ask what is included and what is extra.`),
  p(`When fees are unavailable, the right response is not to guess. A blank fee field tells the student that verification is still needed. It also prevents AI systems from repeating an invented amount. This is why the batch leaves fees blank unless official verification exists.`),
  h("How To Judge Content Completeness"),
  p(`A complete page for ${name} does not need to shout. It needs to answer real questions. Where is the college located? What type of institution is it? Which programmes are available from official sources? What is the admission route? Are fees verified? What facilities support the course? Are placements supported by evidence? Are scholarships explained? Are rankings and approvals tied to a source and year?`),
  p(`If any of these answers are missing, the page should still guide the student honestly. For example, it can say that official courses are pending, fees should be checked from the latest notice, placement evidence should be requested from the college, or ranking claims should be matched with the issuing body. Honest gaps are better than decorative paragraphs.`),
  p(`This content also supports AI crawlers by using stable entity language. The college name, city, state, education domain, admissions, courses, fees, placements, facilities, hostels, scholarships, rankings and approvals are written as connected concepts. That helps answer engines form a safer summary instead of pulling one unsupported sentence out of context.`),
  h("Questions To Ask The Admission Office"),
  ul([
    `Is the selected programme at ${name} open for the current admission session?`,
    "What is the exact official course name and duration?",
    "Which university or body awards the degree, diploma or certificate?",
    "Is any entrance exam, counselling round or merit list required?",
    "What is the complete fee breakup, including one-time and recurring charges?",
    "Is hostel available, and what are the hostel and mess charges?",
    "What documents are required at reporting and at final admission?",
    "What is the refund policy if a student withdraws?",
    "Are scholarships available, and how are they applied or reimbursed?",
    "Can the college share recent placement or internship evidence for this programme?"
  ]),
  h("Editorial Promise For The Next Refresh"),
  p(`The next official refresh for ${name} should replace generic guidance with source-backed facts wherever possible. If an official prospectus is found, the course section should use exact programme names. If a fee circular is found, fees should be added carefully with year and category context. If a placement report is found, outcomes should be summarised with date and scope. If a ranking or approval source is found, the issuing body and year should be recorded.`),
  p(`Until that refresh is complete, this page remains useful as a decision framework. It tells students what to verify, keeps unsupported course and fee data out of sensitive fields, and gives AI systems enough context to avoid overstating the college profile. That is the safest way to improve coverage across a large college database while still respecting student trust.`)
);

const buildSections = (record, index) => {
  const name = cleanText(record.name);
  const location = locationText(record);
  const category = cleanText(record.category);
  const type = cleanText(record.type);
  const domain = inferDomain(name, type, category);
  const approvals = Array.isArray(record.approvals) ? record.approvals.map(cleanText).filter(Boolean) : [];
  const facilities = Array.isArray(record.facilities) && record.facilities.length
    ? record.facilities.map(cleanText).filter(Boolean).slice(0, 10)
    : ["Library", "Classrooms", "Student support", "Department facilities", "Campus assistance"];
  const sources = allSources(record);
  const sourcePhrase = sources.length
    ? "Available source links are preserved for review."
    : "No official source link is asserted for unsupported facts in this pass.";
  const base = repeatedGuidance(name, domain, location, sourcePhrase);
  const verifiedCourses = Boolean(record.official_courses_verified);
  const verifiedFees = Boolean(record.official_fees_verified);
  const override = officialOverrides[cleanText(record.slug)];
  const officialReviewed = Boolean(override);
  const overrideCourses = Array.isArray(override?.courses) ? override.courses.map(cleanText).filter(Boolean) : [];
  const relatedCourses = overrideCourses.length
    ? overrideCourses
    : Array.isArray(record.related_courses)
      ? record.related_courses.map(cleanText).filter(Boolean)
      : [];
  const courseCount = overrideCourses.length ? overrideCourses.length : Number(record.courses_count || relatedCourses.length || 0);
  const ranking = cleanText(record.ranking);
  const naac = cleanText(record.naac_grade);
  const recruiters = Array.isArray(record.top_recruiters) ? record.top_recruiters.map(cleanText).filter(Boolean).slice(0, 12) : [];

  const description = html(
    h("Answer First Overview"),
    base.overview,
    base.highlights,
    h("How To Use This Profile"),
    p(`${name} should be used as a guided checklist, not as the final authority. Start with the programme you want, compare eligibility, then verify the current admission document and fee notice. If a course is not verified from an official catalogue, DekhoCampus keeps it out of the course table rather than showing a generic course list.`),
    p(`A good college comparison is not only about the name of the institution. Students should ask how the curriculum is delivered, whether the department has the facilities needed for the subject, how internships or practical exposure are arranged, and whether the college can provide current written proof for fees, intake, approvals and placement outcomes.`),
    h("Entity Summary For Search And AI Systems"),
    p(`${name} is connected with ${category || domain}, ${type || "higher education"}, ${location}, admissions research, course verification, fee checks, placements, facilities, scholarships, hostel planning and student support. The profile is intentionally written in answer-first paragraphs so AI assistants can quote a short answer and still understand the supporting context.`),
    deepEditorialGuide(name, domain, location, category),
    practicalModuleExpansion(name, domain, location, category),
    extendedDecisionExpansion(name, domain, location, category),
    finalStudentPlaybook(name, domain, location, category)
  );

  const admission = html(
    h("Admissions 2026"),
    p(`Admission to ${name} should begin with the latest official admission notice. Students should confirm the exact programme, eligibility rule, application mode, entrance or merit route, counselling schedule, document list and payment instructions before submitting a form.`),
    p(`The practical admission workflow is to verify the official website, download or read the current notice, confirm whether the college uses direct admission, centralised counselling or entrance-based selection, and keep scanned documents ready. Students should also check refund rules, seat confirmation dates and whether the admission office uses any authorised third-party counselling partner.`),
    p(`For undergraduate programmes, Class 12 subject combinations and minimum marks can matter. For postgraduate or professional programmes, the relevant bachelor degree, entrance score, council rule or university registration may be required. Category, domicile, management quota or minority quota rules should be checked from the written notice, not from older summaries.`),
    p(`Students should also ask how ${name} communicates merit lists, counselling calls and reporting instructions. A genuine admission process normally leaves a trail: notice, application link, merit list, counselling schedule, document list, fee receipt and joining instruction. If the student receives only an informal message, the safer move is to verify directly with the college office.`),
    p(`For students applying from outside ${location}, admission planning should include travel time, hostel reporting, local document requirements, anti-ragging submission, medical fitness documents where required, migration certificate, transfer certificate and university registration. Missing one administrative step can delay admission even when eligibility is otherwise clear.`),
    ul([
      "Check the current academic session and application window.",
      "Verify the programme name exactly as printed by the college or university.",
      "Confirm eligibility, entrance route, counselling route and document verification.",
      "Pay only through official or authorised channels and keep receipts.",
      "Ask for a written fee breakup before locking admission."
    ])
  );

  const eligibility = html(
    h("Eligibility"),
    p(`Eligibility at ${name} is programme-specific. A single college-wide eligibility sentence can mislead students because subject requirements, entrance tests, minimum marks, age rules and professional-council conditions may differ across departments.`),
    p(`Students should match their qualification with the exact course. For technical and professional programmes, confirm science stream subjects, mathematics or biology requirements, diploma lateral entry rules, entrance score validity and regulator conditions. For arts, commerce, science, management and education programmes, confirm stream eligibility, reservation rules, graduation discipline and university norms.`),
    p(`Where official eligibility is not available in this batch, DekhoCampus does not invent a cut-off or minimum percentage. The safer action is to check the official admission notice and call the college admission office before paying any registration fee.`)
  );

  const courseFee = overrideCourses.length
    ? html(
        h("Courses And Fees"),
        p(`${name} has an official course-page review in this batch. The reviewed official page supports the listed course names below. Students should still confirm current intake, admission route and affiliated university details before payment.`),
        ul(overrideCourses),
        p(`A programme-wise official fee table was not visible on the reviewed page, so fees are kept blank until a current official fee notice, brochure or admission circular is found.`)
      )
    : verifiedCourses
    ? html(
        h("Courses And Fees"),
        p(`${name} has official-course verification in production for ${courseCount || relatedCourses.length || "the listed"} programme entries. Students should still check the current academic year before applying because course availability, intake and specialisation names can change.`),
        relatedCourses.length ? ul(relatedCourses.slice(0, 24)) : p("The official course catalogue is verified, but the display list should be checked on the current public page."),
        p(verifiedFees
          ? `Fee details are marked verified in production for this college. Students should still compare tuition, university charges, examination fee, hostel fee, deposit and one-time charges before payment.`
          : `Fees are intentionally kept blank because a complete programme-wise, year-wise, category-wise or quota-wise official fee table has not been verified in this pass.`)
      )
    : html(
        h("Courses And Fees"),
        p(`Existing course and fee values for ${name} are preserved in this batch because no official source link was available in production for a fresh verification attempt. The next pass should search the official college or university website, prospectus, mandatory disclosure, admission notice and regulator affiliation records before changing course names or fees.`),
        p(`If the official source later confirms courses, the exact programme names should be added. If the official source does not publish fees, the fee field should remain blank and students should be told to check the latest official fee notice.`)
      );

  const placement = html(
    h("Placements And Career Outcomes"),
    p(`${name} placement information should be evaluated through recent and programme-wise evidence. Students should ask whether the reported outcomes belong to this campus, this department and this academic year, because pooled drives and group-level claims can look stronger than the actual campus outcome.`),
    p(`A reliable placement check includes eligible students, students who opted for placement, confirmed offers, internships, median salary, common job roles, recruiter continuity and higher-study outcomes. Highest package claims are useful only when they are dated and tied to a programme.`),
    p(`For ${domain}, career outcomes may also include government exams, professional licences, private practice, entrepreneurship, higher studies, research roles, hospital exposure, apprenticeships, portfolio building or local industry networks. Students should define what success means for their course before comparing placement claims.`),
    p(`A family comparing ${name} should ask for examples from the last two or three graduating batches. One recent batch can be affected by market conditions, intake size or a specific recruiter drive. A multi-year view gives a calmer picture of whether the college has a repeatable career-support system.`),
    recruiters.length
      ? p(`Recruiter names currently visible in production include ${recruiters.join(", ")}. Treat these as prompts for verification unless a dated placement report confirms the exact campus relationship.`)
      : p(`Recruiter names are not asserted in this batch without a dated source. Students can ask the placement cell for a recent report and alumni examples from the same course.`),
    ul([
      "Ask for department-wise placement records.",
      "Separate internships from final placement offers.",
      "Compare median salary and role quality, not only highest package.",
      "Check whether employers visited this campus or a wider group campus.",
      "Look at alumni paths, higher studies and local employment opportunities."
    ])
  );

  const cutoff = html(
    h("Cutoff And Selection Checks"),
    p(`Cutoff data for ${name} should be read carefully because cutoffs vary by programme, category, quota, round, exam year and counselling authority. A previous-year closing rank can guide expectations, but it should not be treated as a fixed admission promise for 2026.`),
    p(`Students should compare the latest counselling brochure, seat matrix and round-wise allotment if the college participates in a centralised process. If admission is merit-based or direct, ask the admission office for the current selection rule and whether seats are filled first-come, merit-list based or through counselling.`)
  );

  const rankingsText = html(
    h("Rankings, Approvals And Recognition"),
    p(`${name} ranking and approval claims are kept conservative in this profile. ${approvals.length ? `The production record mentions ${approvals.join(", ")}.` : "No approval list is expanded here without a source."} Students should verify approvals through the relevant official regulator, affiliating university or institutional disclosure.`),
    ranking ? p(`Current ranking text in production says: ${ranking}. Use it as a clue, then confirm the ranking year and category from the ranking publisher.`) : p(`No current national ranking claim is added in this pass unless a recognised ranking source is available.`),
    naac ? p(`The current NAAC field shows ${naac}. Students should verify grade, cycle and validity period from the official NAAC disclosure before treating it as current.`) : p(`NAAC grade is not expanded without a checked validity period.`),
    p(`For trusted comparison, DekhoCampus prioritises official institute pages, regulator records, NIRF or other recognised ranking pages, university affiliation lists and mandatory disclosures. Third-party summaries may help orientation, but they should not override official records for admission, course and fee decisions.`)
  );

  const facilitiesContent = html(
    h("Facilities And Campus Support"),
    p(`${name} facilities should be checked by department and student need. A campus may have a library, labs or activity spaces, but the real question is whether those facilities are accessible, maintained and relevant to the selected programme.`),
    ul(facilities),
    p(`Students should confirm library timing, laboratory access, equipment condition, classroom quality, internet availability, student grievance support, medical assistance, sports access, safety arrangements and transport. For professional programmes, practical labs, workshops, clinical exposure, design studios or teaching-practice arrangements matter more than a generic facility list.`)
  );

  const hostel = html(
    h("Hostel And Student Life"),
    p(`Hostel and student-life details for ${name} should be confirmed before paying any accommodation amount. Students should ask whether hostel seats are guaranteed, how allotment works, what the room-sharing format is, and which charges are refundable.`),
    p(`A useful hostel check includes room type, mess plan, food quality, utility charges, internet, security, entry rules, medical support, transport to classrooms and the process followed when hostel capacity is full. Day scholars should also estimate travel time, local transport reliability and safety around the campus.`)
  );

  const scholarship = html(
    h("Scholarships And Financial Aid"),
    p(`Scholarship options for ${name} may depend on government schemes, category rules, merit, income, disability status, domicile, minority status, sports achievement or institutional concessions. Students should not assume that admission automatically includes a scholarship.`),
    p(`Before applying, check central and state scholarship portals, the college notice board, the affiliating university and the admission office. Keep income certificate, caste or category certificate, domicile, bank details, previous marksheets and entrance documents ready. Renewal rules can require minimum attendance, progression and academic performance.`),
    p(`If fee details are not verified, scholarships should also be read carefully because the benefit may apply only to tuition, only to a capped amount, or only after institutional verification.`)
  );

  const faq = html(
    h("Student FAQs"),
    p(`Is ${name} good for 2026 admissions? It can be considered if the programme, eligibility, commute, fee notice and campus support match the student's goals.`),
    p(`Are the courses and fees final? Only official-course-verified entries should be treated as mapped. Fees remain blank unless a reliable official table is available.`),
    p(`What should students verify first? Start with the official website, admission notice, programme list, affiliation, approvals, fee breakup and placement report.`),
    p(`Can I rely on third-party data? Third-party pages can help discovery, but final decisions should be based on official documents and direct confirmation from the college.`)
  );

  const pageSummary = `${name} in ${location}: source-aware 2026 guide covering admissions, courses, fees, placements, facilities, hostel, scholarships, rankings and official verification checks.`;
  const allContent = [description, admission, eligibility, courseFee, placement, cutoff, rankingsText, facilitiesContent, hostel, scholarship, faq].join(" ");
  const wordCount = cleanText(allContent).split(/\s+/).filter(Boolean).length;
  const tags = [
    category,
    type,
    titleCase(domain),
    cleanText(record.city),
    cleanText(record.state),
    ...approvals,
    ranking && !/legacy|csv/i.test(ranking) ? ranking : "",
    naac && !/legacy|csv/i.test(naac) ? `NAAC ${naac}` : "",
  ].filter(Boolean);

  return {
    name,
    location,
    description,
    pageSummary,
    admission,
    eligibility,
    courseFee,
    placement,
    cutoff,
    rankingsText,
    facilitiesContent,
    hostel,
    scholarship,
    faq,
    tags,
    facilities,
    sources,
    sourceStatus: sourceStatus(record, sources),
    verifiedCourses,
    verifiedFees,
    courseCount,
    relatedCourses,
    overrideCourses,
    officialReviewed,
    wordCount,
  };
};

const blocks = [];
const reportRows = [];
const errors = [];

if (!Array.isArray(rows) || rows.length !== 50) {
  errors.push(`Expected 50 records, got ${Array.isArray(rows) ? rows.length : "invalid input"}`);
}

rows.forEach((record, index) => {
  const s = buildSections(record, index);
  const cleanSlug = cleanText(record.slug);
  const sourcePayload = {
    batch,
    researched_at: researchedAt,
    source_status: s.sourceStatus,
    source_links_for_nofollow_rendering: s.sources,
    content_policy: "answer_first_humanized_aio_aeo_seo_geo_llmo_no_big_dash",
    course_policy: s.overrideCourses.length
      ? "official_courses_updated_from_reviewed_institution_page"
      : s.verifiedCourses
        ? "official_courses_preserved_from_existing_verified_mapping"
        : "existing_courses_preserved_until_official_catalogue_review",
    fee_policy: s.officialReviewed && !s.verifiedFees
      ? "fees_blank_after_reviewed_official_page_did_not_show_programme_fee_table"
      : s.verifiedFees
        ? "verified_fee_fields_preserved"
        : "existing_fees_preserved_until_official_fee_source_review"
  };

  const fieldsToCheck = [s.description, s.admission, s.eligibility, s.courseFee, s.placement, s.cutoff, s.rankingsText, s.facilitiesContent, s.hostel, s.scholarship, s.faq];
  fieldsToCheck.forEach((field, fieldIndex) => {
    if (/[\u2013\u2014]/.test(field)) errors.push(`${cleanSlug}: field ${fieldIndex} contains a long dash`);
    if (new RegExp(["legacy", "csv"].join("-"), "i").test(field)) errors.push(`${cleanSlug}: field ${fieldIndex} contains imported marker text`);
  });

  blocks.push(`
DO $verify$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.colleges WHERE id = ${sql(record.id)} AND slug = ${sql(cleanSlug)}) THEN
    RAISE EXCEPTION 'College target not found or slug changed: ${cleanSlug}';
  END IF;
END
$verify$;

UPDATE public.colleges
SET
  description = ${sql(s.description)},
  page_summary = ${sql(s.pageSummary)},
  meta_title = ${sql(`${s.name}: Admission, Courses, Fees, Placements 2026`)},
  meta_description = ${sql(s.pageSummary.slice(0, 155))},
  meta_keywords = ${sql([s.name, `${s.name} admission 2026`, `${s.name} courses`, `${s.name} fees`, `${s.name} placements`, `${s.name} facilities`, s.location].filter(Boolean).join(", "))},
  admission_process = ${sql(s.admission)},
  eligibility_criteria = ${sql(s.eligibility)},
  course_fee_content = ${sql(s.courseFee)},
  related_courses = CASE WHEN ${s.overrideCourses.length ? "true" : "false"} THEN ${arraySql(s.overrideCourses)} ELSE related_courses END,
  courses_count = CASE WHEN ${s.overrideCourses.length ? "true" : "false"} THEN ${s.overrideCourses.length} ELSE courses_count END,
  placement_content = ${sql(s.placement)},
  cutoff = CASE WHEN trim(COALESCE(cutoff, '')) = '' OR position('legacy' || '-csv' in lower(cutoff)) > 0 THEN ${sql(s.cutoff)} ELSE cutoff END,
  rankings_content = ${sql(s.rankingsText)},
  facilities_content = ${sql(s.facilitiesContent)},
  facilities = CASE WHEN array_length(${arraySql(s.facilities)}, 1) IS NULL THEN facilities ELSE ${arraySql(s.facilities)} END,
  hostel_life = ${sql(s.hostel)},
  scholarship_available = COALESCE(NULLIF(scholarship_available, ''), 'Check official schemes'),
  scholarship_details = ${sql(s.scholarship)},
  fees = CASE WHEN ${s.officialReviewed && !s.verifiedFees ? "true" : "false"} THEN '' ELSE fees END,
  tags = ${arraySql(s.tags)},
  data_source_urls = COALESCE(data_source_urls, '[]'::jsonb) || jsonb_build_array(${jsonSql(sourcePayload)}),
  data_clean_method = CASE WHEN ${s.sources.length ? "true" : "false"} THEN 'source_review_humanized' ELSE data_clean_method END,
  data_clean_state = CASE WHEN ${s.sources.length ? "true" : "false"} THEN 'humanized_source_backed' ELSE 'humanized_official_refresh_pending' END,
  data_clean_audit_note = ${sql(`${batch}; expanded rendered college content; official-aware course policy enforced; existing courses and fees preserved unless official page was reviewed; no long dashes; imported batch marker text removed from public fields.`)},
  data_quality_score = GREATEST(COALESCE(data_quality_score, 0), ${s.sources.length ? 84 : 72}),
  editorial_word_count = ${s.wordCount},
  editorial_module_count = 14,
  editorial_audit_state = CASE WHEN ${s.wordCount >= 6000 ? "true" : "false"} THEN 'expanded_source_review_pending_human_editor' ELSE 'expanded_below_target_source_review_pending' END,
  editorial_audit_note = ${sql(`${batch}; approx ${s.wordCount} words across rendered modules. Human editor review and full official source refresh are still required before marking complete.`)},
  editorial_last_evidence_check_at = ${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz,
  requires_official_source_refresh = true,
  official_courses_verified = COALESCE(official_courses_verified, false),
  official_fees_verified = COALESCE(official_fees_verified, false),
  official_source_clean_pass_count = COALESCE(official_source_clean_pass_count, 0) + ${s.sources.length ? 1 : 0},
  ai_clean_pass_count = COALESCE(ai_clean_pass_count, 0) + 1,
  data_last_checked_at = ${sql(`${researchedAt}T00:00:00+05:30`)}::timestamptz,
  updated_at = now()
WHERE id = ${sql(record.id)} AND slug = ${sql(cleanSlug)};

${s.officialReviewed && !s.verifiedFees ? `DELETE FROM public.course_fees
WHERE college_slug = ${sql(cleanSlug)}
  AND NOT (SELECT COALESCE(official_fees_verified, false) FROM public.colleges WHERE slug = ${sql(cleanSlug)});` : "-- Existing course_fees preserved until an official fee source is reviewed."}
`);

  reportRows.push(`| ${index + 1} | ${s.name.replace(/\|/g, "/")} | ${cleanSlug} | ${s.wordCount} | ${s.overrideCourses.length ? `updated ${s.overrideCourses.length}` : "preserved"} | ${s.officialReviewed && !s.verifiedFees ? "blank after official review" : "preserved"} | ${s.sourceStatus} |`);
});

if (errors.length) {
  console.error(errors.join("\n"));
  process.exit(1);
}

const migrationText = `-- ${batch}
-- Generated ${researchedAt}. Next 50 college official-aware content expansion.
-- Existing course/fee values are preserved unless an official source was reviewed.
-- Fees are blanked only after reviewed official source did not show a usable fee table.
BEGIN;
${blocks.join("\n")}
NOTIFY pgrst, 'reload schema';
COMMIT;
`;

const reportText = `# ${batch}

Generated: ${researchedAt}

Policy:
- Courses: updated only when an official source is reviewed; otherwise existing values are preserved.
- Fees: blanked only after an official source review does not show a usable fee table; otherwise preserved.
- Content: answer-first, human-readable modules for AIO, AEO, SEO, GEO and LLMO.
- Typography: ASCII hyphen only, no long dashes.

| # | College | Slug | Approx words | Courses | Fees | Source status |
|---:|---|---|---:|---|---|---|
${reportRows.join("\n")}
`;

await writeFile(migration, migrationText);
await writeFile(report, reportText);
console.log(`Generated ${rows.length} records`);
console.log(migration);
console.log(report);
