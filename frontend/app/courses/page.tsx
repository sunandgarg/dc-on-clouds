import type { Metadata } from "next"; import { ListingPage } from "@/components/ListingPage";
export const metadata: Metadata = { title: "Courses", description: "Explore course eligibility, duration, fees, subjects and career outcomes.", alternates: { canonical: "/courses" } };
export default function Page({ searchParams }: { searchParams: Promise<{ page?: string; q?: string }> }) { return <ListingPage type="courses" title="Courses" description="Understand what to study and where each course can lead." searchParams={searchParams} />; }
