import type { Metadata } from "next";
import { absoluteUrl, site } from "./site";
import type { Entity } from "./api";

const text = (value: unknown) => typeof value === "string" ? value.trim() : "";

export function entityMetadata(entity: Entity, path: string, fallback: string): Metadata {
  const title = text(entity.meta_title) || text(entity.name) || text(entity.title) || fallback;
  const description = text(entity.meta_description) || text(entity.short_description) || text(entity.description) || site.description;
  const image = text(entity.image) || text(entity.logo) || text(entity.featured_image) || text(entity.image_url) || text(entity.hero_image) || undefined;
  return {
    title,
    description: description.slice(0, 200),
    alternates: { canonical: absoluteUrl(path) },
    openGraph: { title, description, url: absoluteUrl(path), siteName: site.name, type: "website", images: image ? [{ url: image }] : undefined },
    twitter: { card: "summary_large_image", title, description, images: image ? [image] : undefined }
  };
}

export function entityJsonLd(type: string, entity: Entity, path: string) {
  const schemaType = type === "colleges" ? "CollegeOrUniversity" : type === "articles" ? "Article" : type === "premium-programs" ? "Course" : "WebPage";
  return {
    "@context": "https://schema.org",
    "@type": schemaType,
    name: text(entity.name) || text(entity.title),
    headline: text(entity.title) || undefined,
    description: text(entity.meta_description) || text(entity.description) || undefined,
    url: absoluteUrl(path),
    image: text(entity.image) || text(entity.featured_image) || text(entity.image_url) || text(entity.hero_image) || undefined,
    dateModified: text(entity.updated_at) || undefined,
    isPartOf: { "@type": "WebSite", name: site.name, url: site.url }
  };
}
