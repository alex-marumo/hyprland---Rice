#!/bin/bash

# Directory with your logos
LOGO_DIR="$HOME/.config/fastfetch/anime_images"

# Pick a random file from the directory
FILES=("$LOGO_DIR"/*)
RANDOM_FILE="${FILES[RANDOM % ${#FILES[@]}]}"

# Symlink target
SYMLINK="$HOME/.config/fastfetch/current-logo.png"

# Remove old symlink if exists
[ -L "$SYMLINK" ] && rm "$SYMLINK"

# Create new symlink to the random file
ln -s "$RANDOM_FILE" "$SYMLINK"

echo "Set logo to $RANDOM_FILE"

