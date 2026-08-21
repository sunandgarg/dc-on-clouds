import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { StudySubjectContent } from "@/components/StudySubjectContent";
import { absoluteUrl } from "@/lib/site";
import { parseClassSlug } from "@/lib/study";

export async function generateMetadata({ params }: { params: Promise<{ classSlug: string; boardSlug: string; subjectSlug: string; chapterSlug: string }> }): Promise<Metadata> { const value = await params; const classNumber = parseClassSlug(value.classSlug); return { title: classNumber ? `Class ${classNumber} ${value.subjectSlug.replace(/-/g, " ")}: ${value.chapterSlug.replace(/-/g, " ")}` : "Study material", alternates: { canonical: absoluteUrl(`/study-material/${value.classSlug}/${value.boardSlug}/${value.subjectSlug}/${value.chapterSlug}`) } }; }
export default async function StudyChapterPage({ params }: { params: Promise<{ classSlug: string; boardSlug: string; subjectSlug: string; chapterSlug: string }> }) { const value = await params; const classNumber = parseClassSlug(value.classSlug); if (!classNumber) redirect("/study-material"); return <StudySubjectContent classNumber={classNumber} boardSlug={value.boardSlug} subjectSlug={value.subjectSlug} chapterSlug={value.chapterSlug} />; }
