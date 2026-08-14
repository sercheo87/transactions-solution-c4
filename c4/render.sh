#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

MMDC="${MMDC:-}"

for candidate in \
  "${MMDC:-}" \
  "$PROJECT_ROOT/node_modules/.bin/mmdc" \
  "$SCRIPT_DIR/node_modules/.bin/mmdc" \
  "$(command -v mmdc 2>/dev/null || true)"
do
  if [[ -n "$candidate" && -x "$candidate" ]]; then
    MMDC="$candidate"
    break
  fi
done

if [[ -z "$MMDC" ]]; then
  echo "mmdc (mermaid-cli) not found. Trying npx..."
  MMDC="npx --yes @mermaid-js/mermaid-cli"
fi

SCALE="${SCALE:-2}"
BACKGROUND="${BACKGROUND:-white}"

cd "$PROJECT_ROOT"

for mmd in "$SCRIPT_DIR"/*.mmd; do
  name="$(basename "$mmd" .mmd)"
  out="$SCRIPT_DIR/$name.png"
  echo "Rendering $name..."
  $MMDC -i "$mmd" -o "$out" -b "$BACKGROUND" -s "$SCALE"
done

echo "Done. Images written to $SCRIPT_DIR"
