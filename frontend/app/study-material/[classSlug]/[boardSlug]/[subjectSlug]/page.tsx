import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { StudySubjectContent } from "@/components/StudySubjectContent";
import { absoluteUrl } from "@/lib/site";
import { parseClassSlug } from "@/lib/study";

export async function generateMetadata({ params }: { params: Promise<{ classSlug: string; boardSlug: string; subjectSlug: string }> }): Promise<Metadata> { const { classSlug, boardSlug, subjectSlug } = await params; const value = parseClassSlug(classSlug); return { title: value ? `Class ${value} ${subjectSlug.replace(/-/g, " ")} notes and papers` : "Study material", alternates: { canonical: absoluteUrl(`/study-material/${classSlug}/${boardSlug}/${subjectSlug}`) } }; }
export default async function StudySubjectPage({ params }: { params: Promise<{ classSlug: string; boardSlug: string; subjectSlug: string }> }) { const { classSlug, boardSlug, subjectSlug } = await params; const classNumber = parseClassSlug(classSlug); if (!classNumber) redirect("/study-material"); return <StudySubjectContent classNumber={classNumber} boardSlug={boardSlug} subjectSlug={subjectSlug} />; }
