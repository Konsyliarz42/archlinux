# !/bin/bash
set -e

AUR_DIR=$HOME/Repositories/.aur
CURRENT_DIR=$(pwd)

echo "- Installation Dependencies"
sudo pacman -Syu --noconfirm \
    git \
    alsa-lib \
    gcc-libs \
    glibc \
    gnupg \
    gtk3 \
    libnotify \
    libsecret \
    libxkbfile \
    libxss \
    lsof \
    nss \
    shared-mime-info \
    xdg-utils

echo "- Download AUR Repository"
mkdir -p $AUR_DIR
cd $AUR_DIR
git clone https://aur.archlinux.org/visual-studio-code-bin.git

echo "- Installation"
cd visual-studio-code-bin
makepkg -si --noconfirm
cd $CURRENT_DIR
