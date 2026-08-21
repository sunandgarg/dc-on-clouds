import Link from "next/link";
import sanitizeHtml from "sanitize-html";
import { JsonLd } from "./JsonLd";
import { studyApi, type Entity } from "@/lib/api";
import { absoluteUrl } from "@/lib/site";

const text = (entity: Entity, key: string) => typeof entity[key] === "string" ? String(entity[key]) : "";

export async function StudySubjectContent({ classNumber, boardSlug, subjectSlug, chapterSlug }: { classNumber: number; boardSlug: string; subjectSlug: string; chapterSlug?: string }) {
  const data = await studyApi.subjectSnapshot(classNumber, boardSlug, subjectSlug); const subject = data.subject;
  const selectedChapter = chapterSlug ? data.chapters.find((chapter) => chapter.slug === chapterSlug) : undefined;
  const resources = selectedChapter ? data.resources.filter((resource) => resource.chapter_id === selectedChapter.id) : data.resources;
  const path = `/study-material/class-${classNumber}/${boardSlug}/${subjectSlug}${chapterSlug ? `/${chapterSlug}` : ""}`;
  const legacy = process.env.LEGACY_FRONTEND_URL?.replace(/\/$/, "");
  return <main className="container page"><JsonLd data={{ "@context": "https://schema.org", "@type": "LearningResource", name: `${String(subject.name)} Class ${classNumber}`, educationalLevel: `Class ${classNumber}`, url: absoluteUrl(path) }} /><nav className="breadcrumbs"><Link href="/study-material">Study material</Link><span>/</span><Link href={`/study-material/class-${classNumber}/${boardSlug}`}>Class {classNumber} {boardSlug.toUpperCase()}</Link><span>/</span><span>{String(subject.name)}</span></nav>
    <header className="study-hero"><span aria-hidden="true">{text(subject, "icon_emoji") || "📖"}</span><div><p className="eyebrow">Class {classNumber} · {boardSlug}</p><h1>{String(subject.name)}{selectedChapter ? `: ${String(selectedChapter.name)}` : ""}</h1><p>{text(selectedChapter || subject, "description") || "Chapter-wise notes and previous question papers."}</p></div></header>
    {!chapterSlug && <section className="info-section"><h2>Chapters</h2><div className="chapter-list">{data.chapters.map((chapter) => <Link href={`/study-material/class-${classNumber}/${boardSlug}/${subjectSlug}/${chapter.slug}`} key={String(chapter.id)}><span>{String(chapter.chapter_number || "")}</span><strong>{String(chapter.name)}</strong></Link>)}</div></section>}
    <section className="info-section"><h2>{selectedChapter ? "Chapter resources" : "Available resources"}</h2><div className="resource-grid">{resources.map((resource) => { const safe = sanitizeHtml(text(resource, "content_html"), { allowedTags: ["p", "strong", "em", "ul", "ol", "li", "h2", "h3"] }); return <article key={String(resource.id)}><p className="eyebrow">{text(resource, "resource_type")} {text(resource, "year")}</p><h3>{String(resource.title)}</h3><p>{text(resource, "description")}</p>{safe && <div className="prose" dangerouslySetInnerHTML={{ __html: safe }} />}{resource.download_available === true && (legacy ? <a className="button" href={`${legacy}${path}`}>Verify and download</a> : <span className="availability">Download requires the legacy OTP service</span>)}</article>; })}</div>{resources.length === 0 && <p>No published resources are available for this selection yet.</p>}</section>
  </main>;
}
