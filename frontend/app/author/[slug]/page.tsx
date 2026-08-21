import type { Metadata } from "next";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";
import sanitizeHtml from "sanitize-html";
import { JsonLd } from "@/components/JsonLd";
import { contentApi, type Entity } from "@/lib/api";
import { entityMetadata } from "@/lib/seo";
import { absoluteUrl } from "@/lib/site";

const sources = [
  ["articles", "Articles", "/news"], ["colleges", "Colleges", "/colleges"],
  ["courses", "Courses", "/courses"], ["exams", "Exams", "/exams"],
  ["scholarships", "Scholarships", "/scholarships"], ["careers", "Careers", "/careers"],
] as const;
const text = (entity: Entity, key: string) => typeof entity[key] === "string" ? String(entity[key]) : "";

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
  const { slug } = await params;
  try { return entityMetadata(await contentApi.get("authors", slug), `/author/${slug}`, "Author"); }
  catch { return { title: "Author" }; }
}

export default async function AuthorPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  let author: Entity;
  try { author = await contentApi.get("authors", slug); } catch { notFound(); }
  const authorId = String(author.id || "");
  const groups = await Promise.all(sources.map(async ([type, label, path]) => {
    try { return { label, path, items: (await contentApi.list(type, 0, 12, "", { authorId })).items }; }
    catch { return { label, path, items: [] as Entity[] }; }
  }));
  const bio = sanitizeHtml(text(author, "bio"), { allowedTags: sanitizeHtml.defaults.allowedTags, allowedAttributes: { a: ["href", "target", "rel"] } });
  const sameAs = [text(author, "linkedin_url"), text(author, "twitter_url"), text(author, "website_url")].filter(Boolean);
  return <main className="container page"><JsonLd data={{ "@context": "https://schema.org", "@type": "Person", name: author.name, jobTitle: author.designation, image: author.photo, description: author.short_bio, url: absoluteUrl(`/author/${slug}`), sameAs }} />
    <section className="author-hero">{text(author, "photo") && <Image src={text(author, "photo")} alt={String(author.name)} width={180} height={180} priority />}<div><p className="eyebrow">DekhoCampus author</p><h1>{String(author.name || "Author")}</h1>{text(author, "designation") && <p className="lede">{text(author, "designation")}</p>}<p>{text(author, "short_bio")}</p>{Array.isArray(author.expertise) && <div className="facts">{author.expertise.map((item) => <span key={String(item)}>{String(item)}</span>)}</div>}</div></section>
    {bio && <section className="prose narrow"><h2>About {String(author.name || "the author")}</h2><div dangerouslySetInnerHTML={{ __html: bio }} /></section>}
    <section className="info-section"><h2>Contributions</h2>{groups.filter((group) => group.items.length).map((group) => <div className="contribution-group" key={group.label}><h3>{group.label}</h3><div className="link-grid">{group.items.map((item) => <Link key={String(item.id || item.slug)} href={`${group.path}/${item.slug}`}><strong>{String(item.title || item.name)}</strong><span>{text(item, "description").replace(/<[^>]*>/g, "").slice(0, 120)}</span></Link>)}</div></div>)}</section>
  </main>;
}
