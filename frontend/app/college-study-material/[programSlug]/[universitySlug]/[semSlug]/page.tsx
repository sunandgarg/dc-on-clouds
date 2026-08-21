import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { CollegeUniversityContent } from "@/components/CollegeUniversityContent";
import { parseSemesterSlug } from "@/lib/college-study";
import { absoluteUrl } from "@/lib/site";

export const dynamic = "force-dynamic";
export async function generateMetadata({ params }: { params: Promise<{ programSlug: string; universitySlug: string; semSlug: string }> }): Promise<Metadata> { const values = await params; return { title: `${values.universitySlug.toUpperCase()} semester ${parseSemesterSlug(values.semSlug) || ""} subjects`, alternates: { canonical: absoluteUrl(`/college-study-material/${values.programSlug}/${values.universitySlug}/${values.semSlug}`) } }; }
export default async function CollegeSemesterPage({ params }: { params: Promise<{ programSlug: string; universitySlug: string; semSlug: string }> }) { const values = await params; const semester = parseSemesterSlug(values.semSlug); if (!semester) redirect(`/college-study-material/${values.programSlug}/${values.universitySlug}`); return <CollegeUniversityContent programSlug={values.programSlug} universitySlug={values.universitySlug} semester={semester} />; }
