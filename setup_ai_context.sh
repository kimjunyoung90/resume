#!/usr/bin/env bash
set -e

echo "🔧 Unifying AI coding agent guidelines"

AGENTS="AGENTS.md"

# --------------------------------------------------
# 1. AGENTS.md 생성 (없을 경우)
# --------------------------------------------------
if [ ! -f "$AGENTS" ]; then
  echo "📄 Creating AGENTS.md"
  cat <<EOF > "$AGENTS"
# AI Coding Agent Guidelines

## Project Overview
- Describe the project purpose.

## Coding Conventions
- Language / Framework
- Style & formatting
- Naming rules

## Architecture
- Key modules
- Design constraints

## Do / Don't
- Do:
- Don't:
EOF
else
  echo "✅ AGENTS.md already exists"
fi

# --------------------------------------------------
# 2. Claude Code (CLAUDE.md → AGENTS.md)
# --------------------------------------------------
if [ -e "CLAUDE.md" ] && [ ! -L "CLAUDE.md" ]; then
  echo "📦 Backup CLAUDE.md → CLAUDE.md.bak"
  mv CLAUDE.md CLAUDE.md.bak
fi

if [ ! -L "CLAUDE.md" ]; then
  ln -s AGENTS.md CLAUDE.md
  echo "🔗 Linked CLAUDE.md → AGENTS.md"
else
  echo "✅ CLAUDE.md already linked"
fi

grep -qxF "CLAUDE.md" .gitignore 2>/dev/null || echo "CLAUDE.md" >> .gitignore

# --------------------------------------------------
# 3. Codex
# --------------------------------------------------
echo "✅ Codex uses AGENTS.md by default"

# --------------------------------------------------
# 4. Gemini (.gemini/settings.json)
# --------------------------------------------------
mkdir -p .gemini

cat <<EOF > .gemini/settings.json
{
  "contextFileName": "AGENTS.md"
}
EOF

echo "⚙️ Gemini settings updated"

# (선택) GEMINI.md 호환용 링크
if [ -e "GEMINI.md" ] && [ ! -L "GEMINI.md" ]; then
  mv GEMINI.md GEMINI.md.bak
fi

if [ ! -L "GEMINI.md" ]; then
  ln -s AGENTS.md GEMINI.md
fi

grep -qxF "GEMINI.md" .gitignore 2>/dev/null || echo "GEMINI.md" >> .gitignore

echo "🎉 All AI coding agents now reference AGENTS.md"
