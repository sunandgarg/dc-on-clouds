import type { Metadata } from "next";
import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { tools } from "@/lib/tools";
import { absoluteUrl } from "@/lib/site";

export const metadata: Metadata = { title: "Free student calculators and tools", description: "Use free education, finance, health and writing tools for students.", alternates: { canonical: absoluteUrl("/tools") } };

export default function ToolsPage() {
  return <main className="container page"><JsonLd data={{ "@context": "https://schema.org", "@type": "ItemList", name: "Student tools", itemListElement: tools.map((tool, index) => ({ "@type": "ListItem", position: index + 1, name: tool.title, url: absoluteUrl(`/tools/${tool.slug}`) })) }} /><nav className="breadcrumbs"><Link href="/">Home</Link><span>/</span><span>Tools</span></nav><header className="page-heading"><p className="eyebrow">Free utilities</p><h1>Helpful tools for students</h1><p>Quick calculators and decision tools for education planning.</p></header><section className="tool-grid">{tools.map((tool) => <article key={tool.slug}><span className="info-icon" aria-hidden="true">{tool.native ? "✓" : "↗"}</span><h2><Link href={`/tools/${tool.slug}`}>{tool.title}</Link></h2><p>{tool.description}</p><Link className="text-link" href={`/tools/${tool.slug}`}>{tool.native ? "Use tool →" : "Open existing tool →"}</Link></article>)}</section></main>;
}
