#!/usr/bin/env bash

# status=$(eww get EWW_BATTERY | jq -r '.BAT1.status')
status=$(cat /sys/class/power_supply/BAT1/status)

if [ "$status" = "Charging" ]; then
    echo "󱐋"
else
    echo ""
fi
