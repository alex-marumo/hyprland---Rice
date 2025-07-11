#!/bin/bash

# Path to your anime images folder
IMAGE_DIR="$HOME/.config/fastfetch/anime_images"

# Pick a random image
RANDOM_IMAGE=$(find "$IMAGE_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Generate a new Fastfetch config with the selected image
CONFIG_PATH="$HOME/.config/fastfetch/config-compact.jsonc"

cat > "$CONFIG_PATH" <<EOF
{
    "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
    "logo": {
    "source": "$RANDOM_IMAGE",
    "type": "kitty-direct",
    "width": 22,
    "height": 11,
    "padding": {
    "top": 3,
    "left": 10
  },
    "display": {
        "separator": " -> "
    },
    "modules": [
        "break",
        {
            "type": "title",
            "keyWidth": 10,
			"format": "         {6}{7}{8}"
        },
        {
            "type": "custom",
            "format": " ─────────────────────────── "
        },
        // ─── Solo Leveling Monarch Module ─────────────────────────────
        "break",
        {
            "type": "custom",
            "key": "☯ MONARCH OF FRACTURED REALITIES",
            "keyColor": "red",
            "format": "\u001b[31;1mS.H.X.D.O.W\u001b[0m"
            },

        // ─── System Category ─────────────────────────────────────────
        "break",
        {
            "type": "os",
            "key": " DISTRO",
            "keyColor": "yellow"
        },
        {
            "type": "kernel",
            "key": "│ ├ KERNEL",
            "keyColor": "yellow"
        },
        {
           "type": "packages",
           "key": "│ └󰏖 PKGS",
           "keyColor": "yellow"
        },
        {
          "type": "shell",
          "key": " SHELL",
          "keyColor": "yellow"
        },

        // ─── DE/WM & UI Category ─────────────────────────────────────
        "break",
        {
          "type": "wm",
          "key": " WM",
          "keyColor": "blue"
        },
        {
          "type": "wmtheme",
          "key": "│ ├󰉼 THEME",
          "keyColor": "blue"
        },
        {
          "type": "icons",
          "key": "│ └󰀻 ICONS",
          "keyColor": "blue"
        },
        {
          "type": "terminal",
          "key": " TERM", 
          "keyColor": "blue"
        },

        // ─── Hardware Category ────────────────────────────────────────
        "break",
        {
          "type": "host",
          "key": "󰌢 HOST",
          "keyColor": "green"
        },
        {
          "type": "cpu",
          "key": "│ ├󰻠 CPU",
          "keyColor": "green"
        },
        {
          "type": "gpu",
          "key": "│ └󰻑 GPU",
          "keyColor": "green"
        },
        {
          "type": "memory",
          "key": "󰾆 RAM",
          "keyColor": "green"
        },
        {
          "type": "swap",
          "key": " SWAP",
          "keyColor": "green"
        },
        {
          "type": "uptime",
          "key": " UPTIME",
          "keyColor": "green"
        },

        // ─── Media & Audio Category ───────────────────────────────────
        "break",
        {
          "type": "sound",
          "key": " AUDIO",
          "format": "{2}",
          "keyColor": "magenta"
        },
        {
          "type": "player",
          "key": "󰥠 PLAYER",
          "keyColor": "magenta"
        },

        // ─── Cool Progress Bar ───────────────────────────────────────
        "break",
        {
          "type": "custom",
          "key": " ",
          "format": "\u001b[38;5;197m[LONG MAY THE SHADOWS REFLECT🌑...]"
	},
        {
            "type": "custom",
            "format": " ─────────────────────────── "
        },
        {
            "type": "custom",
            "format": "   \u001b[31m  \u001b[32m  \u001b[33m  \u001b[34m  \u001b[35m  \u001b[36m  \u001b[37m  \u001b[90m "
        },
	"break"
    ]
}
EOF

# Run Fastfetch
fastfetch
