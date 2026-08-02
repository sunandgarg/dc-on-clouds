import { describe, expect, it } from "vitest";
import { getInternalAdContext } from "./GlobalInternalAds";

describe("global internal ad route targeting", () => {
  it("maps news listings and detail pages to the articles audience", () => {
    expect(getInternalAdContext("/news")).toMatchObject({ page: "articles", itemSlug: undefined, isPublic: true });
    expect(getInternalAdContext("/news/example-story")).toMatchObject({ page: "articles", itemSlug: "example-story", isPublic: true });
    expect(getInternalAdContext("/news/tag/admissions")).toMatchObject({ page: "articles", itemSlug: undefined, isPublic: true });
  });

  it("maps entity details and keeps filtered listings page-scoped", () => {
    expect(getInternalAdContext("/colleges/iit-delhi")).toMatchObject({ page: "colleges", itemSlug: "iit-delhi" });
    expect(getInternalAdContext("/colleges/top-engineering-colleges-in-delhi-ncr")).toMatchObject({ page: "colleges", itemSlug: undefined });
  });

  it("does not render ads inside protected operational routes", () => {
    expect(getInternalAdContext("/admin/ads").isPublic).toBe(false);
    expect(getInternalAdContext("/dashboard").isPublic).toBe(false);
  });

  it("maps premium, careers and study sections to their admin targeting groups", () => {
    expect(getInternalAdContext("/premium-programs/example")).toMatchObject({ page: "premium_programs", itemSlug: "example" });
    expect(getInternalAdContext("/vacancies/example-role")).toMatchObject({ page: "careers", itemSlug: "example-role" });
    expect(getInternalAdContext("/study-material/class-12/cbse")).toMatchObject({ page: "study_material", itemSlug: "class-12" });
  });
});
