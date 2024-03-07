#!/bin/bash

# Path to your alacritty.toml file (replace with your actual path)
# kb_config="$HOME/dotfiles/hypr/conf/keyboard.conf"
kb_config="$HOME/dotfiles/hypr/conf/keyboard.conf"

# Check if alacritty.toml exists
if [ ! -f "$kb_config" ]; then
  notify-send -u normal "Error: couldnt find '$kb_config'"
  exit 1
fi

# Read the current opacity value
current_variant_line=$(grep 'kb_variant' "$kb_config")
# notify-send -u normal "$current_variant_line -"

# Toggle the opacity value
new_variant=$(if [[ "$current_variant_line" == "kb_variant = colemak_dh" ]]; then echo "kb_variant = "; 
notify-send -u normal "colemak_dh -> normal"
else 
  echo "kb_variant = colemak_dh";
  notify-send -u normal "normal -> colemak_dh"
fi)

# Update the opacity line in the config file
sed -i "s/$current_variant_line/$new_variant/" "$kb_config"
