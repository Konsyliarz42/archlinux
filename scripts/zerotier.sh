# !/bin/bash
set -e

echo "- Installation"
sudo pacman -Syu --noconfirm zerotier-one

echo "- Enable daemon"
sudo systemctl enable --now zerotier-one

echo "- Connect to network"
sudo zerotier-cli info
sudo zerotier-cli join 0cccb752f7fcaefd
