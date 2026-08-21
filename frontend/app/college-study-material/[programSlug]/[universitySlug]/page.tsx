import type { Metadata } from "next";
import { CollegeUniversityContent } from "@/components/CollegeUniversityContent";
import { absoluteUrl } from "@/lib/site";

export const dynamic = "force-dynamic";
export async function generateMetadata({ params }: { params: Promise<{ programSlug: string; universitySlug: string }> }): Promise<Metadata> { const { programSlug, universitySlug } = await params; return { title: `${universitySlug.toUpperCase()} ${programSlug.toUpperCase()} notes and PYQs`, alternates: { canonical: absoluteUrl(`/college-study-material/${programSlug}/${universitySlug}`) } }; }
export default async function CollegeUniversityPage({ params }: { params: Promise<{ programSlug: string; universitySlug: string }> }) { return <CollegeUniversityContent {...await params} />; }
