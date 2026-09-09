# All-Documents — Human-Readable Library

> The readable face of the template system. Open a file, read it, print it, send it for review.
> Sources + generation: see `context.md` §6–§7 and `templates/`.

## Where things are
- `PDF/` — rendered previews, one per document per version. **Start here for review.**
- `Editable/` — editable sources (`.html`, open in any browser/editor, print to PDF). Edit the HTML, never the PDF.

## v1.0 — [SR-DOC-BK] Documents & Official Collateral (13/13 live)
| # | Document | PDF | Editable |
|---|---|---|---|
| 01 | Proposal Document — Universities | `01_Proposal-Document-Universities-v1.0.pdf` | `.html` same name |
| 02 | Course Brochure | `02_Course-Brochure-v1.0.pdf` | `.html` |
| 03 | Payment Receipt | `03_Payment-Receipt-v1.0.pdf` | `.html` |
| 04 | Payment Plan Document | `04_Payment-Plan-Document-v1.0.pdf` | `.html` |
| 05 | Enrollment Form + T&C ⚠️ legal review | `05_Enrollment-Form-TnC-v1.0.pdf` | `.html` |
| 06 | Offer Letter | `06_Offer-Letter-v1.0.pdf` | `.html` |
| 07 | Relieving Letter | `07_Relieving-Letter-v1.0.pdf` | `.html` |
| 08 | Experience Letter | `08_Experience-Letter-v1.0.pdf` | `.html` |
| 09 | Course Completion Certificate (Smart) | `09_Course-Completion-Certificate-Smart-v1.0.pdf` | `.html` |
| 10 | Internship Letter | `10_Internship-Letter-v1.0.pdf` | `.html` |
| 11 | Influencer Collaboration Agreement ⚠️ legal review | `11_Influencer-Collaboration-Agreement-v1.0.pdf` | `.html` |
| 12 | Instructor / Employee Onboarding Deck | `12_Instructor-Employee-Onboarding-Deck-v1.0.pdf` | `.html` |
| 13 | NDA & IP Assignment ⚠️ legal review | `13_NDA-IP-Assignment-Agreement-v1.0.pdf` | `.html` |

Each file is mirrored into its item folder: editable → `templates/…/<item>/output/`, preview → `templates/…/<item>/Template-preview/preview-v1.0.pdf`.

## Conventions
- `[BRACKETED]` text = fill per case. Never send with brackets unfilled.
- ⚠️ = DRAFT, needs lawyer clearance before issue.
- Fonts render in Poppins when installed, else Liberation/Noto Sans fallback (install Poppins for pixel-perfect).
- Versioning: new version = new files (`-v1.1`), never overwrite a reviewed PDF.
