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

alias fman="compgen -c | fzf | xargs man"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
# Define Editor
export EDITOR=nvim
export IMAGEVIEWER=nsxiv
export MYVIMRC=~/.config/nvim/init.lua
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx

# export KITTY_CONFIG_DIRECTORY="~/dotfiles/kitty/kitty.conf"
eval "$(zoxide init bash)"
alias sudo='sudo '

alias py=python
alias py3=python3
alias pyenv='python -m venv env; source env/bin/activate; pip install -r requirements.txt'
alias pyact='source env/bin/activate;' 
# -----------------------------------------------------
# DOTFILE version maintenance
# -----------------------------------------------------
alias lazydot='lazygit -git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dfi='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias dfisall='dfis stage'
alias dfia='dfi add'
alias dfial='dfia -A ~/.config/qutebrowser/; dfia -A ~/.config/yazi; dfia -A ~/.config/alacritty; dfia -A ~/.config/kitty; dfia -A ~/.config/dunst; dfia -A ~/.config/firefox; dfia -A ~/.config/hypr; dfia -A ~/.config/lf; dfia -A ~/.config/nvim; dfia -A ~/.config/rofi; dfia -A ~/.config/waybar; dfia -A ~/dotfiles; dfia -A ~/.config/xremap; '
alias dfic='dfi commit -m '
alias dfis='dfi status'
alias dfil='dfi log'
alias dfip='dfi push'
alias md='mangadesk'
alias n='nvim'
alias XR='sudo xremap ~/.config/xremap/config.yml'

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias yy='youtube-viewer -A'
alias ym='youtube-viewer -n -a --category=music'
alias w='~/dotfiles/scripts/./wallpaper.sh'
alias l='lf'
alias fixsc='~/dotfiles/scripts/./screenShareEnable.sh'
alias rm='rmtrash'
alias rmls='trash-list'
alias rmrec='trash-restore'
alias rmrm='trash-rm'
alias rmm='rm'
alias rmdir='rmdirtrash'
alias rmdirr='rmdir'
alias c='clear'
alias b='btop'
alias nf='neofetch'
alias pf='pfetch'
alias shutdown='systemctl poweroff'
alias v='vim'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias od='~/private/onedrive.sh'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"
alias cleanup='~/dotfiles/scripts/cleanup.sh'
alias ls="eza --icons=always"
alias lls="eza"
alias ll="eza -al"
alias swf="( swww-daemon -f xrgb & )"
alias swr="kill $(ps aux | grep 'swww-daemon' | awk '{print $2}');( swww-daemon -f xrgb & );( fcitx5 & );"
alias swrr="kill $(ps aux | grep 'swww-daemon' | awk '{print $2}');( swww-daemon -f xrgb & );( fcitx5 & );( waybar & );( chromium & );"

# alias lf=lfrun
# alias lff=lf
alias tcalc=taschenrechner


# if command -v python3 > /dev/null; then
# 	export PATH= 'python3 -n site --user-base'/bin:$PATH
# fi
alias hsql="harlequin"
alias hsqlt="harlequin -a sqlite"

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
# EDIT CONFIG FILES
# -----------------------------------------------------

alias confb='$EDITOR ~/dotfiles/.bashrc'
alias confa='$EDITOR ~/dotfiles/autostart.sh'
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
# alias setkb='setxkbmap de;echo "Keyboard set back to de."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------

# Qtile
# alias res1='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 120'
# alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'

export PATH="/usr/lib/ccache/bin/:$PATH"

function yaz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
# cat ~/.cache/wal/sequences

export PATH="/home/rise/.local/bin/:$PATH"  

PATH="/home/rise/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/rise/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/rise/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/rise/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/rise/perl5"; export PERL_MM_OPT;

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=.config/nvim-Lazyman/.lazymanrc
[ -f ~/.config/nvim-Lazyman/.lazymanrc ] && source ~/.config/nvim-Lazyman/.lazymanrc
# Source the Lazyman .nvimsbind for nvims key binding
# shellcheck source=.config/nvim-Lazyman/.nvimsbind
[ -f ~/.config/nvim-Lazyman/.nvimsbind ] && source ~/.config/nvim-Lazyman/.nvimsbind
# Bob neovim version manager path
[ -d ${HOME}/.local/share/bob/nvim-bin ] && {
  export PATH="${HOME}/.local/share/bob/nvim-bin${PATH:+:${PATH}}"
}
