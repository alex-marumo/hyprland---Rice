#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

linkdir() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  rm -rf "$dst"
  ln -s "$src" "$dst"
  echo "linked $dst -> $src"
}

linkdir "$ROOT/config/hypr"   "$HOME/.config/hypr"
linkdir "$ROOT/config/waybar" "$HOME/.config/waybar"
linkdir "$ROOT/config/rofi"   "$HOME/.config/rofi"
linkdir "$ROOT/config/ml4w"   "$HOME/.config/ml4w"

echo ""
echo "greetd/tuigreet:"
echo "  copy $ROOT/config/greetd/config.toml -> /etc/greetd/config.toml (sudo)"
