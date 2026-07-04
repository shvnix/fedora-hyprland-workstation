#!/usr/bin/env bash

set -e

#############################################
# Must run as root
#############################################

if [[ $EUID -ne 0 ]]; then
    echo
    echo "Please run:"
    echo
    echo "    sudo ./install.sh"
    echo
    exit 1
fi

echo "==========================================="
echo " Fedora Hyprland Workstation Installer"
echo "==========================================="
echo

bash scripts/install-packages.sh
bash scripts/install-skel.sh
bash scripts/install-users.sh

echo
echo "==========================================="
echo " Installation Complete"
echo "==========================================="
echo
echo "✔ Packages Installed"
echo "✔ Existing Users Configured"
echo "✔ Future Users Configured"
echo
echo "Logout and choose Hyprland from GDM."

