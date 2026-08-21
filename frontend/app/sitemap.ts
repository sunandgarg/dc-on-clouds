import type { MetadataRoute } from "next";
import { contentApi } from "@/lib/api";
import { site } from "@/lib/site";
import { tools } from "@/lib/tools";

export const revalidate = 3600;

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const staticPaths = [
    "", "/colleges", "/courses", "/exams", "/news", "/scholarships",
    "/careers", "/jobs", "/about-us", "/tools", "/exam-calendar",
    "/study-material", "/resources", "/college-study-material",
  ];
  const entries: MetadataRoute.Sitemap = staticPaths.map((path) => ({
    url: `${site.url}${path}`,
    changeFrequency: path ? "daily" : "hourly",
    priority: path ? 0.8 : 1,
  }));

  const resources = [
    ["colleges", "colleges"], ["courses", "courses"], ["exams", "exams"],
    ["articles", "news"], ["careers", "careers"], ["jobs", "jobs"],
    ["scholarships", "scholarships"], ["authors", "author"],
    ["legal-pages", "legal"], ["premium-programs", "premium-programs"],
  ] as const;
  for (const [type, path] of resources) {
    try {
      const slugs = await contentApi.slugs(type);
      entries.push(...slugs.map((slug) => ({
        url: `${site.url}/${path}/${slug}`,
        changeFrequency: "weekly" as const,
        priority: 0.7,
      })));
    } catch {
      // Readiness exposes an unavailable content source; keep static sitemap valid.
    }
  }
  entries.push(...tools.map((tool) => ({
    url: `${site.url}/tools/${tool.slug}`,
    changeFrequency: "monthly" as const,
    priority: tool.native ? 0.6 : 0.4,
  })));
  return entries;
}
