#!/usr/bin/env bash

# Script to Set up Static workspaces via minimised foot terminals
# Only the first example will be commented as the rest are the same for the other workspaces

# Enabling the YDOTOOL server

# Setting up Bemenu
# export BEMENU_OPTS=" --hb '#467b96' --hf '#dfdfdf' --tb '#467b96' --tf '#dfdfdf' -H 29 --ch 18 --cw 1 --fixed-height --fn 'Hack' "

# # Prompt for the password using bemenu
# # PASSWORD=$(bemenu -p "Enter root password:" < /dev/null)
# PASSWORD=$(cat ~/.config/autostart/pass.txt)
#
# # Check if a password was entered
# if [ -z "$PASSWORD" ]; then
#     echo "No password entered."
#     exit 1
# fi

# Run the prompt command with the password to start ydotoold
ydotoold &
foot --server &

sleep 10

# For Workspace 1:
# Press Down Super (125), 1 (2), then release 1 (2) and release Super (125)
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 2:1 2:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
# Press and release keybind Shift+A to minimise the terminal
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 2:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 3:1 3:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 3:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 4:1 4:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 4:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 5:1 5:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 5:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 6:1 6:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 6:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 7:1 7:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 7:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 8:1 8:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 8:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 9:1 9:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# For Workspace 9:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 10:1 10:0 125:0

footclient --override key-bindings.minimize=Shift+A &
sleep 0.1
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 42:1 30:1 30:0 42:0

# Return to Workspace 1:
YDOTOOL_SOCKET=/run/user/1000/.ydotool_socket ydotool key 125:1 2:1 2:0 125:0
