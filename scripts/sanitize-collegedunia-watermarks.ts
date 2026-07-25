/**
 * Remove bottom-edge watermarks from legacy public images.
 *
 * The migration is deliberately reversible:
 * - original Storage objects are never overwritten or deleted;
 * - cropped images are written under a versioned `sanitized/` prefix;
 * - database fields are updated only after the new object is verified.
 *
 * Inventory:
 *   npm run sanitize:collegedunia -- --project-ref <ref>
 *
 * Apply a controlled batch:
 *   SUPABASE_URL=https://<ref>.supabase.co \
 *   SUPABASE_SERVICE_ROLE_KEY=<service-role-key> \
 *   npm run sanitize:collegedunia -- \
 *     --project-ref <ref> --apply --limit 500
 */
import { createHash } from "node:crypto";
import { mkdir, writeFile } from "node:fs/promises";
import { resolve } from "node:path";
import { createClient } from "@supabase/supabase-js";

type Json = Record<string, unknown>;
type FieldConfig = { name: string; array?: boolean };
type TableConfig = { table: string; fields: FieldConfig[] };
type Reference = {
  table: string;
  id: string;
  slug: string;
  field: string;
  array: boolean;
  original: string | string[];
};
type AssetResult = {
  source: string;
  destination?: string;
  source_width?: number;
  source_height?: number;
  output_width?: number;
  output_height?: number;
  cropped_pixels?: number;
  source_bytes?: number;
  output_bytes?: number;
  status: "sanitized" | "already_sanitized" | "failed";
  message?: string;
};

// Every string or string-array image field that can reference the legacy public
// bucket is included. `normalizeEligibleUrl` keeps unrelated buckets and external
// assets out of scope.
const TABLES: TableConfig[] = [
  { table: "about_founders", fields: [{ name: "photo" }] },
  { table: "about_page", fields: [{ name: "hero_image" }, { name: "story_image" }] },
  { table: "about_press", fields: [{ name: "logo" }] },
  { table: "about_team", fields: [{ name: "photo" }] },
  { table: "ads", fields: [{ name: "image_url" }] },
  { table: "approval_bodies", fields: [{ name: "logo_url" }] },
  { table: "articles", fields: [{ name: "featured_image" }] },
  { table: "authors", fields: [{ name: "photo" }] },
  { table: "career_profiles", fields: [{ name: "image" }] },
  { table: "college_programs", fields: [{ name: "image" }] },
  { table: "college_toppers", fields: [{ name: "photo" }] },
  { table: "college_universities", fields: [{ name: "logo" }] },
  {
    table: "colleges",
    fields: [
      { name: "image" },
      { name: "logo" },
      { name: "banner_ad_image" },
      { name: "square_ad_image" },
      { name: "approval_logos", array: true },
      { name: "carousel_images", array: true },
      { name: "gallery_images", array: true },
    ],
  },
  { table: "companies", fields: [{ name: "logo" }] },
  { table: "courses", fields: [{ name: "image" }] },
  { table: "exams", fields: [{ name: "image" }, { name: "logo" }] },
  { table: "faculty", fields: [{ name: "photo" }] },
  { table: "hero_banners", fields: [{ name: "image_url" }] },
  { table: "hero_categories", fields: [{ name: "image_url" }] },
  { table: "hero_settings", fields: [{ name: "image_urls", array: true }] },
  { table: "jobs", fields: [{ name: "company_logo" }] },
  { table: "landing_pages", fields: [{ name: "logo_url" }, { name: "og_image" }] },
  { table: "popular_places", fields: [{ name: "image_url" }] },
  { table: "profiles", fields: [{ name: "avatar_url" }, { name: "profile_image_url" }] },
  {
    table: "promoted_programs",
    fields: [
      { name: "certificate_image" },
      { name: "degree_image" },
      { name: "hero_image" },
      { name: "image_url" },
      { name: "institute_logo" },
    ],
  },
  { table: "scholarships", fields: [{ name: "image" }] },
  { table: "study_boards", fields: [{ name: "image_url" }] },
  { table: "study_resources", fields: [{ name: "content_images", array: true }] },
  { table: "study_subjects", fields: [{ name: "cover_image" }] },
  { table: "study_toppers", fields: [{ name: "photo" }] },
  { table: "trusted_partners", fields: [{ name: "logo_url" }] },
];

const args = process.argv.slice(2);
const has = (flag: string) => args.includes(flag);
const option = (name: string, fallback?: string) => {
  const index = args.indexOf(name);
  return index >= 0 ? args[index + 1] : fallback;
};

const apply = has("--apply");
const migrateAll = has("--all");
const projectRef = option("--project-ref");
const bucket = option("--bucket", "legacy-public-assets")!;
const reportPath = resolve(option("--report", "reports/collegedunia-watermark-sanitization.json")!);
const requestedLimit = Math.max(0, Number(option("--limit", "0")) || 0);
const concurrency = Math.max(1, Math.min(48, Number(option("--concurrency", "8")) || 8));
const updateConcurrency = Math.max(1, Math.min(30, Number(option("--update-concurrency", "10")) || 10));
const checkpointSize = Math.max(25, Math.min(2000, Number(option("--checkpoint-size", "500")) || 500));
const quality = Math.max(60, Math.min(95, Number(option("--quality", "84")) || 84));
const cropBottomPercent = Math.max(1, Math.min(30, Number(option("--crop-bottom-percent", "12")) || 12));
const maxInputBytes = Math.max(1_000_000, Number(option("--max-input-bytes", "26214400")) || 26_214_400);
const onlySource = option("--only-source");
const sanitizerVersion = `bottom-${cropBottomPercent}-v1`;

if (!projectRef) throw new Error("Pass --project-ref to make the destination explicit.");
if (!process.env.SUPABASE_URL) throw new Error("SUPABASE_URL is required.");
if (!process.env.SUPABASE_SERVICE_ROLE_KEY) throw new Error("SUPABASE_SERVICE_ROLE_KEY is required. Never use a publishable key.");
if (/^sb_publishable_/i.test(process.env.SUPABASE_SERVICE_ROLE_KEY)) throw new Error("A publishable key cannot run the sanitizer.");
if (apply && !migrateAll && requestedLimit < 1) throw new Error("Apply mode requires --limit <count>, or explicit --all.");

const destinationRef = new URL(process.env.SUPABASE_URL).hostname.split(".")[0];
if (destinationRef !== projectRef) {
  throw new Error(`Destination mismatch: URL points to ${destinationRef}, --project-ref is ${projectRef}.`);
}

const client = createClient(process.env.SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY, {
  auth: { persistSession: false, autoRefreshToken: false },
});

const report = {
  generated_at: new Date().toISOString(),
  mode: apply ? "apply" : "inventory",
  project_ref: projectRef,
  bucket,
  sanitizer_version: sanitizerVersion,
  settings: {
    crop_bottom_percent: cropBottomPercent,
    quality,
    concurrency,
    update_concurrency: updateConcurrency,
    checkpoint_size: checkpointSize,
    max_input_bytes: maxInputBytes,
    excluded_fields: [],
  },
  scanned_rows: {} as Record<string, number>,
  unique_assets: 0,
  references: 0,
  scheduled_assets: 0,
  sanitized: 0,
  already_sanitized: 0,
  failed: 0,
  rows_updated: 0,
  source_bytes: 0,
  output_bytes: 0,
  update_failures: [] as Array<{ table: string; slug: string; message: string }>,
  assets: [] as AssetResult[],
};

function normalizeEligibleUrl(value: unknown) {
  if (typeof value !== "string" || !/^https:\/\//i.test(value.trim())) return null;
  try {
    const url = new URL(value.trim());
    const expectedPath = `/storage/v1/object/public/${bucket}/`;
    if (url.hostname !== `${projectRef}.supabase.co`) return null;
    if (!url.pathname.includes(expectedPath)) return null;
    if (url.pathname.includes(`/${bucket}/sanitized/`)) return null;
    if (!/\.(avif|jpe?g|png|webp)$/i.test(url.pathname)) return null;
    return url.toString();
  } catch {
    return null;
  }
}

async function fetchRows(config: TableConfig) {
  const rows: Json[] = [];
  const selection = ["id", ...config.fields.map((field) => field.name)].join(",");
  for (let from = 0; ; from += 500) {
    const { data, error } = await client
      .from(config.table)
      .select(selection)
      .order("id", { ascending: true })
      .range(from, from + 499);
    if (error) throw new Error(`${config.table}: ${error.message}`);
    rows.push(...((data ?? []) as Json[]));
    if ((data?.length ?? 0) < 500) break;
  }
  report.scanned_rows[config.table] = rows.length;
  return rows;
}

async function mapLimit<T, R>(items: T[], limit: number, worker: (item: T, index: number) => Promise<R>) {
  const results = new Array<R>(items.length);
  let cursor = 0;
  await Promise.all(Array.from({ length: Math.min(limit, items.length) }, async () => {
    while (true) {
      const index = cursor++;
      if (index >= items.length) return;
      results[index] = await worker(items[index], index);
    }
  }));
  return results;
}

async function loadSharp() {
  try {
    const module = await import("sharp");
    return module.default;
  } catch {
    throw new Error("Image sanitization requires Sharp. Run `npm ci` and retry.");
  }
}

async function saveReport() {
  report.generated_at = new Date().toISOString();
  await mkdir(resolve(reportPath, ".."), { recursive: true });
  await writeFile(reportPath, JSON.stringify(report, null, 2));
}

function destinationFor(source: string) {
  const digest = createHash("sha256")
    .update(`${sanitizerVersion}\0${source}`)
    .digest("hex");
  const objectPath = `sanitized/${sanitizerVersion}/${digest.slice(0, 2)}/${digest}.webp`;
  return {
    objectPath,
    publicUrl: client.storage.from(bucket).getPublicUrl(objectPath).data.publicUrl,
  };
}

async function objectExists(objectPath: string) {
  const parts = objectPath.split("/");
  const filename = parts.pop()!;
  const folder = parts.join("/");
  const { data, error } = await client.storage.from(bucket).list(folder, { search: filename, limit: 1 });
  if (error) throw new Error(`Storage verification failed: ${error.message}`);
  return Boolean(data?.some((item) => item.name === filename));
}

async function sanitizeAsset(
  source: string,
  sharp: Awaited<ReturnType<typeof loadSharp>>,
  index: number,
  total: number,
): Promise<AssetResult> {
  const destination = destinationFor(source);
  try {
    const response = await fetch(source, { redirect: "follow", signal: AbortSignal.timeout(30_000) });
    if (!response.ok) throw new Error(`download returned HTTP ${response.status}`);
    const declaredBytes = Number(response.headers.get("content-length") ?? "0");
    if (declaredBytes > maxInputBytes) throw new Error(`source exceeds ${maxInputBytes} bytes`);
    const input = new Uint8Array(await response.arrayBuffer());
    if (!input.byteLength) throw new Error("source is empty");
    if (input.byteLength > maxInputBytes) throw new Error(`source exceeds ${maxInputBytes} bytes`);

    const pipeline = sharp(input, { failOn: "error", limitInputPixels: 100_000_000 }).rotate();
    const metadata = await pipeline.metadata();
    if (!metadata.width || !metadata.height) throw new Error("image dimensions are unavailable");
    if (metadata.height < 2) throw new Error(`image is too short to crop (${metadata.height}px)`);

    const croppedPixels = Math.max(1, Math.round(metadata.height * (cropBottomPercent / 100)));
    const outputHeight = metadata.height - croppedPixels;
    if (outputHeight < 1) throw new Error(`crop would leave no image content (${outputHeight}px)`);

    const output = new Uint8Array(await pipeline
      .clone()
      .extract({ left: 0, top: 0, width: metadata.width, height: outputHeight })
      .webp({ quality, effort: 4, smartSubsample: true })
      .toBuffer());

    const outputMetadata = await sharp(output).metadata();
    if (outputMetadata.width !== metadata.width || outputMetadata.height !== outputHeight) {
      throw new Error(
        `output validation failed: expected ${metadata.width}x${outputHeight}, got ${outputMetadata.width}x${outputMetadata.height}`,
      );
    }

    const { error } = await client.storage.from(bucket).upload(destination.objectPath, output, {
      contentType: "image/webp",
      cacheControl: "31536000",
      upsert: false,
    });
    if (error && !/already exists|duplicate/i.test(error.message)) {
      throw new Error(`upload failed: ${error.message}`);
    }
    if (!await objectExists(destination.objectPath)) throw new Error("uploaded object could not be verified");

    if ((index + 1) % 50 === 0 || index + 1 === total) {
      console.log(`[watermark] processed ${index + 1}/${total}`);
    }
    return {
      source,
      destination: destination.publicUrl,
      source_width: metadata.width,
      source_height: metadata.height,
      output_width: outputMetadata.width,
      output_height: outputMetadata.height,
      cropped_pixels: croppedPixels,
      source_bytes: input.byteLength,
      output_bytes: output.byteLength,
      status: "sanitized",
    };
  } catch (error) {
    return {
      source,
      status: "failed",
      message: error instanceof Error ? error.message : String(error),
    };
  }
}

async function main() {
  const referencesByUrl = new Map<string, Reference[]>();
  for (const config of TABLES) {
    const rows = await fetchRows(config);
    for (const row of rows) {
      for (const field of config.fields) {
        const original = field.array
          ? (Array.isArray(row[field.name]) ? row[field.name] as string[] : [])
          : String(row[field.name] ?? "");
        const values = field.array ? original as string[] : [original as string];
        for (const value of values) {
          const source = normalizeEligibleUrl(value);
          if (!source) continue;
          const references = referencesByUrl.get(source) ?? [];
          references.push({
            table: config.table,
            id: String(row.id),
            slug: String(row.slug ?? row.id),
            field: field.name,
            array: Boolean(field.array),
            original,
          });
          referencesByUrl.set(source, references);
        }
      }
    }
  }

  const sources = [...referencesByUrl.keys()].filter((source) => !onlySource || source === onlySource);
  if (onlySource && sources.length === 0) {
    throw new Error("--only-source did not match an eligible database reference.");
  }
  report.unique_assets = sources.length;
  report.references = sources.reduce(
    (sum, source) => sum + (referencesByUrl.get(source)?.length ?? 0),
    0,
  );
  console.log(`[watermark] inventory unique=${report.unique_assets} references=${report.references}`);

  if (apply && sources.length) {
    const scheduled = migrateAll ? sources : sources.slice(0, requestedLimit);
    report.scheduled_assets = scheduled.length;
    const sharp = await loadSharp();
    const replacements = new Map<string, string>();

    for (let offset = 0; offset < scheduled.length; offset += checkpointSize) {
      const chunk = scheduled.slice(offset, offset + checkpointSize);
      const results = await mapLimit(
        chunk,
        concurrency,
        (source, index) => sanitizeAsset(source, sharp, offset + index, scheduled.length),
      );
      report.assets.push(...results);

      for (const asset of results) {
        report.source_bytes += asset.source_bytes ?? 0;
        report.output_bytes += asset.output_bytes ?? 0;
        if ((asset.status === "sanitized" || asset.status === "already_sanitized") && asset.destination) {
          replacements.set(asset.source, asset.destination);
          report[asset.status] += 1;
        } else {
          report.failed += 1;
        }
      }

      const successfulSources = new Set(
        results
          .filter((asset) => asset.status !== "failed" && asset.destination)
          .map((asset) => asset.source),
      );
      const patches = new Map<string, { table: string; id: string; slug: string; values: Json }>();
      for (const source of successfulSources) {
        const destination = replacements.get(source);
        if (!destination) continue;
        for (const reference of referencesByUrl.get(source) ?? []) {
          const key = `${reference.table}:${reference.id}`;
          const patch = patches.get(key) ?? {
            table: reference.table,
            id: reference.id,
            slug: reference.slug,
            values: {},
          };
          if (reference.array) {
            const current = (patch.values[reference.field] ?? reference.original) as string[];
            patch.values[reference.field] = current.map((value) => replacements.get(value) ?? value);
          } else {
            patch.values[reference.field] = destination;
          }
          patches.set(key, patch);
        }
      }

      await mapLimit([...patches.values()], updateConcurrency, async (patch) => {
        const { error } = await client.from(patch.table).update(patch.values).eq("id", patch.id);
        if (error) {
          report.update_failures.push({ table: patch.table, slug: patch.slug, message: error.message });
        } else {
          report.rows_updated += 1;
        }
      });

      await saveReport();
      console.log(
        `[watermark] checkpoint ${Math.min(offset + chunk.length, scheduled.length)}/${scheduled.length}`
        + ` sanitized=${report.sanitized} reused=${report.already_sanitized}`
        + ` failed=${report.failed} rows_updated=${report.rows_updated}`,
      );
    }
  }

  await saveReport();
  console.log(`[watermark] report=${reportPath}`);
  console.log(JSON.stringify({
    mode: report.mode,
    scanned_rows: report.scanned_rows,
    unique_assets: report.unique_assets,
    references: report.references,
    scheduled_assets: report.scheduled_assets,
    sanitized: report.sanitized,
    already_sanitized: report.already_sanitized,
    failed: report.failed,
    rows_updated: report.rows_updated,
    update_failures: report.update_failures.length,
  }, null, 2));
}

await main().catch(async (error) => {
  const message = error instanceof Error ? error.message : String(error);
  try {
    await mkdir(resolve(reportPath, ".."), { recursive: true });
    await writeFile(reportPath, JSON.stringify({ ...report, fatal_error: message }, null, 2));
  } catch {
    // Preserve the original error.
  }
  console.error(`[watermark] failed: ${message}`);
  process.exitCode = 1;
});
