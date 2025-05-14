#!/bin/bash

mkdir -p ~/Pictures/Screenshots/

filename=$(date +%Y-%m-%d-%H-%M-%S).png
filepath="${HOME}/Pictures/Screenshots/$filename"

slurp | grim -g - "$filepath"
notify-send "Screenshot saved as $filename"
wl-copy < "$filepath"

# slurp | grim -g - ~/Pictures/Screenshots/$(date +%Y-%m-%d-%H-%M-%S).png
