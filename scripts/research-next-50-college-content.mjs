#!/usr/bin/env node

import https from "node:https";
import { writeFile } from "node:fs/promises";
import { resolve } from "node:path";
import { JSDOM } from "jsdom";

const queue = [
  ["AbdulKalam Institute of Technological Sciences - [AKIT], Khammam", "abdulkalam-institute-of-technological-sciences-akit-khammam", "Khammam", "Telangana"],
  ["Abeda Inamdar Senior College, Pune", "abeda-inamdar-senior-college-pune", "Pune", "Maharashtra"],
  ["ABES Engineering College, Ghaziabad", "abes-engineering-college-ghaziabad", "Ghaziabad", "Uttar Pradesh"],
  ["ABES Institute of Technology - [ABESIT], Ghaziabad", "abes-institute-of-technology-abesit-ghaziabad", "Ghaziabad", "Uttar Pradesh"],
  ["Abha GaikwadPatil College of Engineering, Nagpur", "abha-gaikwadpatil-college-of-engineering-nagpur", "Nagpur", "Maharashtra"],
  ["Abhay Yuva Kalyan Kendra Sanchalit College of Education, Dhule", "abhay-yuva-kalyan-kendra-sanchalit-college-of-education-dhule", "Dhule", "Maharashtra"],
  ["Abhaya College of Nursing, Bangalore", "abhaya-college-of-nursing-bangalore", "Bangalore", "Karnataka"],
  ["Abhayapuri College, Bongaigaon", "abhayapuri-college-bongaigaon", "Bongaigaon", "Assam"],
  ["Abhi Institute of Hotel Management- [AIHM], New Delhi", "abhi-institute-of-hotel-management-aihm-new-delhi", "New Delhi", "Delhi Ncr"],
  ["Abhijit Kadam Institute of Management and Social Sciences - [AKIMSS], Solapur", "abhijit-kadam-institute-of-management-and-social-sciences-akimss-solapur", "Solapur", "Maharashtra"],
  ["Abhilashi College of Pharmacy, Mandi", "abhilashi-college-of-pharmacy-mandi", "Mandi", "Himachal Pradesh"],
  ["Abhilashi Institute of Life Sciences - [AILS], Mandi", "abhilashi-institute-of-life-sciences-ails-mandi", "Mandi", "Himachal Pradesh"],
  ["Abhilashi Institute of Management Studies - [AIMS], Mandi", "abhilashi-institute-of-management-studies-aims-mandi", "Mandi", "Himachal Pradesh"],
  ["Abhilashi Post Graduate College of Education, Mandi", "abhilashi-post-graduate-college-of-education-mandi", "Mandi", "Himachal Pradesh"],
  ["Abhinav Education Society&#039;s College of Computer Science and Management, Ambegaon", "abhinav-education-society039s-college-of-computer-science-and-management-ambegaon", "Ambegaon", "Maharashtra"],
  ["Abhinav Education Society&#039;s College of Engineering and Technology, Wadwani", "abhinav-education-society039s-college-of-engineering-and-technology-wadwani", "Wadwani", "Maharashtra"],
  ["Abhinav Education Society&#039;s College of Pharmacy, Pune", "abhinav-education-society039s-college-of-pharmacy-pune", "Pune", "Maharashtra"],
  ["Abhinav Education Society&#039;s D.T.Ed. College Akole, Ahmed Nagar", "abhinav-education-society039s-dted-college-akole-ahmed-nagar", "Ahmed Nagar", "Maharashtra"],
  ["Abhinav Education Society&#039;s Institute of Management and Research - [AESIMR], Pune", "abhinav-education-society039s-institute-of-management-and-research-aesimr-pune", "Pune", "Maharashtra"],
  ["Abhinav Education Society&#039;s Law College, Pune", "abhinav-education-society039s-law-college-pune", "Pune", "Maharashtra"],
  ["Abhinav Hi-Tech College of Engineering and Technology -[AHCET], Hyderabad", "abhinav-hi-tech-college-of-engineering-and-technology-ahcet-hyderabad", "Hyderabad", "Telangana"],
  ["Abhinav Shetkari Shikshan Mandal Degree College, Thane", "abhinav-shetkari-shikshan-mandal-degree-college-thane", "Thane", "Maharashtra"],
  ["Abhishek Institute of Professional Studies - [AIPS], Gwalior", "abhishek-institute-of-professional-studies-aips-gwalior", "Gwalior", "Madhya Pradesh"],
  ["ABMSP&#039;s Anantrao Pawar College of Engineering &amp; Research - [APCOER], Pune", "abmsp039s-anantrao-pawar-college-of-engineering-amp-research-apcoer-pune", "Pune", "Maharashtra"],
  ["ABR College of Engineering and Technology, Prakasam", "abr-college-of-engineering-and-technology-prakasam", "Prakasam", "Andhra Pradesh"],
  ["ABS Academy of Science Technology and Management, Bardhaman", "abs-academy-of-science-technology-and-management-bardhaman", "Bardhaman", "West Bengal"],
  ["ABSS Institue of Technology, Meerut", "abss-institue-of-technology-meerut", "Meerut", "Uttar Pradesh"],
  ["ACADEMY ALLIED HEALTH SCIENCES, Kolkata", "academy-allied-health-sciences-kolkata", "Kolkata", "West Bengal"],
  ["Academy for Technical and Management Excellence - [ATME], Mysore", "academy-for-technical-and-management-excellence-atme-mysore", "Mysore", "Karnataka"],
  ["Academy Of Applied Arts - [AOAA], Guwahati", "academy-of-applied-arts-aoaa-guwahati", "Guwahati", "Assam"],
  ["Academy of Applied Arts North Campus - [AOAA], New Delhi", "academy-of-applied-arts-north-campus-aoaa-new-delhi", "New Delhi", "Delhi Ncr"],
  ["Academy of Applied Arts South Campus - [AOAA], New Delhi", "academy-of-applied-arts-south-campus-aoaa-new-delhi", "New Delhi", "Delhi Ncr"],
  ["Academy of Architecture - [AIA], Mumbai", "academy-of-architecture-aia-mumbai", "Mumbai", "Maharashtra"],
  ["Academy of Business Administration - [ABA], Balasore", "academy-of-business-administration-aba-balasore", "Balasore", "Orissa"],
  ["Academy of Business Management Tourism and Research- [ABMTR], Bangalore", "academy-of-business-management-tourism-and-research-abmtr-bangalore", "Bangalore", "Karnataka"],
  ["Academy of Carver Aviation Pvt Ltd, Pune", "academy-of-carver-aviation-pvt-ltd-pune", "Pune", "Maharashtra"],
  ["Academy of Fashion and Textile Technology - [AFTT], Chennai", "academy-of-fashion-and-textile-technology-aftt-chennai", "Chennai", "Tamil Nadu"],
  ["Academy of Hospital Administration - [AHA], Noida", "academy-of-hospital-administration-aha-noida", "Noida", "Uttar Pradesh"],
  ["Academy of Management Professional Development - [AMPD], Thane", "academy-of-management-professional-development-ampd-thane", "Thane", "Maharashtra"],
  ["Academy of Management Studies - [AMS], Dehradun", "academy-of-management-studies-ams-dehradun", "Dehradun", "Uttarakhand"],
  ["Academy of Maritime Education and Training University - [AMET], Chennai", "academy-of-maritime-education-and-training-university-amet-chennai", "Chennai", "Tamil Nadu"],
  ["Academy of Medical Science Pariyaram , Kannur", "academy-of-medical-science-pariyaram-kannur", "Kannur", "Kerala"],
  ["Academy of Pharmaceutical Sciences Pariyaram, Kannur", "academy-of-pharmaceutical-sciences-pariyaram-kannur", "Kannur", "Kerala"],
  ["Academy of Technology - [AOT], Hooghly", "academy-of-technology-aot-hooghly", "Hooghly", "West Bengal"],
  ["ACC Jain College of Education, Birbhum", "acc-jain-college-of-education-birbhum", "Birbhum", "West Bengal"],
  ["Access Atlantech Media College, Chennai", "access-atlantech-media-college-chennai", "Chennai", "Tamil Nadu"],
  ["Accman Institute of Management - [ACCMANIM], Greater Noida", "accman-institute-of-management-accmanim-greater-noida", "Greater Noida", "Uttar Pradesh"],
  ["Accord Business School - [ABS], Tirupati", "accord-business-school-abs-tirupati", "Tirupati", "Andhra Pradesh"],
  ["Accurate Institute of Architecture and Planning - [AIAP], Greater Noida", "accurate-institute-of-architecture-and-planning-aiap-greater-noida", "Greater Noida", "Uttar Pradesh"],
  ["Accurate Institute of Management and Technology - Greater Noida", "accurate-institute-of-management-and-technology-aimt-greater-noida", "Greater Noida", "Uttar Pradesh"],
].map(([name, slug, city, state]) => ({ name, slug, city, state }));

const blockedDomains = [
  "collegedunia.com",
  "shiksha.com",
  "careers360.com",
  "collegebatch.com",
  "getmyuni.com",
  "universitykart.com",
  "collegedekho.com",
  "collegevidya.com",
  "kollegeapply.com",
  "wikipedia.org",
  "justdial.com",
  "facebook.com",
  "instagram.com",
  "youtube.com",
  "linkedin.com",
];

const delay = (ms) => new Promise((resolveDelay) => setTimeout(resolveDelay, ms));

const get = (url, redirects = 0) =>
  new Promise((resolveRequest, rejectRequest) => {
    const request = https.get(
      url,
      {
        timeout: 15000,
        headers: {
          "User-Agent":
            "Mozilla/5.0 (compatible; DekhoCampusSourceAudit/1.0; +https://dekhocampus.com)",
          Accept: "text/html,application/xhtml+xml",
        },
      },
      (response) => {
        if (
          response.statusCode >= 300 &&
          response.statusCode < 400 &&
          response.headers.location &&
          redirects < 4
        ) {
          const next = new URL(response.headers.location, url).href;
          response.resume();
          get(next, redirects + 1).then(resolveRequest, rejectRequest);
          return;
        }
        let body = "";
        response.setEncoding("utf8");
        response.on("data", (chunk) => {
          if (body.length < 1_500_000) body += chunk;
        });
        response.on("end", () =>
          resolveRequest({
            url,
            status: response.statusCode,
            type: response.headers["content-type"] || "",
            body,
          }),
        );
      },
    );
    request.on("timeout", () => request.destroy(new Error("timeout")));
    request.on("error", rejectRequest);
  });

const decodeDuckUrl = (href) => {
  try {
    const parsed = new URL(href, "https://html.duckduckgo.com");
    return parsed.searchParams.get("uddg") || parsed.href;
  } catch {
    return null;
  }
};

const tokensFor = (name) =>
  name
    .replace(/&[^;]+;/g, " ")
    .toLowerCase()
    .replace(/\[[^\]]+]/g, " ")
    .replace(/[^a-z0-9]+/g, " ")
    .split(/\s+/)
    .filter((token) => token.length >= 4 && !["college", "institute", "academy", "technology", "management", "science", "education"].includes(token));

const scoreResult = (college, result) => {
  const host = new URL(result.url).hostname.replace(/^www\./, "");
  if (blockedDomains.some((domain) => host === domain || host.endsWith(`.${domain}`))) return -100;
  const haystack = `${host} ${result.title} ${result.snippet}`.toLowerCase();
  const tokens = tokensFor(college.name);
  let score = 0;
  if (/\.(ac|edu)\.in$/.test(host) || /\.edu$/.test(host)) score += 5;
  if (/official/.test(result.snippet.toLowerCase())) score += 2;
  score += tokens.filter((token) => haystack.includes(token)).length * 2;
  if (haystack.includes(college.city.toLowerCase())) score += 2;
  return score;
};

const search = async (college) => {
  const query = encodeURIComponent(`${college.name.replace(/&[^;]+;/g, " ")} official website courses admission`);
  const response = await get(`https://html.duckduckgo.com/html/?q=${query}`);
  const dom = new JSDOM(response.body);
  const results = [...dom.window.document.querySelectorAll(".result")].map((node) => {
    const link = node.querySelector(".result__a");
    const snippet = node.querySelector(".result__snippet");
    return {
      title: link?.textContent?.trim() || "",
      url: decodeDuckUrl(link?.getAttribute("href") || ""),
      snippet: snippet?.textContent?.replace(/\s+/g, " ").trim() || "",
    };
  }).filter((result) => result.url?.startsWith("http"));
  return results
    .map((result) => ({ ...result, score: scoreResult(college, result) }))
    .sort((a, b) => b.score - a.score);
};

const inspect = async (candidate) => {
  try {
    const response = await get(candidate.url);
    if (!response.type.includes("text/html") || response.status >= 400) {
      return { reachable: false, status: response.status, final_url: candidate.url };
    }
    const dom = new JSDOM(response.body);
    const document = dom.window.document;
    document.querySelectorAll("script,style,noscript,svg").forEach((node) => node.remove());
    const text = document.body?.textContent?.replace(/\s+/g, " ").trim() || "";
    const links = [...document.querySelectorAll("a[href]")]
      .map((node) => {
        try {
          const href = new URL(node.getAttribute("href"), candidate.url);
          return {
            text: node.textContent.replace(/\s+/g, " ").trim(),
            url: href.href,
          };
        } catch {
          return null;
        }
      })
      .filter(Boolean)
      .filter((link) => /course|program|admission|placement|facility|hostel|scholar|approval|accredit/i.test(`${link.text} ${link.url}`))
      .slice(0, 12);
    return {
      reachable: true,
      status: response.status,
      final_url: candidate.url,
      title: document.title?.trim() || candidate.title,
      excerpt: text.slice(0, 3500),
      relevant_links: links,
    };
  } catch (error) {
    return { reachable: false, error: error.message, final_url: candidate.url };
  }
};

const findings = [];
for (let index = 0; index < queue.length; index += 1) {
  const college = queue[index];
  try {
    const results = await search(college);
    const candidate = results.find((result) => result.score >= 4) || results[0] || null;
    const page = candidate ? await inspect(candidate) : null;
    findings.push({
      ...college,
      candidate,
      alternatives: results.slice(1, 4),
      page,
      source_status:
        candidate && candidate.score >= 8 && page?.reachable
          ? "strong_candidate"
          : candidate && candidate.score >= 4 && page?.reachable
            ? "review_candidate"
            : "unresolved",
    });
  } catch (error) {
    findings.push({ ...college, source_status: "unresolved", error: error.message });
  }
  console.log(`${index + 1}/${queue.length} ${college.slug}`);
  await delay(450);
}

const output = resolve(
  process.argv[2] ||
    "data/college-official-enrichment/research-next-50-content-draft.json",
);
await writeFile(output, `${JSON.stringify(findings, null, 2)}\n`);
console.log(
  JSON.stringify({
    output,
    total: findings.length,
    strong: findings.filter((item) => item.source_status === "strong_candidate").length,
    review: findings.filter((item) => item.source_status === "review_candidate").length,
    unresolved: findings.filter((item) => item.source_status === "unresolved").length,
  }),
);
