import type { Metadata } from "next";
import { EntityPage } from "@/components/EntityPage";
import { contentApi } from "@/lib/api";
import { entityMetadata } from "@/lib/seo";

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> { const { slug } = await params; try { return entityMetadata(await contentApi.get("premium-programs", slug), `/premium-programs/${slug}`, "Premium program"); } catch { return { title: "Premium program" }; } }
export default async function PremiumProgramPage({ params }: { params: Promise<{ slug: string }> }) { const { slug } = await params; return <EntityPage type="premium-programs" slug={slug} />; }
