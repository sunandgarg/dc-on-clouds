import type { Metadata } from "next";
import { ListingPage } from "@/components/ListingPage";
import { absoluteUrl } from "@/lib/site";

export const metadata: Metadata = { title: "Premium programs from leading institutes", description: "Browse premium online programs, duration, eligibility and current pricing from leading institutes.", alternates: { canonical: absoluteUrl("/premium-programs") } };
export default function PremiumProgramsPage({ searchParams }: { searchParams: Promise<{ page?: string; q?: string }> }) { return <ListingPage type="premium-programs" title="Premium programs" description="Online and blended programs from leading institutes, with clear eligibility and course details." searchParams={searchParams} />; }
