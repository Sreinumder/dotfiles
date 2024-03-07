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
# current_variant=$(awk -F= '/kb_variant/ {print $2}') < "$kb_config"
# kbvariant = '$(grep 'kb_variant' "$kb_config")'
# notify-send -u normal "$current_variant_line -"

# Toggle the opacity value
new_variant=$(if [[ "$current_variant_line" == "kb_variant = dvorak" ]]; then echo "kb_variant = "; 
notify-send -u normal "dv -> normal"
else 
  echo "kb_variant = dvorak"; 
  notify-send -u normal "normal -> dv"
fi)

# Update the opacity line in the config file
sed -i "s/$current_variant_line/$new_variant/" "$kb_config"
