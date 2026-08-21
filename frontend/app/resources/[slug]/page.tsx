import type { Metadata } from "next";
import { ResourceDirectory } from "@/components/ResourceDirectory";
import { absoluteUrl } from "@/lib/site";

export const dynamic = "force-dynamic";
export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> { const { slug } = await params; const title = slug.replace(/-/g, " "); return { title, description: `Browse free ${title} study resources.`, alternates: { canonical: absoluteUrl(`/resources/${slug}`) } }; }
export default async function ResourceSlugPage({ params, searchParams }: { params: Promise<{ slug: string }>; searchParams: Promise<{ classNumber?: string; boardSlug?: string; subjectSlug?: string; type?: string; q?: string }> }) { const { slug } = await params; return <ResourceDirectory slug={slug} searchParams={searchParams} />; }
