#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SOURCE_DIR="$REPO_ROOT/skills/xizong-study-review"
TARGET_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"
TARGET_DIR="$TARGET_ROOT/xizong-study-review"

if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Error: skill source folder not found: $SOURCE_DIR" >&2
  exit 1
fi

mkdir -p "$TARGET_ROOT"
rm -rf "$TARGET_DIR"
cp -R "$SOURCE_DIR" "$TARGET_DIR"

echo "Installed xizong-study-review to:"
echo "$TARGET_DIR"
echo
echo "Restart Codex, then try:"
echo "Use the xizong-study-review skill. Please review my 西综 note as a professional learning tutor."
