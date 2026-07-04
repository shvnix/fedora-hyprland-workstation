#!/usr/bin/env bash

###############################################################################
# Fedora Hyprland Workstation
# Package Installer
###############################################################################

set -e

echo
echo "========================================="
echo " Installing Required Packages"
echo "========================================="
echo

sudo dnf install -y \
hyprland \
hyprpaper \
waybar \
kitty \
wofi \
mako \
hyprlock \
hypridle \
thunar \
wl-clipboard \
grim \
slurp \
brightnessctl \
playerctl \
pavucontrol \
network-manager-applet \
xdg-desktop-portal-hyprland \
xdg-desktop-portal-gtk \
git \

echo
echo "✓ Packages Installed Successfully"
