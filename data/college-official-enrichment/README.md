# Official college enrichment

Each batch is campus-specific and source-led. A record may only move from
`structural_template` to `official_source` after its claims have named
provenance in `data_source_urls`.

## Completion rules

- Official institution pages are the primary source. NIRF is used for NIRF
  rankings. A third-party source may assist discovery, but it cannot override
  an official fact.
- `official_courses_verified` becomes `true` only after all currently
  advertised programme names and branches for that campus are mapped.
- `official_fees_verified` becomes `true` only when each displayed amount is
  tied to a programme, academic period and applicable student category.
- Missing fees stay `NULL`; the UI must never convert them to zero.
- Images and logos are outside this workflow and are preserved.
- Original answer-first prose is written for people first, with clear entities,
  dates and source context that also make the page useful to search and answer
  engines.
- The validator rejects HTML leakage, repeated long template passages,
  unsupported fee fields, duplicate slugs and cross-institution source domains.

No automated “human” or plagiarism detector can provide a scientifically
reliable percentage. The enforceable safeguards here are original synthesis,
named provenance and within-batch long-phrase duplication checks.
