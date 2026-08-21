import type { Metadata } from "next";
import { ListingPage } from "@/components/ListingPage";
import { absoluteUrl } from "@/lib/site";

export async function generateMetadata({ params }: { params: Promise<{ tag: string }> }): Promise<Metadata> {
  const { tag } = await params;
  const label = decodeURIComponent(tag).replace(/-/g, " ");
  return { title: `${label} news and guides`, description: `Latest DekhoCampus articles tagged ${label}.`, alternates: { canonical: absoluteUrl(`/news/tag/${tag}`) } };
}

export default async function NewsTagPage({ params, searchParams }: { params: Promise<{ tag: string }>; searchParams: Promise<{ page?: string; q?: string }> }) {
  const { tag } = await params;
  const label = decodeURIComponent(tag).replace(/-/g, " ");
  return <ListingPage type="articles" title={`${label} news`} description={`Articles, updates and guides tagged ${label}.`} tag={label} searchParams={searchParams} />;
}
