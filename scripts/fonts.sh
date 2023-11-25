# !/bin/bash
set -e

echo "- Instalation"
sudo pacman -Syu --noconfirm \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji
