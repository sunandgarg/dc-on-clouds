import Link from "next/link";
import Image from "next/image";
import sanitizeHtml from "sanitize-html";
import { contentApi } from "@/lib/api";
import { entityJsonLd } from "@/lib/seo";
import { JsonLd } from "./JsonLd";

const value = (v: unknown) => typeof v === "string" ? v : "";

export async function EntityPage({ type, slug }: { type: string; slug: string }) {
  const entity = await contentApi.get(type, slug);
  const name = value(entity.name) || value(entity.title) || "Details";
  const pathType = type === "articles" ? "news" : type;
  const summary = value(entity.page_summary) || value(entity.short_description) || value(entity.summary) || value(entity.description);
  const content = value(entity.content) || value(entity.about_content) || value(entity.about_program) || value(entity.summary_content) || value(entity.description);
  const safe = sanitizeHtml(content, { allowedTags: sanitizeHtml.defaults.allowedTags.concat(["img", "h1", "h2"]), allowedAttributes: { a: ["href", "target", "rel"], img: ["src", "alt", "width", "height"] } });
  return <main className="container page detail"><JsonLd data={entityJsonLd(type, entity, `/${pathType}/${slug}`)} /><nav className="breadcrumbs"><Link href="/">Home</Link><span>/</span><Link href={`/${pathType}`}>{pathType}</Link><span>/</span><span>{name}</span></nav>
    <article><header className="detail-hero"><div><p className="eyebrow">{value(entity.category) || value(entity.program_type) || pathType}</p><h1>{name}</h1>{summary && <p className="lede">{summary.replace(/<[^>]*>/g, "").slice(0, 320)}</p>}<div className="facts">{[entity.city, entity.state, entity.duration, entity.level, entity.delivery_mode, entity.exam_date].filter(Boolean).map((fact) => <span key={String(fact)}>{String(fact)}</span>)}</div></div>{entity.image || entity.logo || entity.featured_image || entity.image_url || entity.hero_image ? <Image src={String(entity.image || entity.logo || entity.featured_image || entity.image_url || entity.hero_image)} alt={`${name} visual`} width={640} height={360} priority /> : null}</header>
      <div className="article-layout"><section className="prose" dangerouslySetInnerHTML={{ __html: safe }} /><aside><h2>Quick answer</h2><p>{summary ? summary.replace(/<[^>]*>/g, "").slice(0, 240) : `${name} information, eligibility and current details are maintained on this page.`}</p><a className="button" href="mailto:outreach@dekhocampus.com">Talk to a counsellor</a></aside></div>
    </article>
  </main>;
}
