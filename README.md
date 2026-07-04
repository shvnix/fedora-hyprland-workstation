# 🚀 Fedora Hyprland Workstation

> A clean, minimal, production-ready Hyprland workstation for Fedora Workstation.

![Fedora](https://img.shields.io/badge/Fedora-43+-294172?logo=fedora)
![Wayland](https://img.shields.io/badge/Wayland-Native-blue)
![Hyprland](https://img.shields.io/badge/Hyprland-0.51+-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

## 📖 Overview

Fedora Hyprland Workstation is a complete Hyprland setup designed for developers who want:

- Extremely low memory usage
- Maximum responsiveness
- Native Wayland workflow
- Clean and maintainable configuration
- Long-term stability
- Professional development environment

This project is **not** a "riced" Hyprland setup.

It intentionally avoids:

- ❌ Fancy animations
- ❌ Blur-heavy effects
- ❌ RGB themes
- ❌ Huge shell frameworks
- ❌ Over-engineered dotfiles
- ❌ Dozens of startup scripts
- ❌ Multiple bars and launchers

Instead, it focuses on:

- ✅ Simplicity
- ✅ Performance
- ✅ Battery life
- ✅ Developer productivity
- ✅ Easy maintenance

---

# ✨ Features

- Fedora Workstation Compatible
- GNOME + Hyprland side-by-side
- Wayland Native
- Minimal RAM usage
- Automatic installation
- Automatic configuration
- Automatic backups
- Existing user support
- Future user support (/etc/skel)
- Modular configuration
- Production-ready repository structure

---

# 📦 Installed Components

## Desktop

- Hyprland
- Waybar
- Kitty
- Wofi
- Mako
- Hyprlock
- Hypridle
- Thunar
- Hyprpaper

## Utilities

- brightnessctl
- playerctl
- wl-clipboard
- grim
- slurp
- pavucontrol
- NetworkManager Applet

## Wayland

- xdg-desktop-portal-hyprland
- xdg-desktop-portal-gtk

## Development

- Git
- Neovim
- VS Code
- Python
- Node.js
- Rust
- GCC
- CMake
- Podman

---

# 🎯 Goals

Priority order:

1. Lowest RAM usage
2. Maximum responsiveness
3. Stability
4. Maintainability
5. Developer workflow
6. Native Wayland
7. Battery life
8. Fast startup
9. Modular configuration

---

# 📊 Expected Resource Usage

Approximate idle RAM usage

| Desktop | Idle RAM |
|----------|---------:|
| GNOME | 900–1200 MB |
| Fedora Hyprland Workstation | 300–450 MB |

(Depends on hardware and background services.)

---

# 📁 Repository Structure

```
fedora-hyprland-workstation/

├── configs/
├── packages/
├── scripts/
├── docs/
├── assets/

├── install.sh
├── update.sh
├── uninstall.sh
├── backup.sh

└── README.md
```

---

# ⚙️ Installation

Clone the repository

```bash
git clone https://github.com/shvnix/fedora-hyprland-workstation.git

cd fedora-hyprland-workstation
```

Make the installer executable

```bash
chmod +x install.sh
```

Run the installer

```bash
./install.sh
```

Logout.

Select **Hyprland** from GDM.

Done.

---

# 🔄 What the installer does

The installer automatically

- Detects Fedora version
- Installs required packages
- Backs up existing configuration
- Configures every existing user
- Configures all future users (/etc/skel)
- Installs wallpapers
- Enables required services
- Verifies installation

Nothing inside GNOME is removed.

Both GNOME and Hyprland remain available.

---

# 📚 Documentation

Detailed guides are available inside

```
docs/
```

Including

- Installation
- Configuration
- Performance
- Battery Optimization
- Security
- Multi-monitor
- Troubleshooting
- Backup & Restore

---

# 🖥️ Default Keybindings

| Shortcut | Action |
|-----------|--------|
| Super + Enter | Terminal |
| Super + D | App Launcher |
| Super + E | File Manager |
| Super + Q | Close Window |
| Super + F | Fullscreen |
| Super + V | Toggle Floating |
| Super + H/J/K/L | Focus Window |
| Super + Shift + H/J/K/L | Move Window |
| Super + 1-0 | Workspace |
| Super + Shift + 1-0 | Move Window to Workspace |

---

# 💾 Backup

Before overwriting any configuration the installer automatically creates

```
~/.config-backup-YYYY-MM-DD-HHMMSS
```

Nothing is permanently deleted.

---

# 🛠 Updating

```bash
./update.sh
```

---

# 🗑 Uninstall

```bash
./uninstall.sh
```

This restores backups and removes installed configuration.

GNOME is untouched.

---

# ❤️ Contributing

Contributions are welcome.

Please open an Issue before making major changes.

---

# 📜 License

MIT License

---

# 🙏 Acknowledgements

- Fedora Project
- Hyprland Developers
- Waybar Developers
- Wayland Community

---

# ⭐ If you like this project

Please consider giving it a ⭐ on GitHub.
