#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Write the following line near the top of .bashrc
[[ $- == *i* ]] &&
  source "$HOME/.local/share/blesh/ble.sh" --rcfile "$HOME/.config/blesh/init.sh"

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi
export PATH=$PATH:$GOPATH/bin
# Completions
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Set history to 1 billion
export HISTSIZE=999999999
export HISTFILESIZE=999999999

# Ensure history from all sessions is saved
shopt -s histappend

# History Control: Ignore duplicates
export HISTCONTROL=ignoredups

# Editor
export VISUAL=nvim
export EDITOR=vim

alias apt="sudo apt"
alias dnf="sudo dnf"
alias zypper="sudo zypper"
alias pacman="paru"
alias neofetch="neofetch --color_blocks off"
alias ls="ls -lah"
alias update="sudo pacman -Syyu && flatpak update"
alias vim="nvim"

alias nix-conf="nvim $HOME/.config/nixos/configuration.nix"
alias rebuild-switch="sudo nixos-rebuild switch"
alias nixos-update="sudo nixos-rebuild switch --upgrade"

alias fish-conf="vim $HOME/.config/fish/config.fish"
alias hypr-conf="vim $HOME/.config/hypr/hyprland.conf"
alias river-conf="vim $HOME/.config/river/init"
alias awesome-conf="vim $HOME/.config/awesome/rc.lua"
alias qtile-conf="vim $HOME/.config/qtile/config.py"
alias sway-conf="vim $HOME/.config/sway/config"

#neofetch
#colorscript -r
#./Documents/fetch/fetch.sh
pcfetch
#PS1="\[$(tput bold)\]\[\033[38;5;249m\]\w\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;25m\]❯\[$(tput sgr0)\] \[$(tput sgr0)\]"
#PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#Default prompt
#PS1='[\u@\h \W]\$ '

# Starship Prompt
#eval "$(starship init bash)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Write the following line at the bottom of .bashrc
[[ ${BLE_VERSION-} ]] && ble-attach

[ -f "/home/shatterstone/.ghcup/env" ] && . "/home/shatterstone/.ghcup/env" # ghcup-env
