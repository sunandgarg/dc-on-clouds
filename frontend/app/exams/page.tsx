import type { Metadata } from "next"; import { ListingPage } from "@/components/ListingPage";
export const metadata: Metadata = { title: "Entrance Exams", description: "Check exam dates, eligibility, patterns, syllabi and participating colleges.", alternates: { canonical: "/exams" } };
export default function Page({ searchParams }: { searchParams: Promise<{ page?: string; q?: string }> }) { return <ListingPage type="exams" title="Entrance Exams" description="Prepare with clear dates, eligibility, patterns and next actions." searchParams={searchParams} />; }
