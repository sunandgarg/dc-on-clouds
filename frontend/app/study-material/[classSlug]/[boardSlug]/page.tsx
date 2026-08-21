import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { StudyClassContent } from "@/components/StudyClassContent";
import { absoluteUrl } from "@/lib/site";
import { parseClassSlug } from "@/lib/study";

export async function generateMetadata({ params }: { params: Promise<{ classSlug: string; boardSlug: string }> }): Promise<Metadata> { const { classSlug, boardSlug } = await params; const value = parseClassSlug(classSlug); return { title: value ? `Class ${value} ${boardSlug.toUpperCase()} study material` : "Study material", alternates: { canonical: absoluteUrl(`/study-material/${classSlug}/${boardSlug}`) } }; }
export default async function StudyBoardPage({ params }: { params: Promise<{ classSlug: string; boardSlug: string }> }) { const { classSlug, boardSlug } = await params; const classNumber = parseClassSlug(classSlug); if (!classNumber) redirect("/study-material"); return <StudyClassContent classNumber={classNumber} boardSlug={boardSlug} />; }
