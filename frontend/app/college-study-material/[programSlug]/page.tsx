import type { Metadata } from "next";
import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { collegeStudyApi } from "@/lib/api";
import { absoluteUrl } from "@/lib/site";

export const dynamic = "force-dynamic";
export async function generateMetadata({ params }: { params: Promise<{ programSlug: string }> }): Promise<Metadata> { const { programSlug } = await params; return { title: `${programSlug.toUpperCase()} universities and study material`, alternates: { canonical: absoluteUrl(`/college-study-material/${programSlug}`) } }; }
export default async function CollegeProgramPage({ params }: { params: Promise<{ programSlug: string }> }) { const { programSlug } = await params; const data = await collegeStudyApi.program(programSlug); const name = String(data.program.name); return <main className="container page"><JsonLd data={{ "@context": "https://schema.org", "@type": "CollectionPage", name: `${name} universities`, url: absoluteUrl(`/college-study-material/${programSlug}`) }} /><nav className="breadcrumbs"><Link href="/college-study-material">College study material</Link><span>/</span><span>{name}</span></nav><header className="page-heading"><p className="eyebrow">Choose your university</p><h1>{name} study material</h1><p>University and semester-specific notes, syllabus and previous papers.</p></header><section className="info-section"><div className="subject-grid">{data.universities.map((university) => <article key={String(university.id)}><h2>{String(university.name)}</h2><p>{[university.short_name, university.city, university.state].filter(Boolean).join(" · ")}</p><Link className="text-link" href={`/college-study-material/${programSlug}/${university.slug}`}>View semesters →</Link></article>)}</div></section></main>; }
