import Link from "next/link";
import { JsonLd } from "./JsonLd";
import { studyApi, type Entity } from "@/lib/api";
import { absoluteUrl } from "@/lib/site";

const text = (entity: Entity, key: string) => typeof entity[key] === "string" ? String(entity[key]) : "";

export async function StudyClassContent({ classNumber, boardSlug }: { classNumber: number; boardSlug?: string }) {
  const boards = await studyApi.boards();
  const selected = boardSlug || text(boards[0] || {}, "slug") || "cbse";
  const data = await studyApi.classSnapshot(classNumber, selected);
  const boardName = text(data.boards.find((board) => board.slug === selected) || {}, "name") || selected.toUpperCase();
  return <main className="container page"><JsonLd data={{ "@context": "https://schema.org", "@type": "CollectionPage", name: `Class ${classNumber} ${boardName} study material`, url: absoluteUrl(`/study-material/class-${classNumber}/${selected}`) }} /><nav className="breadcrumbs"><Link href="/">Home</Link><span>/</span><Link href="/study-material">Study material</Link><span>/</span><span>Class {classNumber}</span></nav>
    <header className="page-heading"><p className="eyebrow">Class {classNumber}</p><h1>{boardName} subjects and study material</h1><p>Choose a subject for chapter-wise notes, previous papers and learning resources.</p></header>
    <nav className="pill-nav" aria-label="Boards">{data.boards.map((board) => <Link className={board.slug === selected ? "active" : ""} key={String(board.id)} href={`/study-material/class-${classNumber}/${board.slug}`}>{text(board, "icon_emoji")} {String(board.name)}</Link>)}</nav>
    <section className="subject-grid">{data.subjects.map((subject) => <article key={String(subject.id)}><span aria-hidden="true">{text(subject, "icon_emoji") || "📖"}</span><h2><Link href={`/study-material/class-${classNumber}/${selected}/${subject.slug}`}>{String(subject.name)}</Link></h2><p>{text(subject, "description") || `Class ${classNumber} ${String(subject.name)} resources.`}</p><Link className="text-link" href={`/study-material/class-${classNumber}/${selected}/${subject.slug}`}>View chapters →</Link></article>)}</section>
    {data.links.length > 0 && <section className="info-section"><h2>Board updates and quick links</h2><div className="link-grid">{data.links.map((item) => <a href={text(item, "url")} key={String(item.id)}><strong>{String(item.title)}</strong><span>{text(item, "category")}</span></a>)}</div></section>}
    {data.toppers.length > 0 && <section className="info-section"><h2>Recent toppers</h2><div className="topper-grid">{data.toppers.slice(0, 12).map((topper) => <article key={String(topper.id)}><strong>#{String(topper.rank)}</strong><h3>{String(topper.name)}</h3><p>{text(topper, "stream")} · {String(topper.percentage || topper.marks || "")}</p></article>)}</div></section>}
  </main>;
}
