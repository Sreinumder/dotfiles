#!/bin/bash
# source .install/colors.sh
# source .install/installYay.sh
# echo "<spacebar> for selecting hjkl for up down"
# choice=$(gum choose --no-limit --cursor-prefix "( ) " --selected-prefix "(x) " --unselected-prefix "( ) " "Hyprland" "Qtile")
echo "you chose $choice"
#after fresh arch installation
# pacman -Syuu # update all packages
# pacman -S sudo git neovim # update 
# echo -n "set username:"
# read username
# # useradd -m $username
# echo -n "set password:"
# read password
# setpasswd $password
# echo "nice to meet you~ $username"

packagesPacman=(
    "pacman-contrib"
    "vim" #vim lol
    "bluez" #bluetooth thing
    "bluez-utils"
    "neovim"
    "wget" #GNU Wget is a computer program that retrieves content from web servers. 
    "unzip" 
    "alacritty" #fast terminal 
    "rofi" #dmenu like binary finder and runner + anything that involves selection
    "firefox" 
    "dunst" #A highly configurable and lightweight notification daemon.
    "starship" #nice minimal shell
    "neovim" #greatest text editor
    "mpv" #fav multimedia player
    "freerdp" #access to your server machine https://youtu.be/KBJPS-6olxM?si=reAkP_hS_2PMvy7v&t=396
    "xfce4-power-manager" 
    "thunar" #gui file explorer
    # "mousepad"
    "noto-fonts" 
    "ttf-font-awesome"
    "otf-font-awesome" 
    "ttf-fira-sans" 
    "ttf-fira-code" 
    "ttf-firacode-nerd" 
    "figlet" 
    # "vlc" 
    "eza" #ls alternative
    "python-pip" #python package manager
    "python-psutil" 
    "python-rich" 
    "python-click" 
    "pavucontrol" #pulseaudio gui controller 
    "tumbler" #Thumbnail service implementing the thumbnail management D-Bus specification
    "xautolock" #fires up programsin case of user inactively under X
    "blueman" #GTK+ Bluetooth Manager
    "papirus-icon-theme"
    "polkit-gnome" #gnome authenicator
    # "qalculate-gtk"
    "brightnessctl" #brightnessctl thing
    "gum" #command line multi option chooser
    "man-pages"
    "xdg-desktop-portal" 
    "nm-connection-editor"
    "gvfs"
    "xdg-user-dirs"
    "networkmanager"
    "network-manager-applet"
    "xclip"
    "zathura"
    "zathura-pdf-poppler"
);

generalPackagesYay=(
    "pfetch" 
    "trizen"
    "pacseek"
    "brillo"
    "sddm-git"
    "sddm-sugar-candy-git"
);

packagesPacman=(
    "xdg-desktop-portal-hyprland" 
    "waybar" 
    "grim" 
    "slurp"
    "swappy"
    "cliphist"
);

packagesYay=(
    "swww" 
);
