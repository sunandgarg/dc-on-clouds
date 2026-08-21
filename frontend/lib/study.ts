export const studyClasses = [8, 9, 10, 11, 12] as const;

export function parseClassSlug(slug: string) {
  const match = /^class-(8|9|10|11|12)$/.exec(slug);
  return match ? Number(match[1]) : null;
}

export function parseResourceSlug(slug?: string) {
  if (!slug) return {};
  const value = slug.toLowerCase();
  const boards = ["cbse", "icse", "isc", "state-board", "ib", "cambridge"];
  const subjects = ["physics", "chemistry", "biology", "maths", "mathematics", "english", "hindi", "sanskrit", "accountancy", "economics", "business-studies", "computer-science", "political-science", "history", "geography"];
  const classMatch = /class-(\d{1,2})/.exec(value);
  const subject = subjects.find((candidate) => value.includes(candidate));
  let type: string | undefined;
  if (value.includes("pyq") || value.includes("question-paper")) type = "pyq";
  else if (value.includes("ncert")) type = "ncert";
  else if (value.includes("notes")) type = "notes";
  else if (value.includes("sample")) type = "sample";
  return {
    boardSlug: boards.find((candidate) => value.includes(candidate)),
    classNumber: classMatch ? Number(classMatch[1]) : undefined,
    subjectSlug: subject === "mathematics" ? "maths" : subject,
    type,
  };
}
