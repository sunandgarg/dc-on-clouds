import { describe, expect, it } from "vitest";
import { parseClassSlug, parseResourceSlug } from "./study";

describe("study routes", () => {
  it("accepts only supported class slugs", () => {
    expect(parseClassSlug("class-12")).toBe(12);
    expect(parseClassSlug("class-7")).toBeNull();
  });
  it("parses legacy SEO resource slugs", () => {
    expect(parseResourceSlug("cbse-class-12-physics-pyq")).toEqual({
      boardSlug: "cbse", classNumber: 12, subjectSlug: "physics", type: "pyq",
    });
  });
});
