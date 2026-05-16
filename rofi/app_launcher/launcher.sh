#!/bin/bash

# Define paths
SETTINGS_SCRIPT="$HOME/.config/rice/rofi/settings/settings.sh"

# Custom list of options
options="Search Apps\nSystem Settings\nQuit"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Launcher")

case $chosen in
    "Search Apps")
        rofi -show drun
        ;;
    "System Settings")
        bash "$SETTINGS_SCRIPT"
        ;;
    "Quit")
        exit 0
        ;;
esac
