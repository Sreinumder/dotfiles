#!/bin/bash
# ----------------------------------------------------- 
# Get keybindings location based on variation
# ----------------------------------------------------- 
config_file=$(cat ~/dotfiles/hypr/conf/keybinding.conf)
config_file=${config_file/source = ~/}
config_file=${config_file/source=~/}

config_file="/home/$USER$config_file"
echo "Reading from: $config_file"

keybinds=$(grep -oP '(?<=bind = ).*' $config_file)
keybinds=$(echo "$keybinds" | sed 's/$mainMod/SUPER/g'|  sed 's/,\([^,]*\)$/ = \1/' | sed 's/, exec//g' | sed 's/^,//g')

# ----------------------------------------------------- 
# Show keybindings in rofi
# ----------------------------------------------------- 
rofi -dmenu -i -replace -p "Keybinds" <<< "$keybinds"
