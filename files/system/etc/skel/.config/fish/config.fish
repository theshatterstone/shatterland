if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.config/emacs/bin"

set fish_greeting ""

alias apt="sudo apt"
alias dnf="sudo dnf"
alias zypper="sudo zypper"
alias pacman="paru"
alias neofetch="neofetch --color_blocks off"
alias ls="ls -lah"
alias update="sudo pacman -Syyu && flatpak update"
alias vim="nvim"

alias nix-conf="sudo nvim /etc/nixos/configuration.nix"
alias rebuild-switch="sudo nixos-rebuild switch"
alias nixos-update="sudo nixos-rebuild switch --upgrade"

alias fish-conf="vim $HOME/.config/fish/config.fish"
alias hypr-conf="vim $HOME/.config/hypr/hyprland.conf"
alias river-conf="vim $HOME/.config/river/init"
alias awesome-conf="vim $HOME/.config/awesome/rc.lua"
alias qtile-conf="vim $HOME/.config/qtile/config.py"
alias sway-conf="vim $HOME/.config/sway/config"

echo ''
neofetch --color_blocks off
#colorscript -r
#$HOME/Documents/fetch/fetch.sh
#pcfetch
#pfetch

#
# POSIX COMPAT STUFF
#
# This allows me to still use POSIX expansions in fish

# !!
function repeat_last_command
    eval (history | head -n1)
end

abbr --add '!!' 'repeat_last_command'

function last_argument
    set last_cmd (history | head -n1)
    eval echo (string split ' ' -- $last_cmd)[-1]
end

# !$
abbr --add '!$' 'last_argument'

function all_arguments
    set last_cmd (history | head -n1)
    eval echo (string split ' ' -- $last_cmd)[1..-1]
end

abbr --add '!*' 'all_arguments'

# !^
function first_argument
    set last_cmd (history | head -n1)
    eval echo (string split ' ' -- $last_cmd)[2]
end

abbr --add '!^' 'first_argument'

# !n 
function repeat_command
    if test (count $argv) -eq 1
        eval (history | head -n $argv[1] | tail -n 1)
    else
        echo "Usage: !n (where n is the command number from history)"
    end
end

abbr --add '!' 'repeat_command'

# Load starship prompt
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#if test -f /home/shatterstone/anaconda3/bin/conda
#    eval /home/shatterstone/anaconda3/bin/conda "shell.fish" "hook" $argv | source
#else
#    if test -f "/home/shatterstone/anaconda3/etc/fish/conf.d/conda.fish"
#        . "/home/shatterstone/anaconda3/etc/fish/conf.d/conda.fish"
#    else
#        set -x PATH "/home/shatterstone/anaconda3/bin" $PATH
#    end
#end
# <<< conda initialize <<<

