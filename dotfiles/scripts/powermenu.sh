#!/bin/bash
echo $XDG_SESSION_TYPE
if [ $XDG_SESSION_TYPE == "wayland" ]; then
	lockapp=swaylock
else
	lockapp=slock
fi
echo "Using $lockapp to lock the screen."

option1="  logout"
option2="  reboot"
option3="  power off"

options="$option1\n"
options="$options$option2\n"
options="$options$option3\n$option4"

choice=$(echo -e "$options" | rofi -dmenu -replace -i -no-show-icons -l 3 -width 30 -p "Powermenu") 

case $choice in
	$option1)
		qtile cmd-obj -o cmd -f shutdown ;;
	$option2)
		systemctl reboot ;;
	$option3)
		systemctl poweroff ;;
esac

