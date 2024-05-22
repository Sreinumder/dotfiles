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
# exec-once=~/dotfiles/scripts/wallpaper.sh init &
# sleep 2

#load touchpad gestures
# fusuma &

# enables screen sharing
exec-once=dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
# pacman -Q | grep xdg-desktop-portal-

exec-once=alacritty -e "fcitx5; fusuma; sudo xremap ~/.config/xremap/config.yml"
# exec-once=fcitx5 &
sleep 2
