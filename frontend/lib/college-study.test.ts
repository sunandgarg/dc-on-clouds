import { describe, expect, it } from "vitest";
import { parseSemesterSlug } from "./college-study";

describe("parseSemesterSlug", () => {
  it("preserves the legacy semester URL convention", () => expect(parseSemesterSlug("semester-8")).toBe(8));
  it("rejects malformed and out-of-range values", () => {
    expect(parseSemesterSlug("sem-2")).toBeNull();
    expect(parseSemesterSlug("semester-17")).toBeNull();
  });
});
