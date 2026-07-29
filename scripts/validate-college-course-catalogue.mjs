#!/usr/bin/env node

import { readFile } from "node:fs/promises";
import { resolve } from "node:path";

const input = resolve(process.argv[2] || "data/college-official-enrichment/batch-002-course-catalogues.json");
const data = JSON.parse(await readFile(input, "utf8"));
const errors = [];

if (!data.batch || !data.researched_at || !Array.isArray(data.records) || data.records.length === 0) {
  errors.push("Manifest must contain batch, researched_at and at least one record.");
}

for (const record of data.records || []) {
  const prefix = record.slug || record.name || "unknown-record";
  const names = new Set();
  const slugs = new Set();

  if (record.catalogue_scope !== "complete_advertised_programmes_and_specialisations") {
    errors.push(`${prefix}: catalogue_scope is not complete.`);
  }
  if (!Array.isArray(record.sources) || record.sources.length < 2) {
    errors.push(`${prefix}: at least two official sources are required.`);
  }
  for (const source of record.sources || []) {
    let host = "";
    try {
      host = new URL(source).hostname;
    } catch {
      errors.push(`${prefix}: invalid source URL ${source}`);
    }
    const domain = record.official_source_domain;
    if (!domain) {
      errors.push(`${prefix}: official_source_domain is required.`);
    } else if (host && host !== domain && !host.endsWith(`.${domain}`)) {
      errors.push(`${prefix}: source is outside ${domain}: ${source}`);
    }
  }
  if (!Array.isArray(record.courses) || record.courses.length < 10) {
    errors.push(`${prefix}: course catalogue is unexpectedly small.`);
  }
  for (const course of record.courses || []) {
    if (!/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(course.slug || "")) {
      errors.push(`${prefix}: invalid course slug ${course.slug}`);
    }
    if (!course.name || course.name.includes("<") || course.name.includes(">")) {
      errors.push(`${prefix}: invalid course name ${course.name}`);
    }
    if (slugs.has(course.slug)) errors.push(`${prefix}: duplicate course slug ${course.slug}`);
    if (names.has(course.name.toLowerCase())) errors.push(`${prefix}: duplicate course name ${course.name}`);
    slugs.add(course.slug);
    names.add(course.name.toLowerCase());
  }
}

if (errors.length) {
  console.error(errors.join("\n"));
  process.exit(1);
}

console.log(JSON.stringify({
  batch: data.batch,
  records: data.records.length,
  courses: data.records.reduce((sum, record) => sum + record.courses.length, 0),
  status: "valid"
}, null, 2));
