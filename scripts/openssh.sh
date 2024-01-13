# !/bin/bash
set -e

echo "- Installation"
sudo pacman -Syu --noconfirm openssh

echo "- Enable Daemon"
sudo systemctl enable --now sshd
