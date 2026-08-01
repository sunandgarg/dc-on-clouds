#!/usr/bin/env node

import { execFileSync } from "node:child_process";
import { writeFile } from "node:fs/promises";
import https from "node:https";
import { JSDOM } from "jsdom";

const outputSql = process.argv[2] || "supabase/migrations/20260802001000_nirf_2025_tags_for_audited_colleges.sql";
const outputReport = process.argv[3] || "reports/nirf-2025-audited-college-matches.md";
const inspectOnly = process.argv.includes("--inspect");

const categories = [
  ["Overall", "OverallRanking.html"],
  ["University", "UniversityRanking.html"],
  ["College", "CollegeRanking.html"],
  ["Engineering", "EngineeringRanking.html"],
  ["Management", "ManagementRanking.html"],
  ["Pharmacy", "PharmacyRanking.html"],
  ["Medical", "MedicalRanking.html"],
  ["Dental", "DentalRanking.html"],
  ["Law", "LawRanking.html"],
  ["Architecture and Planning", "ArchitectureRanking.html"],
  ["Agriculture and Allied Sectors", "AgricultureRanking.html"],
  ["Research", "ResearchRanking.html"],
  ["Innovation", "InnovationRanking.html"],
  ["State Public University", "STATEPUBLICUNIVERSITYRanking.html"],
  ["Open University", "OPENUNIVERSITYRanking.html"],
  ["Skill University", "SKILLUNIVERSITYRanking.html"],
];

const clean = (value) => String(value || "").replace(/[\u2013\u2014]/g, "-").replace(/\s+/g, " ").trim();
const sql = (value) => `'${clean(value).replace(/'/g, "''")}'`;
const normalize = (value) => clean(value)
  .toLowerCase()
  .replace(/\[[^\]]+\]|\([^)]*\b(?:formerly|autonomous|deemed|campus)\b[^)]*\)/g, " ")
  .replace(/&/g, " and ")
  .replace(/\bthe\b/g, " ")
  .replace(/[^a-z0-9]+/g, " ")
  .replace(/\s+/g, " ")
  .trim();

const organizationTokens = new Set(["college", "university", "institute", "institution", "technology", "science", "sciences", "engineering", "management", "medical", "academy"]);
const significant = (value) => normalize(value).split(" ").filter((token) => token.length > 1 && !organizationTokens.has(token));

function get(url, redirects = 0) {
  return new Promise((resolve, reject) => {
    https.get(url, {
      headers: {
        "User-Agent": "DekhoCampus editorial evidence audit/1.0",
        "Accept": "text/html,application/xhtml+xml",
        "Accept-Encoding": "identity",
      },
    }, (response) => {
      if (response.statusCode >= 300 && response.statusCode < 400 && response.headers.location && redirects < 5) {
        response.resume();
        resolve(get(new URL(response.headers.location, url).href, redirects + 1));
        return;
      }
      if (response.statusCode !== 200) {
        response.resume();
        reject(new Error(`${url}: HTTP ${response.statusCode}`));
        return;
      }
      const chunks = [];
      response.on("data", (chunk) => chunks.push(chunk));
      response.on("end", () => resolve(Buffer.concat(chunks).toString("utf8")));
    }).on("error", reject);
  });
}

function parseCliJson(output) {
  const start = output.indexOf("{");
  if (start < 0) throw new Error("Supabase CLI did not return JSON");
  return JSON.parse(output.slice(start));
}

function loadColleges() {
  const query = `SELECT slug,name,city,state,tags,ranking,data_source_urls
    FROM public.colleges c
    JOIN public.college_editorial_completion_queue q ON q.college_slug = c.slug
    ORDER BY slug`;
  const raw = execFileSync("supabase", ["db", "query", "--linked", query], { encoding: "utf8", maxBuffer: 32 * 1024 * 1024 });
  return parseCliJson(raw).rows || [];
}

function extractRows(html, category, url) {
  const document = new JSDOM(html).window.document;
  const rows = [];
  for (const row of document.querySelectorAll("table tbody tr")) {
    const cells = [...row.querySelectorAll(":scope > td")].map((cell) => clean(cell.textContent));
    if (cells.length < 4) continue;
    if (!/^IR-[A-Z]-[A-Z0-9-]+$/i.test(cells[0])) continue;
    const rankCells = cells.map((cell) => cell.match(/^([1-9][0-9]{0,2})$/)?.[1]).filter(Boolean);
    const rank = rankCells[rankCells.length - 1];
    if (!rank) continue;
    const nameCell = cells[1];
    if (!nameCell) continue;
    const name = clean(nameCell.replace(/(?:More Details\s*)?Close[\s\S]*$/i, "").replace(/More Details[\s\S]*$/i, ""));
    if (name.length < 3) continue;
    rows.push({ category, name, city: clean(cells[2]), state: clean(cells[3]), rank: Number(rank), url });
  }
  return rows;
}

function locationCompatible(college, nirf) {
  const aliases = new Map([["bangalore", "bengaluru"], ["new delhi", "delhi"], ["bombay", "mumbai"]]);
  const left = aliases.get(normalize(college.city)) || normalize(college.city);
  const right = aliases.get(normalize(nirf.city)) || normalize(nirf.city);
  if (!left || !right) return false;
  return left === right || left.includes(right) || right.includes(left);
}

function matchScore(college, nirf) {
  const target = normalize(nirf.name);
  const full = normalize(college.name);
  if (full === target) return 100;
  if (!locationCompatible(college, nirf)) return 0;
  const suffixes = [normalize(college.city), normalize(college.state)].filter(Boolean);
  const candidates = new Set([full]);
  for (const suffix of suffixes) {
    for (const current of [...candidates]) {
      if (current.endsWith(` ${suffix}`)) candidates.add(current.slice(0, -(suffix.length + 1)).trim());
    }
  }
  if (candidates.has(target)) return 95;
  const a = new Set(significant(college.name));
  const b = new Set(significant(nirf.name));
  if (a.size < 2 || b.size < 2) return 0;
  const intersection = [...a].filter((token) => b.has(token)).length;
  const union = new Set([...a, ...b]).size;
  const score = intersection / union;
  return score >= 0.94 ? Math.round(score * 85) : 0;
}

const pages = [];
for (const [category, file] of categories) {
  const url = `https://www.nirfindia.org/Rankings/2025/${file}`;
  try {
    const html = await get(url);
    const rows = extractRows(html, category, url);
    pages.push({ category, url, rows });
  } catch (error) {
    pages.push({ category, url, rows: [], error: error.message });
  }
}

if (inspectOnly) {
  console.log(JSON.stringify(pages.map((page) => ({ category: page.category, rows: page.rows.length, first: page.rows.slice(0, 2), error: page.error })), null, 2));
  process.exit(0);
}

const colleges = loadColleges();
const nirfRows = [...new Map(
  pages.flatMap((page) => page.rows).map((row) => [`${row.category}|${normalize(row.name)}|${row.rank}`, row])
).values()];
const provisional = [];
const matched = [];
const ambiguous = [];

for (const college of colleges) {
  const possibilities = nirfRows
    .map((nirf) => ({ nirf, score: matchScore(college, nirf) }))
    .filter((item) => item.score > 0);
  const byInstitution = new Map();
  for (const possibility of possibilities) {
    const key = normalize(possibility.nirf.name);
    const existing = byInstitution.get(key);
    if (!existing || possibility.score > existing.score) byInstitution.set(key, possibility);
  }
  const institutions = [...byInstitution.values()].sort((a, b) => b.score - a.score);
  const bestScore = institutions[0]?.score || 0;
  const bestInstitutions = institutions.filter((item) => item.score === bestScore);
  if (!bestScore) continue;
  if (bestInstitutions.length > 1) {
    ambiguous.push({ college, matches: bestInstitutions });
    continue;
  }
  const institutionName = normalize(bestInstitutions[0].nirf.name);
  const rankings = [...new Map(possibilities
    .filter((item) => normalize(item.nirf.name) === institutionName)
    .map((item) => [item.nirf.category, item])
  ).values()].sort((a, b) => a.nirf.category.localeCompare(b.nirf.category));
  provisional.push({ college, institutionName: bestInstitutions[0].nirf.name, score: bestScore, rankings });
}

const byNirfInstitution = new Map();
for (const item of provisional) {
  const key = normalize(item.institutionName);
  byNirfInstitution.set(key, [...(byNirfInstitution.get(key) || []), item]);
}
for (const candidates of byNirfInstitution.values()) {
  const bestScore = Math.max(...candidates.map((item) => item.score));
  const best = candidates.filter((item) => item.score === bestScore);
  if (best.length === 1) matched.push(best[0]);
  else ambiguous.push(...best.map((item) => ({ college: item.college, matches: best.map((candidate) => ({ nirf: { name: candidate.institutionName } })) })));
}

const blocks = matched.map(({ college, rankings }) => {
  const rankText = rankings.map(({ nirf }) => `#${nirf.rank} ${nirf.category}`).join(", ");
  const tags = rankings.map(({ nirf }) => `NIRF 2025 ${nirf.category} #${nirf.rank}`);
  const urls = [...new Set(rankings.map(({ nirf }) => nirf.url))];
  const existingSources = JSON.stringify(college.data_source_urls || []);
  const sources = urls.filter((url) => !existingSources.includes(url)).map((url) => ({ source: url, type: "official_ranking" }));
  return `UPDATE public.colleges c
SET ranking = ${sql(`NIRF 2025: ${rankText}`)},
    rankings_content = ${sql(`${college.name} is listed in the Government of India NIRF 2025 tables at ${rankText}. Each position belongs to a separate category and should be compared only within that category and year.`)},
    tags = (SELECT array_agg(DISTINCT tag ORDER BY tag) FROM unnest(COALESCE(c.tags, ARRAY[]::text[]) || ${`ARRAY[${tags.map(sql).join(", ")}]::text[]`}) AS tag),
    data_source_urls = COALESCE(c.data_source_urls, '[]'::jsonb) || ${sql(JSON.stringify(sources))}::jsonb,
    editorial_last_evidence_check_at = now(),
    updated_at = now()
WHERE c.slug = ${sql(college.slug)};`;
});

const sqlFile = `-- Official NIRF 2025 tags matched conservatively to the audited college set.
-- Ambiguous and non-matching institutions are not modified.
BEGIN;
${blocks.join("\n\n")}
DELETE FROM public.college_editorial_completion_queue q
WHERE NOT EXISTS (SELECT 1 FROM public.colleges c WHERE c.slug = q.college_slug);
COMMIT;
`;

const matchRows = matched.map(({ college, institutionName, score, rankings }) =>
  `| ${college.name.replace(/\|/g, "/")} | ${institutionName.replace(/\|/g, "/")} | ${score} | ${rankings.map(({ nirf }) => `${nirf.category} #${nirf.rank}`).join(", ")} |`
);
const ambiguousRows = ambiguous.map(({ college, matches }) =>
  `| ${college.name.replace(/\|/g, "/")} | ${matches.map(({ nirf }) => nirf.name).join(" / ").replace(/\|/g, "/")} |`
);
const report = `# NIRF 2025 audited-college matching

- Audited colleges: ${colleges.length}
- Official NIRF rows parsed: ${nirfRows.length}
- Conservative college matches: ${matched.length}
- Ambiguous matches withheld: ${ambiguous.length}
- Unmatched colleges: ${colleges.length - matched.length - ambiguous.length}

## Applied candidates

| DekhoCampus college | NIRF institution | Match score | Official NIRF 2025 categories |
|---|---|---:|---|
${matchRows.join("\n")}

## Ambiguous matches withheld

| DekhoCampus college | Candidate institutions |
|---|---|
${ambiguousRows.join("\n") || "| None | None |"}
`;

await writeFile(outputSql, sqlFile);
await writeFile(outputReport, report);
console.log(JSON.stringify({ colleges: colleges.length, nirfRows: nirfRows.length, matched: matched.length, ambiguous: ambiguous.length, unmatched: colleges.length - matched.length - ambiguous.length, outputSql, outputReport }, null, 2));
