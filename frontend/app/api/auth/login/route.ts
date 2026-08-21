import { NextRequest, NextResponse } from "next/server";

type HeadersWithCookies = Headers & { getSetCookie?: () => string[] };

export async function POST(request: NextRequest) {
  const form = await request.formData();
  const api = (
    process.env.INTERNAL_API_URL || "http://localhost:8080/api/v1"
  ).replace(/\/$/, "");
  const response = await fetch(`${api}/auth/login`, {
    method: "POST",
    headers: { "content-type": "application/json" },
    body: JSON.stringify({
      email: form.get("email"),
      password: form.get("password"),
    }),
    cache: "no-store",
  });
  const destination = new URL(
    response.ok ? "/dashboard" : "/auth?error=invalid",
    request.url,
  );
  const next = NextResponse.redirect(destination, 303);
  const headers = response.headers as HeadersWithCookies;
  const cookies = headers.getSetCookie?.() ?? [headers.get("set-cookie")].filter(Boolean);
  for (const cookie of cookies) {
    next.headers.append("set-cookie", cookie as string);
  }
  return next;
}
