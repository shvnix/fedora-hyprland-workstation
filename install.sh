#!/usr/bin/env bash
set -e

echo "==========================================="
echo " Fedora Hyprland Workstation Installer"
echo "==========================================="

echo

./scripts/install-packages.sh

sudo ./scripts/install-skel.sh

sudo ./scripts/install-users.sh

echo
echo "==========================================="
echo " Installation Complete"
echo "==========================================="
echo
echo "✔ Packages Installed"
echo "✔ Existing Users Configured"
echo "✔ Future Users Configured"
echo
echo "Logout and select Hyprland."
