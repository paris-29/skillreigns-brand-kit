# SkillReigns AI Studio — Design Guide (Build v1.0)

> For: designers + AI builders implementing the SkillReigns AI Studio (chat / playground / labs).
> Brand authority: `SkillReigns_Design_System.md` + `context.md`. This file = the product-specific cut.
> North star: **a serious technology company that happens to be exceptionally good at education.**

---

## 1. What the AI Studio is

A premium workspace where Reigners **learn, build and recall with AI assistance** — not a generic chatbot skin. Three jobs:

1. **Learn** — explain concepts, quiz me, challenge understanding, summarise modules.
2. **Build** — generate practice problems, review approaches, debug with guidance, run labs.
3. **Recall** — spaced recall prompts, progress tracking, interview prep.

Golden rule (brand): **human central, AI = amplifier.** Visual and copy must never imply AI replaces the learner. Flow: HUMAN → KNOWLEDGE → AI → EXECUTION → OUTCOME.

---

## 2. Design principles (non-negotiable)

1. **Competent, not flashy.** Premium comes from spacing, type, precision — never glow, neon, or chrome.
2. **One idea per screen.** Empty states teach; threads stay scannable.
3. **Cognition is visible.** The learning loop (LEARN → DO → RECALL → APPLY → BUILD → REFLECT) appears as progress, not decoration.
4. **Honest AI.** Show uncertainty, cite sources, offer "verify" paths. Never fake confidence.
5. **Calm motion.** Micro 150–250ms, UI 200–300ms, large 300–500ms. Fade/slide only.

---

## 3. Layout — app shell

```
┌────────────────────────────────────────────────────┐
│ TOPBAR: icon + SkillReigns · Studio   search  user │
├──────────┬──────────────────────────┬──────────────┤
│ SIDEBAR  │  CONVERSATION / CANVAS   │  INSPECTOR   │
│ threads  │  messages + composer     │  context ·   │
│ tracks   │  (or lab / code view)    │  recall ·    │
│ history  │                          │  progress    │
└──────────┴──────────────────────────┴──────────────┘
```

- **Desktop ≥1200px:** 3 panes (264px / fluid max 820px / 320px).
- **Tablet:** sidebar collapses to icons; inspector becomes tab.
- **Mobile:** single pane; sidebar + inspector become bottom sheets.
- Max conversation width **820px** — readability first.

---

## 4. Theme

**Light = default** (strong light-mode identity is a brand requirement).

| Role | Light | Dark |
|---|---|---|
| App bg | `#F8FAFC` | `#020617` |
| Surface / AI bubble | `#FFFFFF` | `#0A1931` |
| User bubble | `#0A1931` bg, `#FFFFFF` text | `#2563EB` bg, `#FFFFFF` text |
| Primary text | `#0F172A` | `#F8FAFC` |
| Secondary text | `#475569` | `#94A3B8` |
| Border | `#E2E8F0` | `#1E293B` |
| Primary action | `#2563EB` | `#3B82F6` |
| Accent wash | `#EFF6FF` | `#102A56` |

Ratio check: 50–65% neutral, 20–30% navy, 5–15% brand blue. Never full-navy-everything in light mode.

---

## 5. Typography

- **UI / body / messages:** Poppins Regular 15–16px, line-height 1.6. H-headings Poppins SemiBold.
- **Display (rare):** Electro Shakel ONLY for the empty-state headline (e.g. "Skill Rules.") and product wordmark moments. Never in messages or buttons.
- **Code:** monospace 13.5px, dark navy card `#0A1931`, syntax tinted with `#60A5FA` / `#DBEAFE` accents. No green-on-black hacker theme.

---

## 6. CSS tokens (drop-in)

```css
:root{
  --sr-navy:#0A1931; --sr-deep:#102A56; --sr-blue:#2563EB;
  --sr-bright:#3B82F6; --sr-light:#60A5FA; --sr-pale:#DBEAFE;
  --sr-surface:#EFF6FF; --sr-bg:#F8FAFC; --sr-card:#FFFFFF;
  --sr-border:#E2E8F0; --sr-text:#0F172A; --sr-muted:#475569;
  --sr-radius:12px; --sr-radius-sm:8px;
  --sr-font:'Poppins',system-ui,sans-serif;
  --sr-mono:ui-monospace,'Cascadia Code',Menlo,monospace;
}
```

---

## 7. Core components

### 7.1 Prompt composer (the hero component)
- Rounded 12px card, white, 1px border, subtle shadow. Multiline autosize textarea.
- Left: `+` attach (files, code, image). Right: model picker chip + round blue **Send** button (arrow icon, never "CLICK HERE" copy).
- `Enter` = send, `Shift+Enter` = newline. `Cmd/Ctrl+K` focuses composer anywhere.
- Placeholder rotates honest prompts: "Explain backpropagation like I'm revising…" / "Quiz me on joins…".

### 7.2 Messages
- **User:** right-aligned navy bubble, white text, 8–12px radius.
- **AI:** full-width row, 40px crown **icon-only logo** avatar (`logo-icon.png`), name "Studio AI", Poppins body, generous whitespace.
- Streaming: typewriter with soft caret; `aria-live="polite"`; "Stop" button while streaming.
- Every AI answer ends with a **next-step row**: `Explain deeper · Quiz me · Give practice · Summarise` (maps to Design System §50 actions).

### 7.3 Code block
- Header bar: filename + language + Copy + (where safe) Run. Body: navy card, mono, horizontal scroll, max-height with collapse beyond 30 lines.

### 7.4 Sidebar
- Top: "New session" primary button. Sections: Specialisations (Data/AI/MLOps/Cyber/Robotics), Recent threads (grouped Today/Week), bottom: usage meter + user card.
- Active thread: pale-blue `#EFF6FF` wash + 3px brand-blue left bar.

### 7.5 Inspector (right pane)
- **Context card:** current module, sources cited (clickable chips).
- **Recall card:** due recall prompts with "Start 2-min recall" CTA.
- **Progress ring:** module completion %, brand-blue stroke on pale track.

### 7.6 States
- **Empty:** icon + Electro Shakel "Skill Rules." + 3 starter cards (Explain / Build / Recall) + honest subline.
- **Loading:** skeleton lines (no spinners farms); progress % where measurable ("Running lab… 72%").
- **Error/offline:** plain-language card + Retry. Never blame the user. Never fake an answer on failure.
- **Limits:** usage meter bar; paywalled features say what + why + upgrade CTA.

---

## 8. AI behaviour UX (copy rules)

- Be specific, factual, constructive, human, confident. Short structured answers: heading → explanation → example → try-it.
- End learning answers with a **recall prompt** ("Now recall: …") — the brand differentiator.
- Uncertain? Say so + offer verification path. No manufactured citations, testimonials, or placement claims.
- Banned voice: "This skill is dead", fear-bait, fake urgency, competitor insults.

---

## 9. Motion

- Message in: fade + 8px rise, 200ms ease-out. Composer focus: border → brand blue, 150ms.
- Progress/meters animate linearly. Respect `prefers-reduced-motion` (instant states).
- No floating particles, gradient animation, or typing-effect gimmicks outside real streaming.

---

## 10. Accessibility checklist

- Contrast AA everywhere (blue-on-white `#2563EB` passes for large/bold; body text navy).
- Visible focus rings (2px brand-blue offset). Full keyboard path: sidebar → thread → composer → actions.
- Streaming region `aria-live`; code blocks labelled; icons never color-only status.
- Touch targets ≥44px on mobile sheets.

---

## 11. Banned (brand anti-style, enforced)

AI-slop gradients, purple cyber palettes, robot/assistant avatars, glowing brains, holograms, matrix rain, glassmorphism panels, 3D chrome headers, fake terminals, stock handshake art, meme styling.

---

## 12. Build checklist (v1.0 scope)

- [ ] Shell + routing (sidebar / thread / inspector, responsive collapse)
- [ ] Composer + streaming message list + stop/regenerate
- [ ] Code block + copy (+ run where sandboxed)
- [ ] Action row (explain / quiz / challenge / review / summarise)
- [ ] Recall card + progress ring (static data OK for v1)
- [ ] Empty / loading / error / limit states
- [ ] Light + dark theme toggle (persist)
- [ ] `prefers-reduced-motion` + keyboard map + focus rings
- [ ] 5-second test: WHO (SkillReigns) / WHAT (learn+build with AI) / WHY (practical skill) / FEEL (premium, human) / NEXT (ask something)

Suggested structure: `app/(studio)/{sidebar,thread,inspector,composer}/` + `tokens.css` (§6) + `components/{message,code-block,recall-card,progress-ring,empty-state}.tsx`.

---
*Owned by Paris. Brand authority: Rauhaan. v1.0 — Sept 2026. Update here when the Studio ships new surfaces.*
