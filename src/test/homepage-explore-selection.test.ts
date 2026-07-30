import { describe, expect, it } from "vitest";
import { readFileSync } from "fs";
import { resolve } from "path";

const read = (path: string) => readFileSync(resolve(process.cwd(), path), "utf8");

describe("homepage Explore by Category selection", () => {
  const categorySection = read("src/components/CategorySection.tsx");
  const collegeHook = read("src/hooks/useCollegesData.ts");
  const courseHook = read("src/hooks/useCoursesData.ts");
  const examHook = read("src/hooks/useExamsData.ts");
  const adminSources = [
    read("src/pages/AdminColleges.tsx"),
    read("src/pages/AdminCourses.tsx"),
    read("src/pages/AdminExams.tsx"),
  ];
  const migration = read(
    "supabase/migrations/20260730093000_homepage_explore_category_selection.sql",
  );

  it("uses category-scoped homepage hooks instead of loading complete entity datasets", () => {
    expect(categorySection).toMatch(/useHomepageCategoryColleges/);
    expect(categorySection).toMatch(/useHomepageCategoryCourses/);
    expect(categorySection).toMatch(/useHomepageCategoryExams/);
    expect(categorySection).not.toMatch(/useDbColleges/);
    expect(categorySection).not.toMatch(/useDbCourses/);
    expect(categorySection).not.toMatch(/useDbExams/);
  });

  it.each([
    ["colleges", collegeHook],
    ["courses", courseHook],
    ["exams", examHook],
  ])("%s uses checked rows first and only then defines the fallback", (_entity, source) => {
    expect(source).toMatch(/\.eq\("show_in_explore_by_category", true\)/);
    expect(source).toMatch(/\.order\("explore_by_category_checked_at", \{ ascending: false/);
    expect(source).toMatch(/if \(selected\.size > 0\)/);
    expect(source.indexOf("if (selected.size > 0)")).toBeLessThan(
      source.indexOf("const fallbackBase"),
    );
  });

  it("provides the homepage checkbox in all three admin editors", () => {
    for (const source of adminSources) {
      expect(source).toMatch(/Show in homepage Explore by Category/);
      expect(source).toMatch(/show_in_explore_by_category: false/);
      expect(source).toMatch(/explore_by_category_checked_at/);
    }
  });

  it("adds timestamp-maintained fields and partial indexes for all entity tables", () => {
    for (const table of ["colleges", "courses", "exams"]) {
      expect(migration).toContain(`ALTER TABLE public.${table}`);
      expect(migration).toContain(
        `DROP TRIGGER IF EXISTS ${table}_set_explore_by_category_checked_at`,
      );
      expect(migration).toContain(`${table}_homepage_explore_category_idx`);
    }
    expect(migration).toMatch(
      /show_in_explore_by_category boolean NOT NULL DEFAULT false/g,
    );
    expect(migration).toMatch(/explore_by_category_checked_at timestamptz/g);
  });
});
