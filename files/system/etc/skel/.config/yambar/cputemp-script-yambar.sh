#!/usr/bin/env bash

while true; do

	TEMP=$(paste <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/' | cut -f2 -d " ")
	echo "temp|string|$TEMP"
	echo ""
	sleep 3

done

