import Link from "next/link";
import Image from "next/image";
import { contentApi } from "@/lib/api";

export async function ListingPage({ type, title, description, searchParams, tag }: { type: string; title: string; description: string; searchParams?: Promise<{ page?: string; q?: string }>; tag?: string }) {
  const params = await searchParams;
  const page = Math.max(0, Number(params?.page || 1) - 1);
  const result = await contentApi.list(type, page, 24, params?.q || "", { tag });
  return <main className="container page"><nav className="breadcrumbs"><Link href="/">Home</Link><span>/</span><span>{title}</span></nav>
    <header className="page-heading"><p className="eyebrow">Explore and compare</p><h1>{title}</h1><p>{description}</p></header>
    <form className="search" role="search"><label htmlFor="q">Search {title.toLowerCase()}</label><div><input id="q" name="q" defaultValue={params?.q} placeholder={`Search ${title.toLowerCase()}`} /><button>Search</button></div></form>
    <section aria-label={title} className="card-grid">{result.items.map((item) => {
      const slug = String(item.slug || ""); const name = String(item.name || item.title || "Untitled");
      const image = item.image || item.logo || item.featured_image || item.image_url || item.hero_image;
      return <article className="card" key={String(item.id || slug)}><div className="card-media">{image ? <Image src={String(image)} alt={`${name} image`} fill sizes="(max-width: 560px) 100vw, (max-width: 820px) 50vw, 33vw" /> : <span>{name.slice(0, 2).toUpperCase()}</span>}</div><div className="card-body"><p className="eyebrow">{String(item.category || item.category_slug || item.program_type || item.type || type.slice(0, -1))}</p><h2><Link href={`/${type === "articles" ? "news" : type}/${slug}`}>{name}</Link></h2><p>{String(item.short_description || item.summary || item.description || item.location || "View details, eligibility, fees and latest information.").replace(/<[^>]*>/g, "").slice(0, 160)}</p><Link className="text-link" href={`/${type === "articles" ? "news" : type}/${slug}`}>View details →</Link></div></article>;
    })}</section>
    {result.pages > 1 && <nav className="pagination" aria-label="Pagination">{page > 0 && <Link href={`?page=${page}`}>← Previous</Link>}<span>Page {page + 1} of {result.pages}</span>{page + 1 < result.pages && <Link href={`?page=${page + 2}`}>Next →</Link>}</nav>}
  </main>;
}
