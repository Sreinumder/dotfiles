#!/bin/bash

# Path to your alacritty.toml file (replace with your actual path)
alacritty_config="$HOME/dotfiles/alacritty/alacritty.toml"

# Check if alacritty.toml exists
if [ ! -f "$alacritty_config" ]; then
  echo "Error: alacritty.toml not found at '$alacritty_config'"
  exit 1
fi

# Read the current opacity value
current_opacity=$(grep -oP '(?<=opacity = )\d+\.\d+' "$alacritty_config")

# Toggle the opacity value
new_opacity=$(if [[ "$current_opacity" == "0.85" ]]; then echo "1.00"; else echo "0.85"; fi)
echo "$current_opacity -> $new_opacity"

# Update the opacity line in the config file
sed -i "s/opacity = $current_opacity/opacity = $new_opacity/" "$alacritty_config"

