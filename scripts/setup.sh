#!/bin/bash
# setup.sh - symlink your configs to home with stow

for dir in .config/*; do
  stow -v -t "$HOME" "$(basename "$dir")"
done

echo "Configs stowed. Ready to rock your Hyprland rice."
