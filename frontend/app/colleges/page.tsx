import type { Metadata } from "next";
import { ListingPage } from "@/components/ListingPage";
export const metadata: Metadata = { title: "Colleges in India", description: "Compare colleges in India by location, fees, approvals, courses and placements.", alternates: { canonical: "/colleges" } };
export default function Page({ searchParams }: { searchParams: Promise<{ page?: string; q?: string }> }) { return <ListingPage type="colleges" title="Colleges in India" description="Compare institutions using structured, current information." searchParams={searchParams} />; }
