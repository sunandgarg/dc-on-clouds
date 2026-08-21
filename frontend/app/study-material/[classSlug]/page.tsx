import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { StudyClassContent } from "@/components/StudyClassContent";
import { absoluteUrl } from "@/lib/site";
import { parseClassSlug } from "@/lib/study";

export async function generateMetadata({ params }: { params: Promise<{ classSlug: string }> }): Promise<Metadata> { const { classSlug } = await params; const value = parseClassSlug(classSlug); return { title: value ? `Class ${value} study material` : "Study material", alternates: { canonical: absoluteUrl(`/study-material/${classSlug}`) } }; }
export default async function StudyClassPage({ params, searchParams }: { params: Promise<{ classSlug: string }>; searchParams: Promise<{ board?: string }> }) { const { classSlug } = await params; const classNumber = parseClassSlug(classSlug); if (!classNumber) redirect("/study-material"); const query = await searchParams; return <StudyClassContent classNumber={classNumber} boardSlug={query.board} />; }
