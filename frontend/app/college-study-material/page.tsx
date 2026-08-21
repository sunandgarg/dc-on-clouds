import type { Metadata } from "next";
import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { collegeStudyApi } from "@/lib/api";
import { absoluteUrl } from "@/lib/site";

export const dynamic = "force-dynamic";
export const metadata: Metadata = { title: "College study material: notes, PYQs and syllabus", description: "Browse university-wise college notes, syllabus, previous papers and important questions by program and semester.", alternates: { canonical: absoluteUrl("/college-study-material") } };
export default async function CollegeStudyPage() { const programs = await collegeStudyApi.programs(); return <main className="container page"><JsonLd data={{ "@context": "https://schema.org", "@type": "CollectionPage", name: "College study material", url: absoluteUrl("/college-study-material") }} /><header className="page-heading"><p className="eyebrow">Free university-wise resources</p><h1>College study material</h1><p>Choose your program, university and semester to find notes, syllabus and previous question papers.</p></header><section className="info-section"><h2>Choose your program</h2><div className="subject-grid">{programs.map((program) => <article key={String(program.id)}><span aria-hidden="true">{String(program.icon_emoji || "🎓")}</span><h3>{String(program.name)}</h3><p>{String(program.short_description || `${program.total_semesters || 8} semesters`)}</p><Link className="text-link" href={`/college-study-material/${program.slug}`}>Browse universities →</Link></article>)}</div></section></main>; }
