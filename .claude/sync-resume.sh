#!/bin/bash

INPUT=$(cat)

if command -v jq &>/dev/null; then
  FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty' 2>/dev/null)
else
  FILE_PATH=$(echo "$INPUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('tool_input',{}).get('file_path',''))" 2>/dev/null)
fi

if [[ "$FILE_PATH" != *"resume.md" ]]; then
  exit 0
fi

SKILL=$(cat "$(dirname "$0")/commands/sync-resume.md")

claude --print "$SKILL" --allowedTools "Read,Edit" 2>/dev/null

exit 0
