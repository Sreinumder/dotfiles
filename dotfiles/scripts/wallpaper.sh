#!/bin/bash

cacheWallpaper="$HOME/.cache/current_wallpaper/wallpaper"
cacheWallName="$HOME/.cache/current_wallpaper/wallName.txt"

# transition_type="wipe"
# transition_type="outer"
# transition_type="simple"
# transition_type="center"
# transition_type="left"
transition_type="grow"
# transition_type="random"

transition_duration=1.7
if [ ! -f $cacheWallpaper ] ;then
    cp "$HOME/wallpapers/default.png" $cacheWallpaper
fi

if [ ! -f $cacheWallName ] ;then
  touch $cacheWallName
  chmod go+rw $cacheWallName 
  echo "HOME/wallpapers/default.png" > $cacheWallName 
fi

# Create rasi file if not exists
case $1 in
    "init")
      sleep 1
      swww img $cacheWallpaper \
      --transition-type=$transition_type \
      --transition-duration=$transition_duration \
      --transition-pos "$(hyprctl cursorpos)" \
      --invert-y
      echo "$cacheWallpaper" > $cacheWallName 
      sleep 1
      notify-send "Wallpaper initialized"
    ;;

    # Select wallpaper with rofi
    "select")
      kitty -e lf $HOME/wallpaper/
    ;;
    
    # try selecting the given wallpaper if dir of image is given
    "/"* )
    if [ -f $1 ] ;then
      sleep 1
      swww img $1 \
      --transition-type=$transition_type \
      --transition-duration=$transition_duration \
      --transition-pos "$(hyprctl cursorpos)"\
      --invert-y
      echo "$1" > $cacheWallName 
      image=$(echo $1 | awk -F '/' '{print $NF}')
      rm -rf $cacheWallpaper
      cp $1 $cacheWallpaper
      sleep 1
      notify-send "Wallpaper set to $image"
    else 
      notify-send "failed to set wallpaper :("
    fi
    ;;

    # Randomly select wallpaper 
    *)
    counter=0
    #do while loop for selecting different wallpaper if randomly selected the same one twice
    while true; do 
      image=$(ls ~/wallpaper |sort -R |tail -n 1)
      imageDir="$HOME/wallpaper/$image"
      if [ "$(cat $cacheWallName)" != "$imageDir" ]; then # if ended up on same wallpaper then repeat selection
        break 
      fi
      counter=$((counter+1))
      echo $counter
      if [ $counter -eq 4 ]; then #exit if the counter reaches 4
        break
      fi
    done
      rm -rf $cacheWallpaper
      cp $imageDir $cacheWallpaper
      sleep 1
      swww img $imageDir \
      --transition-type=$transition_type \
      --transition-duration=$transition_duration \
      --transition-pos "$(hyprctl cursorpos)"\
      --invert-y
      echo "$imageDir" > $cacheWallName 
      sleep 1
      notify-send "Wallpaper set to $image"
    ;;
esac
