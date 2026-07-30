import { mkdir, writeFile } from "node:fs/promises";
import path from "node:path";

type SourceProgram = {
  id?: string;
  name?: string;
  universityName?: string;
  duration?: number | string | null;
  qualification?: string | null;
  programType?: string | null;
  programHighlight?: string | null;
  uspTagline?: string | null;
  backgroundImageUrl?: string | null;
  universityLogo?: string | null;
  universityLogoAltText?: string | null;
  redirectUrl?: string | null;
  brochureLink?: string | null;
  syllabusLink?: string | null;
  syllabusFileUrl?: string | null;
  noOfEnrollment?: number | null;
  skills?: Array<{ name?: string } | string>;
  programPointers?: Array<{ label?: string | null }>;
  programOutcomes?: string[];
  specialisations?: Array<{ name?: string } | string>;
  status?: boolean;
};

type CategorySource = {
  slug: string;
  name: string;
  icon: string;
  url: string;
};

type CatalogRow = Record<string, unknown> & {
  slug: string;
  title: string;
  college_name: string;
  category_slug: string;
  category_slugs: string[];
};

const SOURCES: CategorySource[] = [
  { slug: "agentic-ai", name: "Agentic AI", icon: "🤖", url: "https://www.upgrad.com/gen-ai-and-agentic-ai-programs/" },
  { slug: "artificial-intelligence", name: "Artificial Intelligence", icon: "🧠", url: "https://www.upgrad.com/artificial-intelligence-course/" },
  { slug: "doctorate", name: "Doctorate", icon: "🎓", url: "https://www.upgrad.com/doctor-of-business-administration-dba-courses/" },
  { slug: "machine-learning", name: "Machine Learning", icon: "📊", url: "https://www.upgrad.com/machine-learning-courses/" },
  { slug: "data-science", name: "Data Science", icon: "📈", url: "https://www.upgrad.com/data-science-course/" },
  { slug: "mba", name: "Online MBA", icon: "🎓", url: "https://www.upgrad.com/mba-course/" },
  { slug: "marketing", name: "Marketing", icon: "📣", url: "https://www.upgrad.com/digital-marketing-courses/" },
  { slug: "management", name: "Management", icon: "🧩", url: "https://www.upgrad.com/management-program/" },
  { slug: "education", name: "Education", icon: "📚", url: "https://www.upgrad.com/education-courses/" },
  { slug: "project-management", name: "Project Management", icon: "💬", url: "https://www.upgrad.com/certification/project-management-certifications/" },
];

const APPLY = process.argv.includes("--apply");
const CONFIRMED = process.argv.includes("--confirm-replace-upgrade-yourself");
const ENRICH_EXISTING = process.argv.includes("--enrich-existing");
const BATCH_START = Math.max(0, Number(process.argv.find((arg) => arg.startsWith("--batch-start="))?.split("=")[1] || 0));
const BATCH_SIZE = Math.max(1, Math.min(25, Number(process.argv.find((arg) => arg.startsWith("--batch-size="))?.split("=")[1] || 5)));
const SUPABASE_URL = String(process.env.SUPABASE_URL || "").replace(/\/$/, "");
const SERVICE_KEY = String(process.env.SUPABASE_SERVICE_ROLE_KEY || "");
const BACKUP_DIR = path.resolve(process.env.CATALOG_BACKUP_DIR || "../catalog-backups");
const SOURCE_HOST_LABEL = new URL(SOURCES[0].url).hostname.split(".").filter(Boolean).at(-2)?.toLowerCase() || "";
const VERIFIED_PRICE_OVERRIDES: Record<string, number> = {
  // Base fee without optional immersion, verified on the current programme page.
  "652e9d59dc694d6062b1f66f": 1_400_000,
};

function slugify(value: string) {
  return value
    .normalize("NFKD")
    .toLowerCase()
    .replace(/&/g, " and ")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 110);
}

function cleanText(value: unknown) {
  return String(value || "")
    .replace(/[\u2013\u2014]/g, "-")
    .replace(/\bGobal\b/gi, "Global")
    .replace(/\s+/g, " ")
    .trim();
}

function cleanEditorialText(value: unknown) {
  const text = cleanText(value);
  return SOURCE_HOST_LABEL
    ? text.replace(new RegExp(`${SOURCE_HOST_LABEL}(?:\\.com)?`, "gi"), "the programme website")
    : text;
}

function sourceBrandPattern() {
  const escaped = SOURCE_HOST_LABEL.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  return new RegExp(escaped, "i");
}

function containsSourceBrand(value: unknown) {
  return SOURCE_HOST_LABEL ? sourceBrandPattern().test(cleanText(value)) : false;
}

function decodeNextChunks(html: string) {
  const chunks: string[] = [];
  const pattern = /self\.__next_f\.push\((\[.*?\])\)<\/script>/gs;
  for (const match of html.matchAll(pattern)) {
    try {
      const parsed = JSON.parse(match[1]);
      if (typeof parsed?.[1] === "string") chunks.push(parsed[1]);
    } catch {
      // A malformed/non-JSON script is unrelated to the server data payload.
    }
  }
  return chunks.join("");
}

function readJsonArrays(decoded: string, property: "serverFetchedPrograms" | "serverFetchedProgramsList") {
  const marker = `${property}":[`;
  const arrays: SourceProgram[][] = [];
  let markerIndex = -1;

  while ((markerIndex = decoded.indexOf(marker, markerIndex + 1)) >= 0) {
    const start = markerIndex + `${property}":`.length;
    let depth = 0;
    let inString = false;
    let escaped = false;
    let end = -1;

    for (let index = start; index < decoded.length; index += 1) {
      const char = decoded[index];
      if (inString) {
        if (escaped) escaped = false;
        else if (char === "\\") escaped = true;
        else if (char === '"') inString = false;
        continue;
      }
      if (char === '"') {
        inString = true;
        continue;
      }
      if (char === "[") depth += 1;
      if (char === "]" && --depth === 0) {
        end = index + 1;
        break;
      }
    }

    if (end > start) {
      try {
        const value = JSON.parse(decoded.slice(start, end));
        if (Array.isArray(value)) arrays.push(value);
      } catch {
        // Continue searching because a page can contain several RSC snapshots.
      }
    }
  }

  return arrays;
}

async function fetchPrograms(source: CategorySource) {
  const response = await fetch(source.url, {
    headers: {
      Accept: "text/html,application/xhtml+xml",
      "User-Agent": "DekhoCampus catalogue research/1.0",
    },
    redirect: "follow",
  });
  if (!response.ok) throw new Error(`${source.slug}: source page returned ${response.status}`);
  const decoded = decodeNextChunks(await response.text());
  const candidates = [
    ...readJsonArrays(decoded, "serverFetchedPrograms"),
    ...readJsonArrays(decoded, "serverFetchedProgramsList"),
  ].sort((left, right) => right.length - left.length);
  if (!candidates[0]?.length) throw new Error(`${source.slug}: no structured programme list found`);
  return candidates[0].filter((program) => program?.status !== false);
}

function durationLabel(value: SourceProgram["duration"], pointers: SourceProgram["programPointers"]) {
  const numeric = Number(value);
  if (Number.isFinite(numeric) && numeric > 0) return `${numeric} ${numeric === 1 ? "Month" : "Months"}`;
  const pointer = (pointers || []).map((item) => cleanText(item?.label)).find((label) => /\b(hours?|weeks?|months?|years?|pdus?)\b/i.test(label));
  return pointer || "Flexible";
}

function programTag(program: SourceProgram, category: string) {
  const institution = cleanText(program.universityName);
  if (/\bIIM\b/i.test(institution)) return "IIM";
  if (/\bIIT\b/i.test(institution)) return "IIT";
  if (category === "doctorate" || /\b(DBA|doctor|doctorate|Ed\.?D|Ph\.?D)\b/i.test(cleanText(program.name))) return "Dr.";
  return "Online";
}

function originalOutcomes(program: SourceProgram, categoryName: string) {
  const sourceOutcomes = (program.programOutcomes || [])
    .map(cleanText)
    .filter((value) => value && !containsSourceBrand(value))
    .slice(0, 4);
  const base = [
    `Build practical capability in ${categoryName.toLowerCase()}`,
    "Apply concepts through structured projects and case-based learning",
    "Create evidence of learning for interviews, promotions, or role transitions",
  ];
  return Array.from(new Set([...sourceOutcomes, ...base])).slice(0, 6);
}

type DetailFacts = {
  price: number;
  emi: number;
  batchStartDate: string;
  applicationSteps: Array<{ title: string; desc: string }>;
  curriculum: Array<{ term: string; title: string; modules: string[] }>;
};

function flattenSchema(value: unknown): Record<string, unknown>[] {
  if (Array.isArray(value)) return value.flatMap(flattenSchema);
  if (!value || typeof value !== "object") return [];
  const object = value as Record<string, unknown>;
  return [object, ...Object.values(object).flatMap(flattenSchema)];
}

function parseAmount(value: unknown) {
  const amount = Number(String(value ?? "").replace(/[^\d.]/g, ""));
  return Number.isFinite(amount) && amount > 0 ? Math.round(amount) : 0;
}

function curriculumFallback(program: SourceProgram, categoryName: string) {
  const skills = (program.skills || [])
    .map((item) => cleanText(typeof item === "string" ? item : item?.name))
    .filter(Boolean);
  const pointers = (program.programPointers || []).map((item) => cleanText(item?.label)).filter(Boolean);
  const outcomes = (program.programOutcomes || []).map(cleanText).filter((value) => value && !containsSourceBrand(value));
  const modules = Array.from(new Set([...skills, ...pointers, ...outcomes])).slice(0, 8);
  if (modules.length < 3) {
    modules.push(
      `${categoryName} foundations and terminology`,
      "Applied projects and case-based practice",
      "Responsible implementation and final assessment",
    );
  }
  return [{
    term: "Programme overview",
    title: `${categoryName} learning pathway`,
    modules: Array.from(new Set(modules)).slice(0, 8),
  }];
}

async function fetchDetailFacts(program: SourceProgram, categoryName: string): Promise<DetailFacts> {
  const fallback: DetailFacts = {
    price: VERIFIED_PRICE_OVERRIDES[String(program.id || "")] || 0,
    emi: 0,
    batchStartDate: "",
    applicationSteps: [],
    curriculum: curriculumFallback(program, categoryName),
  };
  const detailUrl = cleanText(program.redirectUrl);
  if (!/^https?:\/\//i.test(detailUrl)) return fallback;

  try {
    const response = await fetch(detailUrl, {
      headers: {
        Accept: "text/html,application/xhtml+xml",
        "User-Agent": "DekhoCampus factual catalogue research/1.0",
      },
      redirect: "follow",
    });
    if (!response.ok) return fallback;
    const html = await response.text();
    const schemas: Record<string, unknown>[] = [];
    for (const match of html.matchAll(/<script[^>]*type=["']application\/ld\+json["'][^>]*>([\s\S]*?)<\/script>/gi)) {
      try {
        schemas.push(...flattenSchema(JSON.parse(match[1])));
      } catch {
        // Ignore malformed structured-data blocks.
      }
    }

    const course = schemas.find((item) => item["@type"] === "Course");
    const credential = course?.educationalCredentialAwarded as Record<string, unknown> | undefined;
    const offer = credential?.offers as Record<string, unknown> | undefined;
    const directOffer = course?.offers as Record<string, unknown> | undefined;
    const schemaPrice = parseAmount(offer?.price) || parseAmount(directOffer?.price);
    const compactText = cleanText(html.replace(/<[^>]+>/g, " "));
    const listedPrices = [...compactText.matchAll(/(?:program(?:me)? fee|totally)\s*(?:inr|rs\.?|₹)\s*([\d,]+)/gi)]
      .map((match) => parseAmount(match[1]))
      .filter((amount) => amount > 0);
    const price = schemaPrice
      || (listedPrices.length ? Math.min(...listedPrices) : 0)
      || VERIFIED_PRICE_OVERRIDES[String(program.id || "")]
      || 0;
    const emiMatch = compactText.match(/(?:starting at|emi(?: starts)?(?: at)?)\s*(?:inr|rs\.?|₹)?\s*([\d,]+)\s*\/\s*(?:month|mo)/i);
    const emi = parseAmount(emiMatch?.[1]);

    const courseInstance = Array.isArray(course?.hasCourseInstance)
      ? course?.hasCourseInstance[0] as Record<string, unknown>
      : course?.hasCourseInstance as Record<string, unknown> | undefined;
    const schedule = courseInstance?.courseSchedule as Record<string, unknown> | undefined;
    const howTo = schemas.find((item) => item["@type"] === "HowTo");
    const steps = Array.isArray(howTo?.step) ? howTo.step as Array<Record<string, unknown>> : [];

    return {
      price,
      emi,
      batchStartDate: cleanText(schedule?.startDate),
      applicationSteps: steps
        .map((step) => ({ title: cleanEditorialText(step.name), desc: cleanEditorialText(step.text) }))
        .filter((step) => step.title)
        .slice(0, 6),
      curriculum: fallback.curriculum,
    };
  } catch {
    return fallback;
  }
}

function makeRow(program: SourceProgram, source: CategorySource, displayOrder: number): CatalogRow | null {
  const title = cleanText(program.name);
  const institution = cleanText(program.universityName);
  if (!title || !institution || containsSourceBrand(title) || containsSourceBrand(institution)) return null;

  const duration = durationLabel(program.duration, program.programPointers);
  const programType = cleanText(program.programType) || "Certificate";
  const qualification = cleanText(program.qualification);
  const highlights = (program.programPointers || [])
    .map((item) => cleanText(item?.label))
    .filter((value) => value && !containsSourceBrand(value))
    .slice(0, 6);
  const outcomes = originalOutcomes(program, source.name);
  const slug = slugify(`${title}-${institution}`);
  const image = cleanText(program.backgroundImageUrl);
  const logo = cleanText(program.universityLogo);
  const summary = `${title} from ${institution} is a ${duration.toLowerCase()} ${programType.toLowerCase()} pathway for learners who want structured, career-relevant study in ${source.name.toLowerCase()}.`;
  const about = [
    `${title} is offered by ${institution} in a flexible learning format. The programme is suited to learners who want to strengthen their academic foundation while continuing existing work or study commitments.`,
    `The learning path focuses on clear concepts, applied practice, and evidence of skill. Before applying, verify the latest intake, assessment pattern, fee, recognition, and eligibility directly with the institution because these details can change.`,
  ].join("\n\n");

  return {
    title,
    slug,
    college_name: institution,
    college_slug: slugify(institution),
    course_slug: slugify(title),
    category_slug: source.slug,
    category_slugs: [source.slug],
    tag: programTag(program, source.slug),
    badge: displayOrder <= 12 ? "Featured" : "Popular",
    badge_variant: "default",
    program_type: programType,
    duration,
    original_price: 0,
    discount_percent: 0,
    emi_starts_at: 0,
    display_order: displayOrder,
    is_active: true,
    delivery_mode: "Online",
    country: "India",
    image_url: image || logo,
    hero_image: image || logo,
    institute_logo: logo,
    summary,
    about_program: about,
    eligibility: qualification || "Eligibility varies by programme. Confirm the latest academic and work-experience requirements before applying.",
    highlights,
    learning_outcomes: outcomes,
    why_this_program: `Consider this programme if you want a structured ${source.name.toLowerCase()} learning path from ${institution}, with a format designed to fit around professional or academic commitments.`,
    curriculum: curriculumFallback(program, source.name),
    faculty: [],
    fee_breakdown: [],
    partner_logos: [],
    tools_taught: [],
    placement_stats: {},
    who_should_apply: [
      { title: "Working professionals", desc: "Professionals planning a role transition, promotion, or deeper domain capability." },
      { title: "Graduates", desc: qualification || "Graduates seeking a structured specialisation and applied learning." },
      { title: "Flexible learners", desc: "Learners who need an online format alongside work or academic commitments." },
    ],
    application_steps: [
      { title: "Review eligibility", desc: "Check the current academic and work-experience requirements." },
      { title: "Prepare documents", desc: "Keep academic, identity, and work-experience documents ready." },
      { title: "Submit application", desc: "Complete the application and any required screening." },
      { title: "Confirm enrolment", desc: "Review the fee, refund rules, recognition, and schedule before payment." },
    ],
    program_stats: {},
    top_companies: [],
    mentors: [],
    testimonials: [],
    faqs: [
      { q: `Who should consider ${title}?`, a: `It is best suited to learners seeking structured study in ${source.name.toLowerCase()} from ${institution}. Check the latest entry requirements before applying.` },
      { q: `How long is ${title}?`, a: `The listed duration is ${duration}. The actual completion timeline can depend on the intake, academic calendar, and learner progress.` },
      { q: "Is the programme fully online?", a: "It is listed as an online programme. Confirm whether any live attendance, examination, project, or campus component applies to your intake." },
      { q: "What should I verify before enrolling?", a: "Verify recognition, curriculum, total fee, taxes, refund rules, assessment pattern, placement claims, and the exact credential with the institution." },
    ],
    institute_legacy_title: `${institution} learning pathway`,
    institute_legacy_points: [
      { title: "Institution-led learning", description: "Curriculum and assessment are delivered through the listed institution-led pathway." },
      { title: "Flexible access", description: "The online format is designed for learners balancing professional or academic commitments." },
      { title: "Applied outcomes", description: "Projects and assessments focus on evidence of practical, career-relevant learning." },
    ],
    meta_title: `${title} - Duration, Eligibility and Programme Details`,
    meta_description: `Explore ${title} from ${institution}. Check duration, eligibility, learning outcomes, format, FAQs, and important points to verify before applying.`,
    brochure_url: cleanText(program.brochureLink || program.syllabusLink || program.syllabusFileUrl),
    apply_url: cleanText(program.redirectUrl),
    contact_phone: "",
    batch_start_date: "",
    schedule: "",
    certificate_image: "",
    degree_image: "",
    hero_video_url: "",
    youtube_url: "",
    rating: 0,
    learners_count: "",
    ranking_text: "",
  };
}

async function rest(pathname: string, init: RequestInit = {}) {
  if (!SUPABASE_URL || !SERVICE_KEY) throw new Error("SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY are required");
  const response = await fetch(`${SUPABASE_URL}/rest/v1/${pathname}`, {
    ...init,
    headers: {
      apikey: SERVICE_KEY,
      "Content-Type": "application/json",
      ...(init.headers || {}),
    },
  });
  const text = await response.text();
  if (!response.ok) throw new Error(`${init.method || "GET"} ${pathname} failed (${response.status}): ${text.slice(0, 500)}`);
  return text ? JSON.parse(text) : null;
}

async function hasDatabaseColumn(table: string, column: string) {
  if (!SUPABASE_URL || !SERVICE_KEY) return false;
  const response = await fetch(`${SUPABASE_URL}/rest/v1/${table}?select=${encodeURIComponent(column)}&limit=0`, {
    headers: { apikey: SERVICE_KEY },
  });
  return response.ok;
}

async function writeSnapshot(name: string, value: unknown) {
  await mkdir(BACKUP_DIR, { recursive: true });
  const file = path.join(BACKUP_DIR, name);
  await writeFile(file, `${JSON.stringify(value, null, 2)}\n`, "utf8");
  return file;
}

async function main() {
  if (APPLY && /^sb_publishable_|^eyJ/i.test(SERVICE_KEY)) {
    throw new Error("Apply mode requires the Supabase secret/service-role key; a publishable key is read-only under production RLS.");
  }
  const discovered = await Promise.all(SOURCES.map(async (source) => ({ source, programs: await fetchPrograms(source) })));
  const bySlug = new Map<string, CatalogRow>();
  const sourceProgramBySlug = new Map<string, { program: SourceProgram; source: CategorySource }>();
  const categoryCounts: Record<string, number> = {};
  let order = 10;

  for (const { source, programs } of discovered) {
    categoryCounts[source.slug] = 0;
    for (const program of programs) {
      const row = makeRow(program, source, order);
      if (!row) continue;
      const existing = bySlug.get(row.slug);
      if (existing) {
        existing.category_slugs = Array.from(new Set([...existing.category_slugs, source.slug]));
      } else {
        bySlug.set(row.slug, row);
        sourceProgramBySlug.set(row.slug, { program, source });
        order += 10;
      }
      categoryCounts[source.slug] += 1;
    }
  }

  const rows = Array.from(bySlug.values());
  const rowsToEnrich = ENRICH_EXISTING ? rows.slice(BATCH_START, BATCH_START + BATCH_SIZE) : rows;
  for (const row of rowsToEnrich) {
    const sourceRecord = sourceProgramBySlug.get(row.slug);
    if (!sourceRecord) continue;
    const facts = await fetchDetailFacts(sourceRecord.program, sourceRecord.source.name);
    row.original_price = facts.price;
    row.emi_starts_at = facts.emi;
    row.batch_start_date = facts.batchStartDate;
    row.fee_breakdown = facts.price > 0
      ? [{ label: "Current listed programme fee", amount: facts.price }]
      : [{ label: "Programme fee", amount: 0, note: "Confirm the latest fee before applying" }];
    if (facts.applicationSteps.length) row.application_steps = facts.applicationSteps;
    row.curriculum = facts.curriculum;
  }
  const timestamp = new Date().toISOString().replace(/[:.]/g, "-");
  const previewFile = await writeSnapshot(`upgrade-yourself-preview-${timestamp}.json`, {
    generated_at: new Date().toISOString(),
    category_counts: categoryCounts,
    unique_programs: rows.length,
    batch_start: ENRICH_EXISTING ? BATCH_START : null,
    batch_size: ENRICH_EXISTING ? rowsToEnrich.length : rows.length,
    programs: ENRICH_EXISTING ? rowsToEnrich : rows,
  });

  console.log(JSON.stringify({
    mode: APPLY ? "apply" : "dry-run",
    operation: ENRICH_EXISTING ? "enrich-existing" : "replace",
    category_counts: categoryCounts,
    unique_programs: rows.length,
    batch_start: ENRICH_EXISTING ? BATCH_START : null,
    batch_size: ENRICH_EXISTING ? rowsToEnrich.length : rows.length,
    preview_file: previewFile,
  }, null, 2));
  if (!APPLY) return;
  if (ENRICH_EXISTING) {
    const slugs = rowsToEnrich.map((row) => row.slug);
    const existingPrograms = await rest("promoted_programs?select=*");
    const slugSet = new Set(slugs);
    const existingBatch = existingPrograms.filter((program: { slug?: string }) => slugSet.has(String(program.slug || "")));
    const backupFile = await writeSnapshot(`upgrade-yourself-enrichment-backup-${BATCH_START}-${timestamp}.json`, {
      backed_up_at: new Date().toISOString(),
      batch_start: BATCH_START,
      promoted_programs: existingBatch,
    });
    const supportsMultiCategory = await hasDatabaseColumn("promoted_programs", "category_slugs");
    for (const row of rowsToEnrich) {
      const patch = supportsMultiCategory
        ? row
        : Object.fromEntries(Object.entries(row).filter(([key]) => key !== "category_slugs"));
      await rest(`promoted_programs?slug=eq.${encodeURIComponent(row.slug)}`, {
        method: "PATCH",
        headers: { Prefer: "return=minimal" },
        body: JSON.stringify(patch),
      });
    }
    console.log(JSON.stringify({
      applied: true,
      operation: "enrich-existing",
      batch_start: BATCH_START,
      updated: rowsToEnrich.length,
      backup_file: backupFile,
    }, null, 2));
    return;
  }
  if (!CONFIRMED) throw new Error("Replacement blocked. Re-run with --apply --confirm-replace-upgrade-yourself after reviewing the preview.");

  const [existingPrograms, existingCategories] = await Promise.all([
    rest("promoted_programs?select=*"),
    rest("program_categories?select=*"),
  ]);
  const supportsMultiCategory = await hasDatabaseColumn("promoted_programs", "category_slugs");
  const insertRows = supportsMultiCategory
    ? rows
    : rows.map(({ category_slugs: _categorySlugs, ...row }) => row);
  const backupFile = await writeSnapshot(`upgrade-yourself-backup-${timestamp}.json`, {
    backed_up_at: new Date().toISOString(),
    promoted_programs: existingPrograms,
    program_categories: existingCategories,
  });

  const existingCategorySlugs = new Set(existingCategories.map((category: { slug?: string }) => category.slug).filter(Boolean));
  const missingCategories = SOURCES
    .map((source, index) => ({
      slug: source.slug,
      name: source.name,
      icon_emoji: source.icon,
      display_order: (index + 1) * 10,
      is_active: true,
    }))
    .filter((category) => !existingCategorySlugs.has(category.slug));
  if (missingCategories.length) {
    await rest("program_categories?on_conflict=slug", {
      method: "POST",
      headers: { Prefer: "resolution=merge-duplicates,return=minimal" },
      body: JSON.stringify(missingCategories),
    });
  }

  await rest("promoted_programs?id=not.is.null", { method: "DELETE", headers: { Prefer: "return=minimal" } });
  try {
    for (let index = 0; index < insertRows.length; index += 100) {
      await rest("promoted_programs", {
        method: "POST",
        headers: { Prefer: "return=minimal" },
        body: JSON.stringify(insertRows.slice(index, index + 100)),
      });
    }
  } catch (error) {
    await rest("promoted_programs?id=not.is.null", { method: "DELETE", headers: { Prefer: "return=minimal" } });
    for (let index = 0; index < existingPrograms.length; index += 100) {
      await rest("promoted_programs", {
        method: "POST",
        headers: { Prefer: "return=minimal" },
        body: JSON.stringify(existingPrograms.slice(index, index + 100)),
      });
    }
    throw new Error(`Import failed and the previous rows were restored from memory. Backup: ${backupFile}. Cause: ${error instanceof Error ? error.message : String(error)}`);
  }

  console.log(JSON.stringify({ applied: true, inserted: rows.length, multi_category_enabled: supportsMultiCategory, backup_file: backupFile }, null, 2));
}

main().catch((error) => {
  console.error(error instanceof Error ? error.message : String(error));
  process.exitCode = 1;
});
