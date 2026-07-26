import { existsSync, readFileSync } from "fs";

type ArticleRow = { id: string; slug: string; title: string; featured_image: string };
type LegacyImage = { slug: string; legacy_url: string; live_url: string; image: string; title: string };

const legacyOrigin = process.env.LEGACY_NEWS_ORIGIN || "https://dekhocampus.com";
const liveOrigin = process.env.LIVE_NEWS_ORIGIN || "https://dekhocampus.in";
const sitemapUrls = [
  `${legacyOrigin}/sitemap.xml`,
  `${legacyOrigin}/news-sitemap.xml`,
  `${legacyOrigin}/post-sitemap.xml`,
  `${legacyOrigin}/article-sitemap.xml`,
];
const limit = Number(process.env.NEWS_IMAGE_LIMIT || 0);
const dryRun = process.env.DRY_RUN === "1";
const overwrite = process.env.OVERWRITE_IMAGES === "1";
const debug = process.env.DEBUG_MATCHES === "1";

function loadDotEnv() {
  if (!existsSync(".env")) return;
  for (const line of readFileSync(".env", "utf8").split(/\r?\n/)) {
    const match = line.match(/^\s*([A-Za-z_][A-Za-z0-9_]*)=(.*)\s*$/);
    if (!match || process.env[match[1]]) continue;
    process.env[match[1]] = match[2].replace(/^["']|["']$/g, "");
  }
}

function env(name: string) {
  return String(process.env[name] || "").trim();
}

function slugify(value: string) {
  return value
    .toLowerCase()
    .normalize("NFKD")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function articleSlugFromUrl(url: string) {
  try {
    const parsed = new URL(url);
    const parts = parsed.pathname.split("/").filter(Boolean);
    return slugify(parts[parts.length - 1] || "");
  } catch {
    return "";
  }
}

function liveUrlForLegacyUrl(url: string) {
  try {
    const parsed = new URL(url);
    return new URL(parsed.pathname.replace(/\/+$/, "/"), liveOrigin).toString();
  } catch {
    return "";
  }
}

function absoluteUrl(value: string, base: string) {
  try {
    return new URL(value.replace(/&amp;/g, "&"), base).toString();
  } catch {
    return "";
  }
}

async function fetchText(url: string) {
  const response = await fetch(url, {
    redirect: "follow",
    headers: {
      "User-Agent": "DekhoCampus article-image-backfill/1.0",
      Accept: "text/html,application/xml,text/xml;q=0.9,*/*;q=0.8",
    },
  });
  if (!response.ok) throw new Error(`${response.status} ${response.statusText}`);
  return response.text();
}

function urlsFromSitemap(xml: string) {
  return [...xml.matchAll(/<loc>\s*([^<]+)\s*<\/loc>/gi)]
    .map((match) => match[1].trim())
    .filter(Boolean);
}

function urlsFromHtml(html: string, base: string) {
  return [...html.matchAll(/href=["']([^"']+)["']/gi)]
    .map((match) => absoluteUrl(match[1], base))
    .filter((url) => /\/news\//i.test(url));
}

function isUsefulImage(url: string) {
  if (!/^https?:\/\//i.test(url)) return false;
  if (/\.(svg|ico)(\?|$)/i.test(url)) return false;
  if (/logo|favicon|avatar|placeholder|default|icon/i.test(url)) return false;
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

function extractTitle(html: string) {
  const meta = extractMeta(html, "og:title") || extractMeta(html, "twitter:title");
  if (meta) return meta.replace(/\s+/g, " ").trim();
  return (html.match(/<title[^>]*>([\s\S]*?)<\/title>/i)?.[1] || "").replace(/<[^>]+>/g, " ").replace(/\s+/g, " ").trim();
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

async function discoverLegacyArticleUrls() {
  const discovered = new Set<string>();
  const queue = [...sitemapUrls];
  for (const sitemap of queue) {
    try {
      const xml = await fetchText(sitemap);
      const urls = urlsFromSitemap(xml);
      for (const url of urls) {
        if (/sitemap/i.test(url) && !discovered.has(url) && queue.length < 100) queue.push(url);
        if (/\/news\//i.test(url)) discovered.add(url);
      }
    } catch {
      // Some WordPress/Next exports do not expose every sitemap. The listing fallback below covers that.
    }
  }

  for (let page = 1; page <= 220; page += 1) {
    const url = page === 1 ? `${legacyOrigin}/news` : `${legacyOrigin}/news/page/${page}`;
    try {
      const html = await fetchText(url);
      const before = discovered.size;
      urlsFromHtml(html, url).forEach((item) => discovered.add(item));
      if (page > 1 && discovered.size === before && !/next|page\/\d+|pagination/i.test(html)) break;
    } catch {
      if (page > 1) break;
    }
  }
  return [...discovered];
}

function shouldUpdate(row: ArticleRow) {
  if (overwrite) return true;
  const current = String(row.featured_image || "");
  return !current || /placeholder|default|logo|favicon/i.test(current);
}

function supabaseHeaders(key: string, extra: Record<string, string> = {}) {
  return {
    apikey: key,
    Authorization: `Bearer ${key}`,
    "Content-Type": "application/json",
    ...extra,
  };
}

async function supabaseRequest<T>(baseUrl: string, key: string, path: string, init: RequestInit = {}) {
  const response = await fetch(`${baseUrl.replace(/\/$/, "")}/rest/v1/${path}`, {
    ...init,
    headers: supabaseHeaders(key, (init.headers || {}) as Record<string, string>),
  });
  if (!response.ok) throw new Error(`${response.status} ${(await response.text()).slice(0, 300)}`);
  if (response.status === 204) return null as T;
  return response.json() as Promise<T>;
}

async function loadArticles(baseUrl: string, key: string) {
  const rows: ArticleRow[] = [];
  for (let from = 0; ; from += 1000) {
    const data = await supabaseRequest<ArticleRow[]>(
      baseUrl,
      key,
      `articles?select=id,slug,title,featured_image&offset=${from}&limit=1000`,
    );
    rows.push(...(data || []));
    if (!data || data.length < 1000) return rows;
  }
}

async function findArticleBySlug(baseUrl: string, key: string, slug: string) {
  const data = await supabaseRequest<ArticleRow[]>(
    baseUrl,
    key,
    `articles?select=id,slug,title,featured_image&slug=eq.${encodeURIComponent(slug)}&limit=1`,
  );
  return data?.[0] || null;
}

async function updateArticleImage(baseUrl: string, key: string, id: string, image: string) {
  const encodedId = encodeURIComponent(id);
  await supabaseRequest<null>(baseUrl, key, `articles?id=eq.${encodedId}`, {
    method: "PATCH",
    headers: { Prefer: "return=minimal" },
    body: JSON.stringify({ featured_image: image }),
  });
}

async function main() {
  loadDotEnv();
  const supabaseUrl = env("SUPABASE_URL") || env("VITE_SUPABASE_URL");
  const serviceKey = env("SUPABASE_SERVICE_ROLE_KEY");
  const publishableKey = env("SUPABASE_PUBLISHABLE_KEY") || env("SUPABASE_ANON_KEY") || env("VITE_SUPABASE_PUBLISHABLE_KEY");
  const supabaseKey = dryRun ? (serviceKey || publishableKey) : serviceKey;
  if (!supabaseUrl || !supabaseKey) {
    throw new Error(dryRun
      ? "Set SUPABASE_URL/VITE_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY or a publishable key for dry-run."
      : "Set SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY for write mode. Publishable keys are intentionally blocked for DB updates.");
  }
  if (!dryRun && /^sb_publishable_|^eyJ/i.test(supabaseKey)) {
    throw new Error("Write mode requires SUPABASE_SERVICE_ROLE_KEY, not a publishable/anon key.");
  }

  const rows = await loadArticles(supabaseUrl, supabaseKey);
  const bySlug = new Map(rows.map((row) => [row.slug, row]));
  const byTitleSlug = new Map(rows.map((row) => [slugify(row.title), row]));
  const legacyUrls = await discoverLegacyArticleUrls();
  const selectedUrls = limit > 0 ? legacyUrls.slice(0, limit) : legacyUrls;
  const found: LegacyImage[] = [];
  const report = {
    legacy_urls: legacyUrls.length,
    matched: 0,
    updated: 0,
    skipped_existing: 0,
    no_target: 0,
    no_image: 0,
    failed: [] as Array<{ slug: string; message: string }>,
    debug: debug ? { first_legacy_urls: selectedUrls.slice(0, 10), first_db_slugs: rows.slice(0, 10).map((row) => row.slug), no_target: [] as Array<{ slug: string; title: string; url: string }> } : undefined,
  };

  for (const url of selectedUrls) {
    const slug = articleSlugFromUrl(url);
    if (!slug) continue;
    try {
      const html = await fetchText(url);
      const image = extractArticleImage(html, url);
      if (!image) { report.no_image += 1; continue; }
      const title = extractTitle(html);
      const row = bySlug.get(slug) || byTitleSlug.get(slugify(title)) || await findArticleBySlug(supabaseUrl, supabaseKey, slug);
      if (!row) {
        report.no_target += 1;
        report.debug?.no_target.push({ slug, title, url });
        continue;
      }
      found.push({ slug: row.slug, legacy_url: url, live_url: liveUrlForLegacyUrl(url), image, title });
      report.matched += 1;
      if (!shouldUpdate(row)) { report.skipped_existing += 1; continue; }
      if (!dryRun) {
        await updateArticleImage(supabaseUrl, supabaseKey, row.id, image);
      }
      report.updated += 1;
    } catch (error) {
      report.failed.push({ slug, message: error instanceof Error ? error.message : String(error) });
    }
  }

  console.log(JSON.stringify({ ...report, dry_run: dryRun, overwrite, sample: found.slice(0, 10) }, null, 2));
}

main().catch((error) => {
  console.error(error instanceof Error ? error.message : error);
  process.exit(1);
});
