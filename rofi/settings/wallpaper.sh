#!/bin/bash

WALL_SRC="$HOME/Downloads"
CACHE_FILE="$HOME/.cache/current_wallpaper"

# Ensure daemon is alive
if ! pgrep -x "awww-daemon" > /dev/null; then
    awww-daemon &
    sleep 0.5
fi

# Pick the wallpaper
wallpaper=$(ls "$WALL_SRC" | grep -E ".jpg$|.png$|.jpeg$|.webp$" | rofi -dmenu -i -p "Select Wallpaper")

if [ -n "$wallpaper" ]; then
    FULL_PATH="$WALL_SRC/$wallpaper"

    # Save for reboot persistence
    echo "$FULL_PATH" > "$CACHE_FILE"

    # Apply via awww
    awww img "$FULL_PATH" --transition-type grow --transition-fps 60
fi
