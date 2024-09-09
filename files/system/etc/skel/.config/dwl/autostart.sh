#!/usr/bin/env bash

emacs --daemon &

waybar -c $HOME/.config/waybar/bubbles/config-dwl-fedora -s $HOME/.config/waybar/bubbles/style-fedora.css &

swaybg -m fill -i $HOME/.config/dwl/wall.jpg &

eww open conky-powerline &

nm-applet &
