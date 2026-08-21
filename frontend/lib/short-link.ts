import { notFound, redirect } from "next/navigation";
import { redirectApi } from "@/lib/api";

export async function resolveShortLink(code: string, header?: string): Promise<never> {
  try {
    const target = await redirectApi.resolve(code, header);
    redirect(target.url);
  } catch (error) {
    if (error && typeof error === "object" && "digest" in error && String(error.digest).startsWith("NEXT_REDIRECT")) throw error;
    notFound();
  }
}
