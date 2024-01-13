# !/bin/bash
set -e

echo "- Installation"
sudo pacman -Syu --noconfirm zerotier-one

echo "- Enable Daemon"
sudo systemctl enable --now zerotier-one

echo "- Connect To Network"
sudo zerotier-cli info
sudo zerotier-cli join 0cccb752f7fcaefd
