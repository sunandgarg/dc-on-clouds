import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { collegeStudyApi } from "@/lib/api";
import { absoluteUrl } from "@/lib/site";

const value = (item: Record<string, unknown>, key: string) => String(item[key] || "");

export async function CollegeUniversityContent({ programSlug, universitySlug, semester }: { programSlug: string; universitySlug: string; semester?: number }) {
  const data = await collegeStudyApi.university(programSlug, universitySlug, semester);
  const program = data.program;
  const university = data.university;
  const base = `/college-study-material/${programSlug}/${universitySlug}`;
  return <main className="container page">
    <JsonLd data={{ "@context": "https://schema.org", "@type": "CollectionPage", name: `${value(university, "name")} ${value(program, "name")} study material`, url: absoluteUrl(semester ? `${base}/semester-${semester}` : base) }} />
    <nav className="breadcrumbs"><Link href="/college-study-material">College study material</Link><span>/</span><Link href={`/college-study-material/${programSlug}`}>{value(program, "name")}</Link><span>/</span><span>{value(university, "short_name") || value(university, "name")}</span></nav>
    <header className="page-heading"><p className="eyebrow">University-wise resources</p><h1>{value(university, "short_name") || value(university, "name")} {value(program, "name")} study material</h1><p>{value(university, "description") || "Semester-wise notes, syllabus and previous question papers."}</p></header>
    {data.toppers.length > 0 && <section className="info-section"><h2>University toppers</h2><div className="subject-grid">{data.toppers.map((topper) => <article key={value(topper, "id")}><h3>#{value(topper, "rank")} {value(topper, "name")}</h3><p>{value(topper, "branch")} · {value(topper, "year")} · {value(topper, "percentage")}</p></article>)}</div></section>}
    <section className="info-section"><h2>All semesters</h2><div className="class-grid">{data.semesters.map((item) => { const number = Number(item.semester_num); return <Link key={value(item, "id")} href={`${base}/semester-${number}`} aria-current={semester === number ? "page" : undefined}><span>Semester</span><strong>{number}</strong></Link>; })}</div></section>
    {semester && <section className="info-section"><h2>Semester {semester} subjects</h2>{data.subjects.length ? <div className="subject-grid">{data.subjects.map((subject) => <article key={value(subject, "id")}><h3>{value(subject, "name")}</h3><p>{[value(subject, "code"), value(subject, "branch"), subject.credits ? `${subject.credits} credits` : ""].filter(Boolean).join(" · ")}</p><Link className="text-link" href={`${base}/semester-${semester}/${subject.slug}`}>View resources →</Link></article>)}</div> : <p>No subjects have been published for this semester yet.</p>}</section>}
    {(data.quickLinks.length > 0 || data.semesterLinks.length > 0) && <section className="info-section"><h2>Useful links</h2><div className="link-list">{[...data.quickLinks, ...data.semesterLinks].map((item) => <a key={value(item, "id")} href={value(item, "url")} rel="noreferrer">{value(item, "icon_emoji")} {value(item, "title")}</a>)}</div></section>}
  </main>;
}
