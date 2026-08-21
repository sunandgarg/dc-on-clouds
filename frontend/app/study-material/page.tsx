import type { Metadata } from "next";
import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { studyApi } from "@/lib/api";
import { absoluteUrl } from "@/lib/site";
import { studyClasses } from "@/lib/study";

export const dynamic = "force-dynamic";
export const metadata: Metadata = { title: "Free study material for Classes 8 to 12", description: "Browse board-specific notes, previous papers and learning resources for Classes 8 to 12.", alternates: { canonical: absoluteUrl("/study-material") } };

export default async function StudyMaterialPage() { const boards = await studyApi.boards(); return <main className="container page"><JsonLd data={{ "@context": "https://schema.org", "@type": "CollectionPage", name: "Study material", url: absoluteUrl("/study-material") }} /><header className="page-heading"><p className="eyebrow">Verified learning resources</p><h1>Boards and study material</h1><p>Choose a board and class for subjects, chapters, notes and previous question papers.</p></header><section className="info-section"><h2>Choose your board</h2><div className="subject-grid">{boards.map((board) => <article key={String(board.id)}><span aria-hidden="true">{String(board.icon_emoji || "📚")}</span><h3>{String(board.name)}</h3><p>{String(board.description || "Board-specific study resources")}</p><Link className="text-link" href={`/study-material/class-10/${board.slug}`}>Explore {String(board.name)} →</Link></article>)}</div></section><section className="info-section"><h2>Browse by class</h2><div className="class-grid">{studyClasses.map((classNumber) => <Link key={classNumber} href={`/study-material/class-${classNumber}`}><span>Class</span><strong>{classNumber}</strong></Link>)}</div></section><Link className="button" href="/resources">Browse every resource</Link></main>; }
