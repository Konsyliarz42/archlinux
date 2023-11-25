# !/bin/bash
set -e

echo "- Installation"
sudo pacman -Syu --noconfirm openssh

echo "- Enable daemon"
sudo systemctl enable --now sshd
