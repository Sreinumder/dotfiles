#!/bin/bash
touchpadConf="$HOME/dotfiles/hypr/conf/touchpad.conf"

if [ ! -f "$touchpadConf" ]; then
  notify-send -u normal "Error: touchpad.conf not found at '$toucpadConf'"
  exit 1
fi

currentState=$(grep -P 'enabled =' "$touchpadConf" | awk '{print $NF}')
if [[ "$currentState" == "true" ]]; then 
  newState="false"; 
  notify-send -u normal "touchpad disabled"
	hyprctl keyword general:cursor_inactive_timeout 1
else 
  newState="true"; 
  notify-send -u normal "touchpad enabled"
fi

sed -i "s/enabled = $currentState/enabled = $newState/" "$touchpadConf"
