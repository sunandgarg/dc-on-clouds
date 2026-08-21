import type { Metadata } from "next"; import { EntityPage } from "@/components/EntityPage"; import { contentApi } from "@/lib/api"; import { entityMetadata } from "@/lib/seo";
export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> { const { slug } = await params; return entityMetadata(await contentApi.get("courses", slug), `/courses/${slug}`, "Course details"); }
export default async function Page({ params }: { params: Promise<{ slug: string }> }) { const { slug } = await params; return <EntityPage type="courses" slug={slug} />; }
