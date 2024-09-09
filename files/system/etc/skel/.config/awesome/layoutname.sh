#!/usr/bin/env bash
while true
do
LNAME=$(awesome-client 'return mouse.screen.selected_tag.layout.name' | awk -F "\"" '{print$2}')
echo "$LNAME" > "$HOME/.config/awesome/layoutname"
echo "$LNAME"
sleep 1
done
