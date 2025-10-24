#!/bin/bash
SECOND_MON="eDP-2"

if hyprctl monitors | grep -q "$SECOND_MON"; then
    hyprctl keyword monitor "$SECOND_MON, disable"
    notify-send "Second screen disabled"
else
    hyprctl keyword monitor "$SECOND_MON, 1920x1200@60, auto-down, 1.2"
    notify-send "Second screen enabled"
fi

