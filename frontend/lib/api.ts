export type Entity = Record<string, unknown> & { slug?: string; name?: string; title?: string };
export type PageResult<T> = { items: T[]; page: number; size: number; total: number; pages: number };
export type ContentFilters = { tag?: string; category?: string; authorId?: string };
export type AboutSnapshot = {
  page: Entity;
  stats: Entity[];
  values: Entity[];
  founders: Entity[];
  team: Entity[];
  milestones: Entity[];
  press: Entity[];
};
export type StudyClassSnapshot = { boards: Entity[]; subjects: Entity[]; toppers: Entity[]; links: Entity[] };
export type StudySubjectSnapshot = { subject: Entity; chapters: Entity[]; resources: Entity[] };
export type CollegeProgramSnapshot = { program: Entity; universities: Entity[] };
export type CollegeUniversitySnapshot = { program: Entity; university: Entity; semesters: Entity[]; subjects: Entity[]; quickLinks: Entity[]; semesterLinks: Entity[]; fewLinks: Entity[]; toppers: Entity[] };
export type CollegeSubjectSnapshot = CollegeUniversitySnapshot & { subject: Entity; resources: Entity[] };

const base = (
  process.env.INTERNAL_API_URL || "http://localhost:8080/api/v1"
).replace(/\/$/, "");

async function request<T>(path: string, revalidate = 300): Promise<T> {
  const response = await fetch(`${base}${path}`, {
    headers: { Accept: "application/json" },
    next: { revalidate, tags: [path.split("?")[0] || path] }
  });
  if (!response.ok) throw new Error(`API ${path} returned ${response.status}`);
  return response.json() as Promise<T>;
}

export const contentApi = {
  list: (
    type: string,
    page = 0,
    size = 24,
    query = "",
    filters: ContentFilters = {},
  ) => {
    const params = new URLSearchParams({
      page: String(page),
      size: String(size),
      q: query,
    });
    if (filters.tag) params.set("tag", filters.tag);
    if (filters.category) params.set("category", filters.category);
    if (filters.authorId) params.set("authorId", filters.authorId);
    return request<PageResult<Entity>>(
      `/content/${encodeURIComponent(type)}?${params.toString()}`,
    );
  },
  get: (type: string, slug: string) => request<Entity>(`/content/${encodeURIComponent(type)}/${encodeURIComponent(slug)}`),
  slugs: (type: string) => request<string[]>(`/content/${encodeURIComponent(type)}/slugs`, 3600),
  about: () => request<AboutSnapshot>("/about", 3600),
  all: async (type: string, query = "", filters: ContentFilters = {}) => {
    const first = await contentApi.list(type, 0, 100, query, filters);
    if (first.pages <= 1) return first.items;
    const rest = await Promise.all(
      Array.from({ length: first.pages - 1 }, (_, index) =>
        contentApi.list(type, index + 1, 100, query, filters),
      ),
    );
    return [first.items, ...rest.map((page) => page.items)].flat();
  },
};

export const studyApi = {
  boards: () => request<Entity[]>("/study/boards", 3600),
  classSnapshot: (classNumber: number, boardSlug: string) =>
    request<StudyClassSnapshot>(`/study/classes/${classNumber}/boards/${encodeURIComponent(boardSlug)}`, 600),
  subjectSnapshot: (classNumber: number, boardSlug: string, subjectSlug: string) =>
    request<StudySubjectSnapshot>(`/study/classes/${classNumber}/boards/${encodeURIComponent(boardSlug)}/subjects/${encodeURIComponent(subjectSlug)}`, 600),
  resources: (filters: { classNumber?: number; boardSlug?: string; subjectSlug?: string; type?: string; q?: string; limit?: number }) => {
    const params = new URLSearchParams();
    for (const [key, value] of Object.entries(filters)) if (value !== undefined && value !== "") params.set(key, String(value));
    return request<Entity[]>(`/study/resources?${params.toString()}`, 600);
  },
};

export const collegeStudyApi = {
  programs: () => request<Entity[]>("/college-study/programs", 3600),
  program: (program: string) => request<CollegeProgramSnapshot>(`/college-study/programs/${encodeURIComponent(program)}`, 600),
  university: (program: string, university: string, semester?: number) => request<CollegeUniversitySnapshot>(`/college-study/programs/${encodeURIComponent(program)}/universities/${encodeURIComponent(university)}${semester ? `?semester=${semester}` : ""}`, 600),
  subject: (program: string, university: string, semester: number, subject: string) => request<CollegeSubjectSnapshot>(`/college-study/programs/${encodeURIComponent(program)}/universities/${encodeURIComponent(university)}/semesters/${semester}/subjects/${encodeURIComponent(subject)}`, 600),
};

export const redirectApi = {
  resolve: (code: string, header?: string) => request<{ url: string }>(`/redirects/${encodeURIComponent(code)}${header ? `?header=${encodeURIComponent(header)}` : ""}`, 0),
};
