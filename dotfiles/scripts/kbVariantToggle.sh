#!/bin/bash

# Path to your alacritty.toml file (replace with your actual path)
# kb_config="$HOME/dotfiles/hypr/conf/keyboard.conf"
kb_config="$HOME/dotfiles/hypr/conf/key.conf"

# Check if alacritty.toml exists
if [ ! -f "$kb_config" ]; then
  notify-send -u normal "Error: couldnt find '$kb_config'"
  exit 1
fi

# Read the current opacity value
current_variant=$(grep -oP '(?<=kb_variant = )\d+' "$kb_config")
# kbvariant = '$(grep 'kb_variant' "$kb_config")'
notify-send -u normal "$current_variant -"

# Toggle the opacity value
new_variant=$(if [[ "$current_variant" == "dvorak" ]]; then echo "intl"; else echo "dvorak"; fi)
# notify-send -u normal "$current_variant -> $new_variant"

# Update the opacity line in the config file
# sed -i "s/kb_variant = $current_variant/kb_variant = $new_variant/" "$kb_config"
