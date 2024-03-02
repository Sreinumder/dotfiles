#!/bin/bash
# My screen resolution
# xrandr --rate 120

# For Virtual Machine
# xrandr --output Virtual-1 --mode 1920x1080

# Keyboard layout
# setxkbmap

# Load picom
# picom &

# Load power manager
xfce4-power-manager &

# Load notification service
dunst &

# Setup Wallpaper and update colors
~/dotfiles/scripts/wallpaper.sh init &

fcitx -d &

# enables screen sharing
exec-once=dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
# pacman -Q | grep xdg-desktop-portal-

