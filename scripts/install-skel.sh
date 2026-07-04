#!/usr/bin/env bash
set -e

echo "Installing default configuration to /etc/skel..."

CONFIGS=(
    hypr
    waybar
    kitty
    mako
    wofi
    hyprlock
    hypridle
)

mkdir -p /etc/skel/.config

for cfg in "${CONFIGS[@]}"; do
    rm -rf "/etc/skel/.config/$cfg"
    cp -a "configs/$cfg" "/etc/skel/.config/"
done

mkdir -p /etc/skel/Pictures/Wallpapers
cp -a configs/wallpapers/. /etc/skel/Pictures/Wallpapers/

echo "✓ Future users will automatically receive the Hyprland configuration."
