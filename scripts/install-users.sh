#!/usr/bin/env bash
set -e

echo "Installing configuration for existing users..."

CONFIGS=(
    hypr
    waybar
    kitty
    mako
    wofi
    hyprlock
    hypridle
)

for HOME_DIR in /home/*; do

    [ -d "$HOME_DIR" ] || continue

    USERNAME=$(basename "$HOME_DIR")

    echo
    echo "--------------------------------"
    echo "Configuring user: $USERNAME"
    echo "--------------------------------"

    mkdir -p "$HOME_DIR/.config"

    BACKUP="$HOME_DIR/.config-backup-$(date +%Y%m%d-%H%M%S)"

    mkdir -p "$BACKUP"

    for cfg in "${CONFIGS[@]}"; do

        if [ -d "$HOME_DIR/.config/$cfg" ]; then
            mv "$HOME_DIR/.config/$cfg" "$BACKUP/"
        fi

        cp -a "configs/$cfg" "$HOME_DIR/.config/"
    done

    mkdir -p "$HOME_DIR/Pictures/Wallpapers"

    cp -a configs/wallpapers/. "$HOME_DIR/Pictures/Wallpapers/"

    chown -R "$USERNAME:$USERNAME" "$HOME_DIR/.config"
    chown -R "$USERNAME:$USERNAME" "$HOME_DIR/Pictures"

    echo "✓ $USERNAME completed."

done

echo
echo "All existing users configured successfully."
