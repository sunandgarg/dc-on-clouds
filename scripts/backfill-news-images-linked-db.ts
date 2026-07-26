import { spawnSync } from "node:child_process";

type ArticleRow = { id: string; slug: string; title: string; featured_image: string | null };
type ImageMatch = { id: string; slug: string; image: string };

const legacyOrigin = process.env.LEGACY_NEWS_ORIGIN || "https://dekhocampus.com";
const limit = Number(process.env.NEWS_IMAGE_LIMIT || 0);
const apply = process.env.APPLY === "1";
const overwrite = process.env.OVERWRITE_IMAGES === "1";
const concurrency = Math.max(1, Math.min(16, Number(process.env.NEWS_IMAGE_CONCURRENCY || 8)));

function sqlString(value: string) {
  return `'${String(value).replace(/'/g, "''")}'`;
}

function runDbQuery<T = unknown>(sql: string) {
  const result = spawnSync("supabase", ["db", "query", "--linked", sql], {
    cwd: process.cwd(),
    encoding: "utf8",
    maxBuffer: 1024 * 1024 * 50,
  });
  if (result.status !== 0) {
    throw new Error((result.stderr || result.stdout || "Supabase query failed").slice(0, 4000));
  }
  const parsed = JSON.parse(result.stdout.trim());
  return (parsed.rows || []) as T[];
}

function absoluteUrl(value: string, base: string) {
  try {
    return new URL(value.replace(/&amp;/g, "&"), base).toString();
  } catch {
    return "";
  }
}

async function fetchText(url: string) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), 12_000);
  try {
    const response = await fetch(url, {
      signal: controller.signal,
      redirect: "follow",
      headers: {
        "User-Agent": "DekhoCampus linked-news-image-backfill/1.0",
        Accept: "text/html,application/xhtml+xml,*/*;q=0.8",
      },
    });
    if (!response.ok) throw new Error(`${response.status} ${response.statusText}`);
    return response.text();
  } finally {
    clearTimeout(timer);
  }
}

function isUsefulImage(url: string) {
  if (!/^https?:\/\//i.test(url)) return false;
  if (/\.(svg|ico)(\?|$)/i.test(url)) return false;
  if (/logo|favicon|avatar|placeholder|default|icon|wikimedia|wikipedia|flag_/i.test(url)) return false;
  return /\.(jpe?g|png|webp|avif)(\?|$)/i.test(url) || /\/uploads?\//i.test(url);
}

function extractMeta(html: string, property: string) {
  const quoted = property.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  const patterns = [
    new RegExp(`<meta[^>]+property=["']${quoted}["'][^>]+content=["']([^"']+)["']`, "i"),
    new RegExp(`<meta[^>]+content=["']([^"']+)["'][^>]+property=["']${quoted}["']`, "i"),
    new RegExp(`<meta[^>]+name=["']${quoted}["'][^>]+content=["']([^"']+)["']`, "i"),
    new RegExp(`<meta[^>]+content=["']([^"']+)["'][^>]+name=["']${quoted}["']`, "i"),
  ];
  for (const pattern of patterns) {
    const found = html.match(pattern)?.[1];
    if (found) return found;
  }
  return "";
}

function extractArticleImage(html: string, pageUrl: string) {
  const metaCandidates = [
    extractMeta(html, "og:image"),
    extractMeta(html, "og:image:secure_url"),
    extractMeta(html, "twitter:image"),
  ].map((url) => absoluteUrl(url, pageUrl)).filter(isUsefulImage);
  if (metaCandidates[0]) return metaCandidates[0];

  const imageCandidates = [...html.matchAll(/<img[^>]+(?:src|data-src|data-lazy-src)=["']([^"']+)["'][^>]*>/gi)]
    .map((match) => absoluteUrl(match[1], pageUrl))
    .filter(isUsefulImage);
  return imageCandidates[0] || "";
}

function slugify(value: string) {
  return value
    .toLowerCase()
    .normalize("NFKD")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function slugFromUrl(url: string) {
  try {
    const parts = new URL(url).pathname.split("/").filter(Boolean);
    return slugify(parts[parts.length - 1] || "");
  } catch {
    return "";
  }
}

function extractTitle(html: string) {
  const meta = extractMeta(html, "og:title") || extractMeta(html, "twitter:title");
  if (meta) return meta.replace(/\s+/g, " ").trim();
  return (html.match(/<title[^>]*>([\s\S]*?)<\/title>/i)?.[1] || "")
    .replace(/<[^>]+>/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function pageMatchesArticle(html: string, row: ArticleRow, requestedUrl: string) {
  const canonical = extractMeta(html, "og:url") ||
    html.match(/<link[^>]+rel=["']canonical["'][^>]+href=["']([^"']+)["']/i)?.[1] ||
    html.match(/<link[^>]+href=["']([^"']+)["'][^>]+rel=["']canonical["']/i)?.[1] ||
    "";
  const canonicalSlug = canonical ? slugFromUrl(absoluteUrl(canonical, requestedUrl)) : "";
  if (canonicalSlug && canonicalSlug === row.slug) return true;
  const titleSlug = slugify(extractTitle(html));
  const rowTitleSlug = slugify(row.title || "");
  return !!rowTitleSlug && (titleSlug === rowTitleSlug || titleSlug.includes(row.slug) || rowTitleSlug.includes(titleSlug));
}

async function mapLimit<T, R>(items: T[], worker: (item: T, index: number) => Promise<R | null>) {
  const results: R[] = [];
  let index = 0;
  async function run() {
    for (;;) {
      const current = index;
      index += 1;
      if (current >= items.length) return;
      const result = await worker(items[current], current);
      if (result) results.push(result);
    }
  }
  await Promise.all(Array.from({ length: concurrency }, run));
  return results;
}

function articleUrl(slug: string) {
  return `${legacyOrigin.replace(/\/$/, "")}/news/${encodeURIComponent(slug)}/`;
}

function shouldUpdate(row: ArticleRow) {
  if (overwrite) return true;
  const current = String(row.featured_image || "");
  return !current || /placeholder|default|logo|favicon/i.test(current);
}

async function main() {
  const where = overwrite
    ? "where coalesce(slug,'') <> ''"
    : "where coalesce(slug,'') <> '' and (featured_image is null or featured_image = '' or featured_image ~* 'placeholder|default|logo|favicon')";
  const rows = runDbQuery<ArticleRow>(
    `select id::text, slug, title, featured_image from public.articles ${where} order by created_at desc ${limit > 0 ? `limit ${limit}` : ""};`,
  );

  let scanned = 0;
  let noImage = 0;
  let failed = 0;
  let matchedSoFar = 0;
  const matches = await mapLimit(rows, async (row, i) => {
    if (!shouldUpdate(row)) return null;
      const url = articleUrl(row.slug);
      try {
        const html = await fetchText(url);
        if (!pageMatchesArticle(html, row, url)) {
          noImage += 1;
          return null;
        }
        const image = extractArticleImage(html, url);
      scanned += 1;
      if (!image) { noImage += 1; return null; }
      matchedSoFar += 1;
      if ((i + 1) % 100 === 0) console.log(`[news-images] scanned ${i + 1}/${rows.length}, matched ${matchedSoFar}`);
      return { id: row.id, slug: row.slug, image };
    } catch {
      failed += 1;
      return null;
    }
  });

  let updated = 0;
  if (apply && matches.length) {
    for (let i = 0; i < matches.length; i += 200) {
      const chunk = matches.slice(i, i + 200);
      const values = chunk.map((match) => `(${sqlString(match.id)}::uuid, ${sqlString(match.image)})`).join(",");
      runDbQuery(`update public.articles as a set featured_image = v.image, updated_at = now() from (values ${values}) as v(id, image) where a.id = v.id;`);
      updated += chunk.length;
    }
  }

  console.log(JSON.stringify({
    candidate_rows: rows.length,
    scanned,
    matched: matches.length,
    updated,
    no_image: noImage,
    failed,
    dry_run: !apply,
    overwrite,
    sample: matches.slice(0, 10),
  }, null, 2));
}

main().catch((error) => {
  console.error(error instanceof Error ? error.message : error);
  process.exit(1);
});
