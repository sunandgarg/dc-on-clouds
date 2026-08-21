import type { Metadata } from "next";
import Link from "next/link";
import { notFound, redirect } from "next/navigation";
import { StudentTool } from "@/components/StudentTool";
import { absoluteUrl } from "@/lib/site";
import { nativeToolSlugs, tools, type ToolSlug } from "@/lib/tools";

export function generateStaticParams() { return tools.filter((tool) => tool.native).map((tool) => ({ slug: tool.slug })); }
export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> { const { slug } = await params; const tool = tools.find((item) => item.slug === slug); return tool ? { title: tool.title, description: tool.description, alternates: { canonical: absoluteUrl(`/tools/${slug}`) } } : { title: "Tool not found" }; }

export default async function ToolPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params; const tool = tools.find((item) => item.slug === slug);
  if (!tool) notFound();
  if (!nativeToolSlugs.has(slug as ToolSlug)) {
    const legacy = process.env.LEGACY_FRONTEND_URL?.replace(/\/$/, "");
    if (legacy) redirect(`${legacy}/tools/${slug}`);
    return <main className="container page narrow"><p className="eyebrow">Compatibility route</p><h1>{tool.title}</h1><p>This data-dependent tool remains on the legacy application until its Spring service and production fixtures are verified.</p><Link className="button" href="/tools">View available tools</Link></main>;
  }
  return <main className="container page narrow"><nav className="breadcrumbs"><Link href="/">Home</Link><span>/</span><Link href="/tools">Tools</Link><span>/</span><span>{tool.title}</span></nav><header className="page-heading"><p className="eyebrow">Student calculator</p><h1>{tool.title}</h1><p>{tool.description}</p></header><section className="tool-panel"><StudentTool slug={slug as ToolSlug} /></section></main>;
}
