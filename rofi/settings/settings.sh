#!/bin/bash

# Define the directory where your scripts live
SCRIPT_DIR="$HOME/.config/rice/rofi/settings"

# Main Menu Options
options="Set Wallpaper\nQuit"
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Settings")

case $chosen in
    "Set Wallpaper")
        # Call the standalone wallpaper logic
        bash "$SCRIPT_DIR/wallpaper.sh"
        ;;
    "Quit")
        exit 0
        ;;
esac
