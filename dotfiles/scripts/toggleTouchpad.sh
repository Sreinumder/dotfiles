​#!/bin/sh

# Set device to be toggled
HYPRLAND_DEVICE="elan-touchpad"
HYPRLAND_VARIABLE="device:$HYPRLAND_DEVICE:enabled"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR=/run/user/$(id -u)
fi

# Check if device is currently enabled (1 = enabled, 0 = disabled)
DEVICE="$(hyprctl getoption $HYPRLAND_VARIABLE | grep 'int: 1')"
echo $DEVICE
if [ -z "$DEVICE" ]; then
	# if the device is disabled, then enable
	notify-send -u normal "Enabling Touchpad"
	hyprctl keyword $HYPRLAND_VARIABLE true
	hyprctl keyword general:cursor_inactive_timeout 12
else
	# if the device is enabled, then disable
	notify-send -u normal "Disabling Touchpad"
	hyprctl keyword $HYPRLAND_VARIABLE false
	hyprctl keyword general:cursor_inactive_timeout 1
fi
