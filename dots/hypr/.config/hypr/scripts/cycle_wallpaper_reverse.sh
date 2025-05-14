#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"
STATE_FILE="$HOME/.cache/current_wallpaper_index"
#MONITOR=$(hyprctl monitors | awk '/Monitor/ {getline; print $1; exit}')

# Ensure state file exists
[ ! -f "$STATE_FILE" ] && echo 0 > "$STATE_FILE"

# Get list of images and count
mapfile -t images < <(find -L "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | sort)
total=${#images[@]}

if [ $total -eq 0 ]; then
  echo "No images found in $WALLPAPER_DIR"
  exit 1
fi

# Get current index and calculate previous (backwards)
index=$(<"$STATE_FILE")
index=$(( (index - 1 + total) % total ))  # This ensures we wrap around to the end if we go negative
echo "$index" > "$STATE_FILE"

# Set wallpaper with Hyprpaper
pkill hyprpaper
hyprpaper & disown
sleep 0.1 # Give it a moment to start

hyprctl hyprpaper preload "${images[$index]}"
hyprctl hyprpaper wallpaper ",${images[$index]}"

hyprctl hyprpaper unload all # takes the image out of ram, but keeps it loaded


