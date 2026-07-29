#!/usr/bin/env node

import { readFile } from "node:fs/promises";
import { resolve } from "node:path";

const file = resolve(process.argv[2] || "data/college-official-enrichment/batch-001.json");
const data = JSON.parse(await readFile(file, "utf8"));
const errors = [];
const warnings = [];
const seen = new Set();
const allowedRankingHost = "www.nirfindia.org";
const copyFields = [
  "description",
  "page_summary",
  "admission_process",
  "eligibility_criteria",
  "course_fee_content",
  "placement_content",
  "facilities_content",
  "hostel_life",
  "scholarship_details",
  "rankings_content"
];

const words = (value) => String(value || "").trim().split(/\s+/).filter(Boolean);
const normalized = (value) => String(value || "").toLowerCase().replace(/[^a-z0-9]+/g, " ").trim();
const organizationDomain = (host) => {
  const parts = host.replace(/^www\./, "").split(".");
  const depth = host.endsWith(".ac.in") ? 3 : 2;
  return parts.slice(-depth).join(".");
};

for (const [index, record] of (data.records || []).entries()) {
  const at = `records[${index}] (${record.slug || "missing slug"})`;
  if (!record.slug || seen.has(record.slug)) errors.push(`${at}: slug is missing or duplicated`);
  seen.add(record.slug);
  if (!/^https:\/\/.+\/?$/i.test(record.official_website || "")) errors.push(`${at}: official_website must be HTTPS`);
  const officialHost = organizationDomain(new URL(record.official_website).hostname);
  const officialSources = record.sources?.official || [];
  if (!officialSources.length) errors.push(`${at}: at least one official source is required`);
  for (const source of officialSources) {
    const host = organizationDomain(new URL(source).hostname);
    if (host !== officialHost) {
      errors.push(`${at}: non-official source placed in official list: ${source}`);
    }
  }
  for (const source of record.sources?.ranking || []) {
    if (new URL(source).hostname !== allowedRankingHost) errors.push(`${at}: ranking source must be NIRF: ${source}`);
  }
  for (const field of copyFields) {
    const value = record[field] || "";
    if (/<\/?[a-z][\s\S]*>/i.test(value)) errors.push(`${at}: ${field} contains HTML`);
    if (words(value).length < 20) warnings.push(`${at}: ${field} is brief (${words(value).length} words)`);
  }
  if (!Array.isArray(record.courses) || !record.courses.length) errors.push(`${at}: verified course list is required`);
  if (!["complete", "programme_families_only"].includes(record.courses_scope)) errors.push(`${at}: courses_scope must be complete or programme_families_only`);
  const courseSlugs = new Set((record.courses || []).map((course) => course.slug));
  for (const slug of record.related_courses || []) {
    if (!courseSlugs.has(slug)) errors.push(`${at}: related course ${slug} has no verified course row`);
  }
  for (const course of record.courses || []) {
    if (!course.slug || !course.name) errors.push(`${at}: every course needs slug and name`);
    if ("fee_amount" in course || "fee" in course) errors.push(`${at}: unverified fees must not appear in this batch`);
  }
  if (record.courses_scope !== "complete") {
    warnings.push(`${at}: programme families are sourced, but complete branch/specialisation verification remains pending`);
  }
}

// Detect accidental templating inside this batch. Shared phrases longer than 18 words are suspicious.
for (let left = 0; left < (data.records || []).length; left += 1) {
  for (let right = left + 1; right < data.records.length; right += 1) {
    for (const field of copyFields) {
      const a = normalized(data.records[left][field]).split(" ");
      const b = normalized(data.records[right][field]);
      for (let start = 0; start <= a.length - 19; start += 1) {
        const phrase = a.slice(start, start + 19).join(" ");
        if (phrase && b.includes(phrase)) errors.push(`${field}: repeated 19-word phrase in ${data.records[left].slug} and ${data.records[right].slug}`);
      }
    }
  }
}

if (warnings.length) console.warn(warnings.join("\n"));
if (errors.length) {
  console.error(errors.join("\n"));
  process.exit(1);
}

console.log(`Validated ${data.records.length} official-source college records from ${file}`);
