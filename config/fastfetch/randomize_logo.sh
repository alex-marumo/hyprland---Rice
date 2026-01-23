#!/bin/bash
LOGO_DIR="$HOME/.config/fastfetch/anime_images"
SYMLINK="$HOME/.config/fastfetch/current-logo.png"

# Select random file and force-update symlink (-f avoids the rm step)
FILES=("$LOGO_DIR"/*)
SELECTED="${FILES[RANDOM % ${#FILES[@]}]}"

ln -sf "$SELECTED" "$SYMLINK"
