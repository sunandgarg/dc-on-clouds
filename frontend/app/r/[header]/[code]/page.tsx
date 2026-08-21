import type { Metadata } from "next";
import { resolveShortLink } from "@/lib/short-link";
export const dynamic = "force-dynamic";
export const metadata: Metadata = { robots: { index: false, follow: false } };
export default async function HeaderRedirectAliasPage({ params }: { params: Promise<{ header: string; code: string }> }) { const { header, code } = await params; return resolveShortLink(code, header); }
