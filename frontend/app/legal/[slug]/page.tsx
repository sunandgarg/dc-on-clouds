import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import sanitizeHtml from "sanitize-html";
import { contentApi } from "@/lib/api";
import { entityMetadata } from "@/lib/seo";

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
  const { slug } = await params;
  try {
    return entityMetadata(await contentApi.get("legal-pages", slug), `/legal/${slug}`, "Legal information");
  } catch {
    return { title: "Legal information" };
  }
}

export default async function LegalPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  let page;
  try { page = await contentApi.get("legal-pages", slug); } catch { notFound(); }
  const content = typeof page.content === "string" ? page.content : "";
  const safe = sanitizeHtml(content, {
    allowedTags: sanitizeHtml.defaults.allowedTags.concat(["h1", "h2"]),
    allowedAttributes: { a: ["href", "target", "rel"] },
  });
  return <main className="container page narrow"><nav className="breadcrumbs"><Link href="/">Home</Link><span>/</span><span>Legal</span></nav><article className="prose"><h1>{String(page.title || "Legal information")}</h1><div dangerouslySetInnerHTML={{ __html: safe }} />{typeof page.updated_at === "string" && <p className="updated">Last updated: {new Date(page.updated_at).toLocaleDateString("en-IN")}</p>}</article></main>;
}
