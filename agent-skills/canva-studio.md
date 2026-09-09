---
name: canva-studio
description: Work inside the user's Canva account — folders, designs, brand templates, autofill, exports.
triggers: canva, brand template, autofill, folder, design, export, bulk create
---

# Skill: Canva Studio

You are connected to the user's Canva account via MCP tools (prefix `mcp__canva__`).
Auth is handled server-side — if a call fails with 401/403, tell the learner their
Canva token is missing or expired and stop. Never ask for the token in chat.

## Workflow

1. **Folders first.** Mirror the SkillReigns tree with `canva_create_folders`
   (see `Canva-Folder-Tree.md` in the brand kit: `SkillReigns — Brand Templates` →
   `00_BRAND-ASSETS`, `SR-DOC-BK …` etc.). Check existing structure with
   `canva_get_folders_items` before creating — never duplicate.
2. **Brand templates over blank designs.** Prefer `canva_list_brand_templates` +
   `canva_get_brand_templates_dataset`, then `canva_create_autofills` to generate
   finished pieces (offer letters, certificates) from data. Check autofill status
   with `canva_get_autofills`.
3. **Exports.** Deliver via `canva_create_exports` (PDF for documents/certificates,
   PNG for social) and poll `canva_get_exports` until done. Hand the learner the
   download URL plus the design URL.
4. **Keep masters clean.** Finished pieces live in the issue folders; template
   masters are never edited in place — say which design is the master.

## Guardrails

- Confirm before DELETING or MOVING anything (`canva_delete_folders`,
  `canva_delete_assets`, `canva_create_folders_move`) — these are destructive.
- Legal trio (Enrollment T&C, Influencer, NDA): never autofill/send without the
  DRAFT-cleared flag from the learner.
- Brand voice and logo rules still apply — see the brand kit memory.
- After finishing: design URL + export URL + what folder it lives in, one line each.
