#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Write the following line near the top of .bashrc
[[ $- == *i* ]] &&
  source "$HOME/.local/share/blesh/ble.sh" --rcfile "$HOME/.config/blesh/init.sh"

alias pacman="sudo pacman"
alias neofetch="neofetch --color_blocks off"
alias ls='ls --color=auto'
alias update="sudo pacman -Syu && flatpak update"
alias vim="nvim"

# Fix cursor shape to line after exiting Neovim
fix_cursor_shape() {
    printf '\033[2 q'   # Set cursor shape to line
}

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

# Write the following line at the bottom of .bashrc
[[ ${BLE_VERSION-} ]] && ble-attach
