import type { Metadata } from "next"; import { ListingPage } from "@/components/ListingPage";
export const metadata: Metadata = { title: "Education News and Guides", description: "Read current education news, admission updates and practical guides.", alternates: { canonical: "/news" } };
export default function Page({ searchParams }: { searchParams: Promise<{ page?: string; q?: string }> }) { return <ListingPage type="articles" title="Education News and Guides" description="Current updates and clear explanations for students and families." searchParams={searchParams} />; }
