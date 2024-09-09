# vim mode config
# ---------------

# Activate vim mode.
bindkey -v

# Remove mode switching delay.
KEYTIMEOUT=1

## Change cursor shape for different vi modes.
#function zle-keymap-select {
#  if [[ ${KEYMAP} == vicmd ]] ||
#     [[ $1 = 'block' ]]; then
#    echo -ne '\e[1 q'
#
#  elif [[ ${KEYMAP} == main ]] ||
#       [[ ${KEYMAP} == viins ]] ||
#       [[ ${KEYMAP} = '' ]] ||
#       [[ $1 = 'beam' ]]; then
#    echo -ne '\e[5 q'
#  fi
#}
#zle -N zle-keymap-select
#
## Use beam shape cursor on startup.
#echo -ne '\e[5 q'
#
## Use beam shape cursor for each new prompt.
#_fix_cursor() {
#   echo -ne '\e[5 q'
#}
#
#precmd_functions+=(_fix_cursor)


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

zstyle ':completion:*' menu select
zstyle ':completion:*' list-prompt   ''
zstyle ':completion:*' select-prompt ''
autoload -Uz compinit
compinit
_comp_options+=(globdots) # Include hidden files
#zstyle ':completion:*' menu select

# Replace Emacs-style keybinds with VI-style keybinds
set -o vi

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.config/emacs/bin"

export EDITOR="vim"
export VISUAL="nvim"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Keybinds for zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
# unsetopt LIST_BEEP

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

# alias clear="clear && neofetch"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=#545454

ZSH_HIGHLIGHT_STYLES[default]=fg=cyan
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bright
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=blue
ZSH_HIGHLIGHT_STYLES[alias]=fg=blue
ZSH_HIGHLIGHT_STYLES[builtin]=fg=blue
ZSH_HIGHLIGHT_STYLES[function]=fg=cyan
ZSH_HIGHLIGHT_STYLES[command]=fg=blue
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=cyan
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=blue
ZSH_HIGHLIGHT_STYLES[path]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=none
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=cyan
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=cyan
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[assign]=fg=cyan

#neofetch --color_blocks off
#colorscript -r
#$HOME/Documents/fetch/fetch.sh
pcfetch
#pfetch
#echo " "
#neofetch

source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# Starship Prompt
eval "$(starship init zsh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
