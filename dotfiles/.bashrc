#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#
# by Rise gosai
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '


# Define Editor
export EDITOR=nvim
export IMAGEVIEWER=nsxiv
# -----------------------------------------------------
# DOTFILE version maintenance
# -----------------------------------------------------
alias dfi='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias dfisall='dfis stage'
alias dfia='dfi add'
alias dfial='dfia -A ~/.config/yazi; dfia -A ~/.config/lyrics-in-terminal; dfia -A ~/.config/alacritty; dfia -A ~/.config/kitty; dfia -A ~/.config/btop; dfia -A ~/.config/dunst; dfia -A ~/.config/firefox; dfia -A ~/.config/hypr; dfia -A ~/.config/lf; dfia -A ~/.config/nvim; dfia -A ~/.config/rofi; dfia -A ~/.config/lyrics-in-terminal; dfia -A ~/.config/waybar; dfia -A ~/dotfiles; '
alias dfic='dfi commit -m '
alias dfis='dfi status'
alias dfil='dfi log'
alias dfip='dfi push'
# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias zel='zellij'
alias zells='zellij list-sessions'
alias zelas='zellij attach'
alias w='~/dotfiles/scripts/./wallpaper.sh'
alias l='lf'
alias fixsc='~/dotfiles/scripts/./screenShareEnable.sh'
alias rm='rmtrash'
alias rmm='rm'
alias rmdir='rmdirtrash'
alias c='clear'
alias b='btop'
alias nf='neofetch'
alias pf='pfetch'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias od='~/private/onedrive.sh'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"
alias cleanup='~/dotfiles/scripts/cleanup.sh'
alias ls="eza --icons=always"
alias lls="eza"
alias ll="eza -al"
# alias lf=lfrun
# alias lff=lf
alias tcalc=taschenrechner


# if command -v python3 > /dev/null; then
# 	export PATH= 'python3 -n site --user-base'/bin:$PATH
# fi

# -----------------------------------------------------
# Window Managers
# -----------------------------------------------------
# alias Qtile='startx'
# Hyprland with Hyprland

# -----------------------------------------------------
# GIT
# -----------------------------------------------------
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"

# -----------------------------------------------------
# SCRIPTS
# -----------------------------------------------------

alias gr='python ~/dotfiles/scripts/growthrate.py'
alias ChatGPT='python ~/mychatgpt/mychatgpt.py'
alias chat='python ~/mychatgpt/mychatgpt.py'
alias ascii='~/dotfiles/scripts/figlet.sh'

# -----------------------------------------------------
# VIRTUAL MACHINE
# -----------------------------------------------------

# alias vm='~/private/launchvm.sh'
# alias lg='~/dotfiles/scripts/looking-glass.sh'
# alias vmstart='virsh --connect qemu:///system start win11'
# alias vmstop='virsh --connect qemu:///system destroy win11'

# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------

alias confb='$EDITOR ~/dotfiles/.bashrc'
alias conf='$EDITOR ~/.config'
alias confl='$EDITOR ~/.config/lf/lfrc'
alias confn='$EDITOR ~/.config/nvim'
alias confz='$EDITOR ~/.config/zellij/config.kdl'

# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------

alias notes='$EDITOR ~/notes/'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

# alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap de;echo "Keyboard set back to de."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------

# Qtile
# alias res1='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 120'
# alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'

export PATH="/usr/lib/ccache/bin/:$PATH"

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
# cat ~/.cache/wal/sequences

export PATH="/home/rise/.local/bin/:$PATH"  
