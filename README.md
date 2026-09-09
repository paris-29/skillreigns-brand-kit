# SkillReigns Brand Kit (repo)

Everything an AI agent — or a human — needs to create on-brand SkillReigns documents,
templates, and collateral. Portable: copy this folder anywhere, the skill still works
(paths inside are relative).

## Layout

| Path | What |
|---|---|
| `SKILL.md` | **Start here (agents).** Instructions to pull this repo's data and create whatever the user asked. |
| `brand/MEMORY.md` | Long-term memory: vision, Rauhaan's answers, locked decisions, non-negotiables. |
| `brand/context.md` | Operating manual of the SkillReigns workspace (Q&A, taxonomy, workflows). |
| `brand/SkillReigns_Design_System.md` | The Brand Bible (v2.0): full visual + verbal system. |
| `brand/Design-Guide.md` | AI Studio product build guide (for UI work). |
| `assets/` + `assets/ASSET-MAP.md` | Logos (main, icon, mono dark/white, outline) + strict usage rules. |
| `templates/` | All collateral tracks (`SR-DOC-BK`, `SR-VISUAL-BK`, `SR-VIDEO-BK`, `SR-BRANDING-BK`, `SR-COURSE-BK`, `SR-TBDNEW-BK`), each item with `README.md` + `spec.md` + `output/` + `Template-preview/`. |
| `documents/` | Human-readable library: `Editable/` sources + `PDF/` rendered previews. |
| `agent-skills/` | Drop-in skill files (`template-docs`, `recall-coach`) for harness-based agents. |
| `sync.sh` | Re-sync copies from the live `SkillReigns/` workspace. |

## Humans

1. Read `brand/MEMORY.md` (5 min) for the full picture.
2. Browse `documents/PDF/` for what exists; `templates/<TRACK>/README.md` for the plan.
3. Ask any AI agent to read `SKILL.md` in this repo, then tell it what to make.

## Agents

Read `SKILL.md` and follow it. Do not guess brand facts — pull them from this repo.
