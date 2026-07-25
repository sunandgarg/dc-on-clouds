import { describe, expect, it } from "vitest";
import { readFileSync } from "fs";
import { resolve } from "path";

describe("Clean Data lifecycle and review workflow", () => {
  const migration = readFileSync(resolve(process.cwd(), "supabase/migrations/20260726001000_data_cleaner_pass_tracking.sql"), "utf8");
  const cleaner = readFileSync(resolve(process.cwd(), "supabase/functions/admin-data-cleaner/index.ts"), "utf8");
  const admin = readFileSync(resolve(process.cwd(), "src/pages/AdminDataCleaner.tsx"), "utf8");
  const preview = readFileSync(resolve(process.cwd(), "src/pages/AdminDataCleanerPreview.tsx"), "utf8");

  it("tracks attempts separately from successful applied cleanups", () => {
    expect(migration).toMatch(/data_clean_attempts/);
    expect(migration).toMatch(/data_clean_successes/);
    expect(migration).toMatch(/data_clean_state/);
    expect(cleaner).toMatch(/checked_no_change/);
    expect(cleaner).toMatch(/awaiting_review/);
  });

  it("queues only the least-completed pass and blocks a new pass during review", () => {
    expect(migration).toMatch(/t\.data_clean_attempts = \(/);
    expect(migration).toMatch(/min\(candidate\.data_clean_attempts\)/);
    expect(migration).toMatch(/pending\.data_clean_state = ''awaiting_review''/);
  });

  it("opens a dedicated split before-and-after comparison", () => {
    expect(admin).toMatch(/Open full comparison/);
    expect(admin).toMatch(/target="_blank"/);
    expect(preview).toMatch(/Current database value/);
    expect(preview).toMatch(/AI researched value/);
    expect(preview).toMatch(/grid-cols-2/);
  });

  it("does not show an evidence percentage when no change was supported", () => {
    expect(admin).toMatch(/item\.changed_fields\?\.length > 0/);
    expect(cleaner).toMatch(/confidence: verified\.sources\.length \? confidence : null/);
  });
});
