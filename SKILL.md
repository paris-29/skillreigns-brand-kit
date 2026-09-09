---
name: skillreigns-brand-kit
description: Create any SkillReigns document, template, or brand collateral using this repo's locked brand data. Use when the user asks for offer letters, certificates, brochures, receipts, forms, agreements, decks, ads, or anything carrying the SkillReigns brand.
---

# SkillReigns Brand Kit — agent instructions

You are creating for **SkillReigns Technologies Pvt. Ltd.** All paths below are
relative to this repo root. Never guess brand facts — pull them from these files.

## Step 0 — Load context (every task, in this order)

1. `brand/MEMORY.md` — locked facts, voice, non-negotiables, working agreements.
2. The user's request. Classify it: which tracking tag? (`[SR-DOC-BK]` documents,
   `[SR-VISUAL-BK]` visuals, `[SR-VIDEO-BK]` video, `[SR-BRANDING-BK]` merch/physical,
   `[SR-COURSE-BK]` course assets, `[SR-TBDNEW-BK]` if truly new.)
3. The matching `templates/<TRACK>/README.md` + the item folder's `README.md` + `spec.md`.
4. `assets/ASSET-MAP.md` when a logo is involved. `brand/SkillReigns_Design_System.md`
   only for deep visual/voice questions — MEMORY.md covers 95% of tasks.

## Step 1 — Find, don't duplicate

- Search `templates/` and `documents/` for an existing match first
  (e.g. offer letter → `templates/SR-DOC-BK_Documents-Official-Collateral/06_Offer-Letter/`,
  readable copy in `documents/Editable/` + `documents/PDF/`).
- Existing match → extend/revise it. No match → create under the right track with a
  `README.md` + `spec.md` following the folder's naming pattern.

## Step 2 — Collect missing fields (mandatory)

Identify every person-specific fact the output needs (names, designation, department,
amounts, dates, location, IDs). **Never invent them.** If any are missing, ask the user
— max 3 sharp questions per round, with options where possible (e.g. location:
Remote / On-site / Hybrid). Prefill what the request already contains
("offer letter for Raj Sharma" → name is known, don't re-ask it).

## Step 3 — Create (never overwrite sources)

- Template sources are read-only reference. Write the filled deliverable as a NEW
  versioned file next to it: `<Doc-Name>-<slug>-<DD-Mmm-YYYY>.html` (or `.md`),
  e.g. `Offer-Letter-raj-sharma-09-Sep-2026.html`.
- Substitute every `[BRACKETED]` placeholder you have values for. Leave the rest
  intact and list them as leftovers for a human.
- Voice per MEMORY.md: corporate-precise for institutions, friendly-human for learners.
  Structure: heading → explanation → example → try-it → one bold
  `**Now recall**: …` question (learning docs).
- Legal / finance / certification output MUST end with:
  `> Draft — verify with the SkillReigns ops team before publishing.`

## Step 4 — Render + present

- Render a PDF preview of every deliverable (print the HTML/Markdown to PDF).
- Present: (1) what was made, (2) exact file paths (source + PDF), (3) placeholders
  still needing a human, (4) the single next step. Show/open the PDF preview;
  offer it as a download.

## Guardrails

- No invented fees, placement numbers, testimonials, policies, or dates. No fear-bait,
  no "skill is dead" gimmicks, no competitor insults, no guaranteed employment.
- Logo use per `assets/ASSET-MAP.md` (main default; outline art backgrounds only).
- Electro Shakel for short display lines only; Poppins for everything else.
- One collateral = one thread of work; tag it (`[SR-DOC-BK] Offer Letter — v1.0…`).
- If the request conflicts with MEMORY.md, follow MEMORY.md and say why in one line.
