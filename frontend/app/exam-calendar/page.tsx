import type { Metadata } from "next";
import Link from "next/link";
import { contentApi, type Entity } from "@/lib/api";
import { absoluteUrl } from "@/lib/site";

export const dynamic = "force-dynamic";

const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
const text = (entity: Entity, key: string) => typeof entity[key] === "string" ? String(entity[key]) : "";
const date = (value: unknown) => { if (typeof value !== "string" || !value) return null; const parsed = new Date(value); return Number.isNaN(parsed.getTime()) ? null : parsed; };

export function generateMetadata(): Metadata {
  const year = new Date().getFullYear();
  return { title: `Exam calendar ${year}`, description: `Application, examination and result dates for major entrance exams in ${year}.`, alternates: { canonical: absoluteUrl("/exam-calendar") } };
}

export default async function ExamCalendarPage({ searchParams }: { searchParams: Promise<{ q?: string; category?: string; month?: string }> }) {
  const params = await searchParams; const year = new Date().getFullYear();
  const exams = await contentApi.all("exams", params.q || "", { category: params.category });
  const selectedMonth = params.month === undefined || params.month === "" ? null : Number(params.month);
  const categories = [...new Set(exams.map((exam) => text(exam, "category")).filter(Boolean))].sort();
  const groups = monthNames.map((name, index) => ({ name, index, items: [] as Array<{ exam: Entity; date: Date; label: string }> }));
  for (const exam of exams) {
    const candidates: Array<[unknown, string]> = [[exam.exam_date, "Exam"], [exam.application_end_date, "Application closes"], [exam.application_start_date, "Applications open"], [exam.result_date, "Result"]];
    const found = candidates.map(([value, label]) => ({ date: date(value), label })).find((item) => item.date?.getFullYear() === year);
    if (found?.date) groups[found.date.getMonth()]?.items.push({ exam, date: found.date, label: found.label });
  }
  for (const group of groups) group.items.sort((left, right) => left.date.getTime() - right.date.getTime());
  const visible = selectedMonth !== null && selectedMonth >= 0 && selectedMonth < 12 ? groups.filter((group) => group.index === selectedMonth) : groups;
  const total = visible.reduce((count, group) => count + group.items.length, 0);
  return <main className="container page"><nav className="breadcrumbs"><Link href="/">Home</Link><span>/</span><span>Exam calendar</span></nav><header className="calendar-hero"><p className="eyebrow light">Live calendar · {year}</p><h1>Every important exam date in one place</h1><p>Track application windows, exam dates and results without the last-minute scramble.</p></header>
    <form className="calendar-filters"><label>Search<input name="q" defaultValue={params.q} placeholder="JEE, NEET, CAT…" /></label><label>Category<select name="category" defaultValue={params.category || ""}><option value="">All categories</option>{categories.map((category) => <option key={category}>{category}</option>)}</select></label><label>Month<select name="month" defaultValue={params.month || ""}><option value="">All months</option>{monthNames.map((month, index) => <option value={index} key={month}>{month}</option>)}</select></label><button>Filter</button></form>
    <p className="result-count">{total} dated exam event{total === 1 ? "" : "s"} found for {year}</p>
    <section className="calendar-grid">{visible.map((group) => group.items.length > 0 && <article key={group.name}><h2>{group.name}</h2><ol>{group.items.map(({ exam, date: eventDate, label }) => <li key={`${exam.slug}-${eventDate.toISOString()}`}><time dateTime={eventDate.toISOString()}><strong>{eventDate.getDate()}</strong><span>{group.name.slice(0, 3)}</span></time><div><h3><Link href={`/exams/${exam.slug}`}>{String(exam.name || "Exam")}</Link></h3><p>{label} · {text(exam, "category") || "Entrance exam"}</p></div></li>)}</ol></article>)}</section>
  </main>;
}
