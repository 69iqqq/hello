#!/bin/bash

# Check if Waybar is running
if pgrep -x "waybar" >/dev/null; then
  # If Waybar is running, kill the process
  echo "Waybar is running. Disabling..."
  pkill -x "waybar"
else
  # If Waybar is not running, start it
  echo "Waybar is not running. Enabling..."
  waybar &
  # waybar -c ~/.config/waybar/configs/config -s ~/.config/waybar/styling/style.css &
fi

# Check if swaync is running
if pgrep -x "swaync" >/dev/null; then
  # If swaync is running, kill the process
  echo "swaync is running. Disabling..."
  pkill -x "swaync"
else
  # If swaync is not running, start it
  echo "swaync is not running. Enabling..."
  swaync &
fi
