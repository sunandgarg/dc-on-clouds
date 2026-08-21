export const site = {
  name: "DekhoCampus",
  url: (process.env.NEXT_PUBLIC_SITE_URL || "https://dekhocampus.com").replace(/\/$/, ""),
  description: "Compare colleges, courses, exams, scholarships and careers across India with clear, verified education guidance."
};

export function absoluteUrl(path: string) {
  return `${site.url}${path.startsWith("/") ? path : `/${path}`}`;
}
