import type { Metadata } from "next";
import { ResourceDirectory } from "@/components/ResourceDirectory";
import { absoluteUrl } from "@/lib/site";

export const dynamic = "force-dynamic";
export const metadata: Metadata = { title: "Free study resources", description: "Browse previous papers, NCERT solutions, notes and sample papers by class, board and subject.", alternates: { canonical: absoluteUrl("/resources") } };
export default function ResourcesPage({ searchParams }: { searchParams: Promise<{ classNumber?: string; boardSlug?: string; subjectSlug?: string; type?: string; q?: string }> }) { return <ResourceDirectory searchParams={searchParams} />; }
