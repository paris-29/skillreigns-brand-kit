#!/usr/bin/env bash
# Re-sync this repo's copies from the live SkillReigns workspace.
# Run from the repo root:  ./sync.sh
set -euo pipefail
SRC="$(cd .. && pwd)"
[ -d "$SRC/templates" ] || { echo "Live workspace not found next to repo."; exit 1; }
cp -f "$SRC/SkillReigns_Design_System.md" "$SRC/context.md" "$SRC/Design-Guide.md" brand/
cp -f "$SRC/logo-icon.png" "$SRC/skillreigns-main-with-typo.png" "$SRC/Mono-Dark.png" "$SRC/Mono-White.png" "$SRC/Outline-logo.png" assets/
rm -rf templates documents
cp -r "$SRC/templates" templates
cp -r "$SRC/All-Documents" documents
rm -f documents/SkillReigns_SR-DOC-BK_Previews-v1.0.zip
cp -f "$SRC/skillreigns-ai-studio/server/skills/"*.md agent-skills/
echo "Synced from $SRC — review with git status, then commit."
