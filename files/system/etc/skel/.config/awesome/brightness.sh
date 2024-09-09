#!/usr/bin/env bash

BR_MAX=$(cat /sys/class/backlight/amdgpu_bl0/max_brightness)

while true
do
BR_NUM=$(cat /sys/class/backlight/amdgpu_bl0/actual_brightness)
BR_CENT=$(($BR_NUM * 100 / $BR_MAX))

echo "󱄄    $BR_CENT%" > "$HOME/.config/awesome/brightness"
#echo "$BR_CENT %"
sleep 1
done
