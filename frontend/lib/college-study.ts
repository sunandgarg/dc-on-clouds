export function parseSemesterSlug(slug: string) {
  const match = /^semester-(\d{1,2})$/.exec(slug);
  if (!match) return null;
  const value = Number(match[1]);
  return value >= 1 && value <= 16 ? value : null;
}
