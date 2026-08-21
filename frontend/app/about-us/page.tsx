import type { Metadata } from "next";
import Image from "next/image";
import { JsonLd } from "@/components/JsonLd";
import { contentApi, type Entity } from "@/lib/api";
import { absoluteUrl, site } from "@/lib/site";

export const dynamic = "force-dynamic";

const text = (entity: Entity, key: string) =>
  typeof entity[key] === "string" ? String(entity[key]) : "";

export async function generateMetadata(): Promise<Metadata> {
  try {
    const { page } = await contentApi.about();
    return {
      title: text(page, "meta_title") || "About Us | DekhoCampus",
      description:
        text(page, "meta_description") ||
        "Learn about DekhoCampus, our mission, values, team and journey.",
      alternates: { canonical: absoluteUrl("/about-us") },
    };
  } catch {
    return {
      title: "About Us | DekhoCampus",
      alternates: { canonical: absoluteUrl("/about-us") },
    };
  }
}

export default async function AboutPage() {
  const data = await contentApi.about();
  const page = data.page;
  const heroTitle = text(page, "hero_title") || "We help students choose better";
  const heroSubtitle = text(page, "hero_subtitle");

  return (
    <main>
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "AboutPage",
          name: "About DekhoCampus",
          url: absoluteUrl("/about-us"),
          mainEntity: {
            "@type": "Organization",
            name: site.name,
            url: site.url,
          },
        }}
      />
      <section className="info-hero">
        <div className="container detail-hero">
          <div>
            <p className="eyebrow">{text(page, "hero_eyebrow") || "About DekhoCampus"}</p>
            <h1>{heroTitle}</h1>
            {heroSubtitle && <p className="lede">{heroSubtitle}</p>}
          </div>
          {text(page, "hero_image") && (
            <Image
              src={text(page, "hero_image")}
              alt={`${site.name} team`}
              width={640}
              height={400}
              priority
            />
          )}
        </div>
      </section>

      {data.stats.length > 0 && (
        <section className="container stat-grid" aria-label="DekhoCampus in numbers">
          {data.stats.map((stat) => (
            <article key={String(stat.id)}>
              <span aria-hidden="true">{text(stat, "icon_emoji")}</span>
              <strong>{text(stat, "value")}</strong>
              <h2>{text(stat, "label")}</h2>
              {text(stat, "description") && <p>{text(stat, "description")}</p>}
            </article>
          ))}
        </section>
      )}

      <section className="container info-grid">
        {text(page, "mission") && (
          <article><h2>Our mission</h2><p>{text(page, "mission")}</p></article>
        )}
        {text(page, "vision") && (
          <article><h2>Our vision</h2><p>{text(page, "vision")}</p></article>
        )}
      </section>

      {text(page, "story") && (
        <section className="container story-section">
          <div><p className="eyebrow">Our journey</p><h2>Our story</h2><p>{text(page, "story")}</p></div>
          {text(page, "story_image") && (
            <Image src={text(page, "story_image")} alt="The DekhoCampus story" width={640} height={420} />
          )}
        </section>
      )}

      {data.values.length > 0 && (
        <section className="container info-section">
          <h2>Our values</h2>
          <div className="info-grid three">
            {data.values.map((item) => (
              <article key={String(item.id)}>
                <span className="info-icon" aria-hidden="true">{text(item, "icon_emoji")}</span>
                <h3>{text(item, "title")}</h3><p>{text(item, "description")}</p>
              </article>
            ))}
          </div>
        </section>
      )}

      {(data.founders.length > 0 || data.team.length > 0) && (
        <section className="container info-section">
          <h2>Meet our team</h2>
          <div className="people-grid">
            {[...data.founders, ...data.team].map((person) => (
              <article key={String(person.id)}>
                {text(person, "photo") && <Image src={text(person, "photo")} alt={text(person, "name")} width={160} height={160} />}
                <h3>{text(person, "name")}</h3>
                <p>{text(person, "title") || text(person, "role")}</p>
                {text(person, "bio") && <p>{text(person, "bio")}</p>}
              </article>
            ))}
          </div>
        </section>
      )}

      {data.milestones.length > 0 && (
        <section className="container info-section">
          <h2>Milestones</h2>
          <ol className="timeline">
            {data.milestones.map((item) => (
              <li key={String(item.id)}><strong>{text(item, "year")}</strong><h3>{text(item, "title")}</h3><p>{text(item, "description")}</p></li>
            ))}
          </ol>
        </section>
      )}
    </main>
  );
}
