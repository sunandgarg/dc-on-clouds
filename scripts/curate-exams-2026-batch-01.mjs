/**
 * Source-backed 2026 exam curation, batch 01.
 *
 * Dry-run:
 *   SUPABASE_URL=... SUPABASE_SERVICE_ROLE_KEY=... node scripts/curate-exams-2026-batch-01.mjs
 * Apply:
 *   SUPABASE_URL=... SUPABASE_SERVICE_ROLE_KEY=... node scripts/curate-exams-2026-batch-01.mjs --apply
 *
 * The script deliberately updates only facts supported by the cited first-party
 * pages/bulletins. It does not infer fees, cut-offs, seats, rankings, or dates.
 */

const apply = process.argv.includes("--apply");
const url = String(process.env.SUPABASE_URL || "").replace(/\/$/, "");
const key = String(process.env.SUPABASE_SERVICE_ROLE_KEY || "");
if (!url || !key) throw new Error("SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY are required");
if (/^sb_publishable_/i.test(key)) throw new Error("A service-role/secret key is required");

const JEE_BULLETIN = "https://cdnbbsr.s3waas.gov.in/s3f8e59f4b2fe7c5705bf878bbd494ccdf/uploads/2025/11/202511021649722475.pdf";
const NEET_BULLETIN = "https://cdnbbsr.s3waas.gov.in/s37bc1ec1d9c3426357e69acd5bf320061/uploads/2026/02/202602231394640855.pdf";
const BITSAT_BULLETIN = "https://admissions.bits-pilani.ac.in/FD/downloads/BITSAT-2026_Brochure.pdf";
const XAT_BULLETIN = "https://xatonline.in/assets/pdf/XAT-e_Bulletin-2026.pdf";
const UCEED_BULLETIN = "https://www.uceed.iitb.ac.in/2026/assets/downloads/docs/UCEED2026_Information_Brochure.pdf";

const records = [
  {
    slug: "bitsat-2026",
    sources: [BITSAT_BULLETIN, "https://admissions.bits-pilani.ac.in/FD/FD_brochure.html"],
    data: {
      name: "BITSAT",
      short_name: "BITSAT",
      full_name: "BITS Admission Test 2026",
      official_website: "https://admissions.bits-pilani.ac.in/",
      website: "https://admissions.bits-pilani.ac.in/",
      brochure_url: BITSAT_BULLETIN,
      registration_url: "https://admissions.bits-pilani.ac.in/",
      description: "BITSAT 2026 is BITS Pilani's computer-based entrance test for admission to Integrated First Degree programmes at its Pilani, Goa and Hyderabad campuses for 2026-27.",
      page_summary: "BITSAT 2026 has two test sessions. Each session lasts three hours and contains 130 objective questions across Physics, Chemistry, English proficiency, logical reasoning, and Mathematics or Biology.",
      category: "Engineering",
      categories: ["Engineering", "Pharmacy", "Science"],
      exam_type: "University entrance exam",
      level: "Undergraduate",
      mode: "Computer-based test",
      frequency: "Two sessions in 2026",
      duration: "3 hours",
      language: "English",
      eligibility: "Candidates must be appearing for Class 12 in 2026 or have passed it in 2025. Programme-specific subject requirements apply. The official brochure requires 75% aggregate in PCM or PCB, as applicable, and at least 60% in each relevant subject.",
      application_mode: "Online",
      application_start_date: "15 December 2025",
      application_end_date: "16 March 2026 for Session 1 or both sessions; 2 May 2026 for the Session 2 application window",
      exam_date: "15-17 April 2026 (Session 1); 25-27 May 2026 (Session 2)",
      exam_pattern: "Three-hour computer-based test with 130 objective questions. Correct answers receive 3 marks, incorrect answers lose 1 mark, and unattempted questions receive 0. Candidates who answer all 130 questions may attempt up to 12 extra questions.",
      negative_marking: true,
      dates_content: "<h2>BITSAT 2026 dates</h2><ul><li>Session 1: 15-17 April 2026</li><li>Session 2: 25-27 May 2026</li><li>Admission application with Class 12 marks and preferences: 29 April-1 June 2026</li></ul><p>Check the official BITS admission portal for subsequent changes and iteration schedules.</p>",
      summary_content: "<h2>What is BITSAT 2026?</h2><p>BITSAT 2026 is the BITS Pilani entrance test for Integrated First Degree admissions at Pilani, Goa and Hyderabad. It is conducted online in two sessions, and the higher score is considered when a candidate appears twice.</p>",
      meta_title: "BITSAT 2026: Dates, Eligibility, Pattern and Official Link",
      meta_description: "Check official BITSAT 2026 dates, eligibility, three-hour test pattern, marking scheme, brochure and application links for BITS Pilani admissions.",
      meta_keywords: "BITSAT 2026, BITSAT dates, BITSAT eligibility, BITSAT pattern, BITS Pilani admission",
    },
  },
  {
    slug: "xat-2026",
    sources: [XAT_BULLETIN, "https://xatonline.in/"],
    data: {
      name: "XAT",
      short_name: "XAT",
      full_name: "Xavier Aptitude Test 2026",
      official_website: "https://xatonline.in/",
      website: "https://xatonline.in/",
      brochure_url: XAT_BULLETIN,
      registration_url: "https://xatonline.in/",
      description: "XAT 2026 is the Xavier Aptitude Test administered for management admissions, including XLRI programmes and participating institutes that use XAT scores.",
      page_summary: "XAT 2026 was scheduled for Sunday, 4 January 2026. Registration ran from 10 July to 5 December 2025, with the result scheduled for the last week of January 2026.",
      category: "Management",
      categories: ["Management"],
      exam_type: "Management entrance exam",
      level: "Postgraduate",
      mode: "Computer-based test",
      frequency: "Annual",
      language: "English",
      application_mode: "Online",
      application_start_date: "10 July 2025",
      application_end_date: "5 December 2025",
      exam_date: "4 January 2026",
      result_date: "Last week of January 2026",
      application_process: "Register on the official XAT portal, complete the application using the generated XAT ID, upload the required photograph and signature, select applicable programmes, and pay the prescribed fee.",
      dates_content: "<h2>XAT 2026 dates</h2><ul><li>Registration: 10 July-5 December 2025</li><li>Admit card: from 20 December 2025 (tentative)</li><li>Exam: 4 January 2026</li><li>Result: last week of January 2026</li><li>Scorecard download: 31 January-31 March 2026</li></ul>",
      summary_content: "<h2>What is XAT 2026?</h2><p>XAT is a national management entrance test used by XLRI and other participating management institutes. Applicants should use the official XAT portal for registration, admit-card and result updates.</p>",
      meta_title: "XAT 2026: Dates, Registration and Official Bulletin",
      meta_description: "See official XAT 2026 registration dates, exam date, result schedule, application steps, bulletin and direct XAT portal links.",
      meta_keywords: "XAT 2026, XAT date, XAT registration, XAT result, XLRI admission",
    },
  },
  {
    slug: "uceed-2026",
    sources: [UCEED_BULLETIN, "https://www.uceed.iitb.ac.in/2026/"],
    data: {
      name: "UCEED",
      short_name: "UCEED",
      full_name: "Undergraduate Common Entrance Examination for Design 2026",
      official_website: "https://www.uceed.iitb.ac.in/2026/",
      website: "https://www.uceed.iitb.ac.in/2026/",
      brochure_url: UCEED_BULLETIN,
      registration_url: "https://www.uceed.iitb.ac.in/2026/",
      description: "UCEED 2026 is the Undergraduate Common Entrance Examination for Design conducted by IIT Bombay for BDes admission at participating institutes.",
      page_summary: "UCEED 2026 was held on 18 January 2026 from 9:00 am to 12:00 noon. Students from any Class 12 stream could apply if they first appeared for the qualifying examination in 2025 or 2026 and met the age and attempt rules.",
      category: "Design",
      categories: ["Design"],
      exam_type: "Design entrance exam",
      level: "Undergraduate",
      mode: "Test-centre based",
      frequency: "Annual",
      duration: "3 hours",
      language: "English",
      eligibility: "Candidates must have first appeared for Class 12 or an equivalent examination in 2025 or 2026. All streams are eligible. The official age limit and maximum two-consecutive-attempt rule also apply.",
      age_limit: "Born on or after 1 October 2001 for OPEN/EWS/OBC-NCL; on or after 1 October 1996 for SC/ST/PwD",
      application_mode: "Online",
      application_end_date: "31 October 2025 with regular fee",
      exam_date: "18 January 2026",
      result_date: "6 March 2026",
      dates_content: "<h2>UCEED 2026 dates</h2><ul><li>Regular-fee registration deadline: 31 October 2025</li><li>Exam: 18 January 2026, 9:00 am-12:00 noon</li><li>Result: 6 March 2026</li><li>BDes application: 14 March-10 April 2026</li></ul>",
      summary_content: "<h2>What is UCEED 2026?</h2><p>UCEED is IIT Bombay's design entrance examination for BDes admissions at participating institutes. Exam eligibility and BDes admission eligibility are separate, so candidates should verify both in the official brochure.</p>",
      meta_title: "UCEED 2026: Dates, Eligibility, Result and Official Link",
      meta_description: "Check official UCEED 2026 exam and result dates, eligibility, age rules, BDes admission schedule, brochure and IIT Bombay links.",
      meta_keywords: "UCEED 2026, UCEED eligibility, UCEED exam date, UCEED result, BDes admission",
    },
  },
  {
    slug: "jee-main-2026",
    sources: [JEE_BULLETIN, "https://jeemain.nta.nic.in/"],
    data: {
      name: "JEE Main",
      short_name: "JEE Main",
      full_name: "Joint Entrance Examination (Main) 2026",
      official_website: "https://jeemain.nta.nic.in/",
      website: "https://jeemain.nta.nic.in/",
      brochure_url: JEE_BULLETIN,
      registration_url: "https://jeemain.nta.nic.in/",
      description: "JEE Main 2026 is the National Testing Agency entrance examination for undergraduate engineering, architecture and planning programmes and is also the eligibility test for JEE Advanced.",
      page_summary: "JEE Main 2026 was conducted in January and April sessions. Paper 1 is for B.E./B.Tech, Paper 2A is for B.Arch, and Paper 2B is for B.Planning.",
      category: "Engineering",
      categories: ["Engineering", "Architecture", "Planning"],
      exam_type: "National entrance exam",
      level: "Undergraduate",
      mode: "Computer-based test; drawing component for B.Arch is offline",
      frequency: "Two sessions in 2026",
      duration: "3 hours; 3 hours 30 minutes when both B.Arch and B.Planning papers are taken",
      eligibility: "Candidates who passed Class 12 or an equivalent examination in 2024 or 2025, or were appearing in 2026, could appear. There is no age limit for JEE Main itself, although admitting institutes may have separate rules.",
      age_limit: "No age limit for appearing in JEE Main 2026; institute-specific admission rules may apply",
      application_mode: "Online",
      application_start_date: "31 October 2025 for Session 1",
      application_end_date: "27 November 2025 for Session 1",
      exam_date: "21-30 January 2026 (Session 1); 2-9 April 2026 (Session 2)",
      negative_marking: true,
      exam_pattern: "Paper 1 tests Physics, Chemistry and Mathematics. Paper 2A covers Mathematics, Aptitude and Drawing; Paper 2B covers Mathematics, Aptitude and Planning. MCQs and numerical-value questions use +4 for correct and -1 for incorrect answers.",
      dates_content: "<h2>JEE Main 2026 dates</h2><ul><li>Session 1 exam window: 21-30 January 2026</li><li>Session 1 result: by 12 February 2026</li><li>Session 2 exam window: 2-9 April 2026</li><li>Session 2 result: by 20 April 2026</li></ul>",
      summary_content: "<h2>What is JEE Main 2026?</h2><p>JEE Main is the NTA entrance examination for B.E./B.Tech, B.Arch and B.Planning admissions. Paper 1 scores are also used to determine eligibility for JEE Advanced, subject to its separate rules.</p>",
      meta_title: "JEE Main 2026: Dates, Eligibility, Pattern and Official Link",
      meta_description: "Check official JEE Main 2026 session dates, eligibility, papers, duration, marking scheme, information bulletin and NTA links.",
      meta_keywords: "JEE Main 2026, JEE Main dates, JEE eligibility, JEE pattern, NTA JEE",
    },
  },
  {
    slug: "national-eligibility-cum-entrance-test-neet",
    sources: [NEET_BULLETIN, "https://neet.nta.nic.in/"],
    data: {
      name: "NEET UG",
      short_name: "NEET UG",
      full_name: "National Eligibility cum Entrance Test (Undergraduate) 2026",
      official_website: "https://neet.nta.nic.in/",
      website: "https://neet.nta.nic.in/",
      brochure_url: NEET_BULLETIN,
      registration_url: "https://neet.nta.nic.in/",
      description: "NEET UG 2026 is the National Testing Agency's common entrance examination for undergraduate medical education and specified dental, AYUSH and homoeopathy programmes.",
      page_summary: "NEET UG 2026 is a three-hour, pen-and-paper examination with 180 compulsory questions in Physics, Chemistry and Biology. Candidates should rely on the official NTA portal for re-examination and result notices.",
      category: "Medical",
      categories: ["Medical", "Dental", "AYUSH"],
      exam_type: "National medical entrance exam",
      level: "Undergraduate",
      mode: "Pen and paper",
      frequency: "Annual",
      duration: "3 hours",
      eligibility: "Candidates must meet the qualifying-examination and subject requirements in the official bulletin. Indian nationals, NRIs, OCI candidates and foreign nationals may appear. Candidates must complete 17 years by 31 December 2026.",
      age_limit: "Minimum 17 years by 31 December 2026; no upper age limit",
      application_mode: "Online",
      application_end_date: "8 March 2026",
      exam_date: "3 May 2026; official re-examination held on 21 June 2026",
      negative_marking: true,
      exam_pattern: "The pen-and-paper test has 180 compulsory questions: 45 Physics, 45 Chemistry and 90 Biology questions, for 720 marks. Correct answers receive 4 marks, incorrect answers lose 1 mark, and unanswered questions receive 0.",
      dates_content: "<h2>NEET UG 2026 dates</h2><ul><li>Application fee deadline: 8 March 2026</li><li>Original exam: 3 May 2026</li><li>Official re-examination: 21 June 2026</li></ul><p>Use the official NTA website for the scorecard, answer keys and any candidate-specific notices.</p>",
      summary_content: "<h2>What is NEET UG 2026?</h2><p>NEET UG is the common national examination for undergraduate medical education and specified dental, AYUSH and homoeopathy courses. The 2026 paper had 180 compulsory questions to be completed in three hours.</p>",
      meta_title: "NEET UG 2026: Dates, Eligibility, Pattern and Official Link",
      meta_description: "Check official NEET UG 2026 dates, age rule, eligibility overview, 180-question pattern, bulletin, scorecard and NTA links.",
      meta_keywords: "NEET UG 2026, NEET date, NEET eligibility, NEET pattern, NTA NEET",
    },
  },
];

const headers = {
  apikey: key,
  Authorization: `Bearer ${key}`,
  "Content-Type": "application/json",
};

async function request(path, options = {}) {
  const response = await fetch(`${url}/rest/v1/${path}`, { headers, ...options });
  const text = await response.text();
  if (!response.ok) throw new Error(`${response.status} ${text.slice(0, 500)}`);
  return text ? JSON.parse(text) : null;
}

const results = [];
for (const record of records) {
  const rows = await request(`exams?select=*&slug=eq.${encodeURIComponent(record.slug)}&limit=1`);
  const current = rows?.[0];
  if (!current) {
    results.push({ slug: record.slug, status: "missing" });
    continue;
  }
  const now = new Date().toISOString();
  const changedFields = Object.keys(record.data).filter((field) =>
    JSON.stringify(current[field]) !== JSON.stringify(record.data[field])
  );
  if (apply && changedFields.length) {
    const update = {
      ...record.data,
      data_source_urls: record.sources,
      data_verified_at: now,
      data_last_checked_at: now,
      data_quality_score: 100,
      data_clean_attempts: Math.max(Number(current.data_clean_attempts || 0) + 1, 1),
      data_clean_successes: Math.max(Number(current.data_clean_successes || 0) + 1, 1),
      data_clean_state: "cleaned",
      updated_at: now,
    };
    await request(`exams?slug=eq.${encodeURIComponent(record.slug)}`, {
      method: "PATCH",
      headers: { ...headers, Prefer: "return=minimal" },
      body: JSON.stringify(update),
    });
  }
  results.push({ slug: record.slug, status: changedFields.length ? (apply ? "updated" : "would_update") : "unchanged", changed_fields: changedFields });
}

console.log(JSON.stringify({ mode: apply ? "apply" : "dry-run", count: results.length, results }, null, 2));
