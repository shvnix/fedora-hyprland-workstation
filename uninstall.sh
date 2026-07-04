#!/usr/bin/env bash

###############################################################################
# Fedora Hyprland Workstation
# Uninstaller
###############################################################################

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}"
echo "======================================================="
echo "        Fedora Hyprland Workstation Uninstaller"
echo "======================================================="
echo -e "${NC}"

if [[ $EUID -ne 0 ]]; then
    echo -e "${RED}Please run with sudo.${NC}"
    exit 1
fi

echo
echo -e "${YELLOW}This will:${NC}"
echo "  • Remove Hyprland configuration"
echo "  • Restore backups if available"
echo "  • Remove default configuration from /etc/skel"
echo "  • Optionally uninstall Hyprland packages"
echo
echo -e "${GREEN}GNOME will NOT be removed.${NC}"
echo

read -rp "Continue? [y/N]: " CONFIRM

[[ "$CONFIRM" =~ ^[Yy]$ ]] || exit 0

###############################################################################
# CONFIG LIST
###############################################################################

CONFIGS=(
hypr
waybar
kitty
wofi
mako
hyprlock
hypridle
)

###############################################################################
# EXISTING USERS
###############################################################################

echo
echo "Removing configuration from existing users..."

for HOME_DIR in /home/*; do

    [ -d "$HOME_DIR" ] || continue

    USERNAME=$(basename "$HOME_DIR")

    echo
    echo "User: $USERNAME"

    for CFG in "${CONFIGS[@]}"; do
        rm -rf "$HOME_DIR/.config/$CFG"
    done

    rm -rf "$HOME_DIR/Pictures/Wallpapers"

    BACKUP=$(find "$HOME_DIR" -maxdepth 1 -type d -name ".config-backup-*" | sort | tail -n1)

    if [[ -n "$BACKUP" ]]; then

        echo "Restoring backup..."

        for CFG in "${CONFIGS[@]}"; do

            if [[ -d "$BACKUP/$CFG" ]]; then
                mv "$BACKUP/$CFG" "$HOME_DIR/.config/"
            fi

        done

        chown -R "$USERNAME:$USERNAME" "$HOME_DIR/.config"

    fi

done

###############################################################################
# /etc/skel
###############################################################################

echo
echo "Cleaning /etc/skel..."

for CFG in "${CONFIGS[@]}"; do
    rm -rf "/etc/skel/.config/$CFG"
done

rm -rf /etc/skel/Pictures/Wallpapers

###############################################################################
# Shared Wallpapers
###############################################################################

rm -rf /usr/local/share/wallpapers

###############################################################################
# Remove Packages
###############################################################################

echo
read -rp "Remove Hyprland packages? [y/N]: " REMOVE

if [[ "$REMOVE" =~ ^[Yy]$ ]]; then

dnf remove -y \
hyprland \
waybar \
kitty \
wofi \
mako \
hyprlock \
hypridle \
hyprpaper \
brightnessctl \
playerctl \
grim \
slurp \
wl-clipboard \
xdg-desktop-portal-hyprland

fi

###############################################################################
# FINISHED
###############################################################################

echo
echo -e "${GREEN}"
echo "======================================================="
echo " Fedora Hyprland Workstation has been removed."
echo "======================================================="
echo -e "${NC}"

echo "GNOME is still installed."
echo "You can continue using GNOME normally."

echo
