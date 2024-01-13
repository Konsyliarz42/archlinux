# !/bin/bash
set -e

echo "- Installation"
sudo pacman -Syu --noconfirm networkmanager

echo "- Enable Daemon"
sudo systemctl enable --now NetworkManager
