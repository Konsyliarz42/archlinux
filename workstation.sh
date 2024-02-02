# !/bin/bash

SCRIPTS_DIR=$(dirname "$0")/scripts

echo "Setup nano" && $SCRIPTS_DIR/nano.sh
echo "Install fonts" && $SCRIPTS_DIR/fonts.sh
echo "Install docker" && $SCRIPTS_DIR/docker/sh
echo "Enable SSH" && $SCRIPTS_DIR/openssh.sh
echo "Setup ZSH" && $SCRIPTS_DIR/zsh.sh
echo "Setup NetworkManager" && $SCRIPTS_DIR/networkmanager.sh
echo "Connect to VPN" && $SCRIPTS_DIR/wireguard.sh
echo "Install Xorg" && $SCRIPTS_DIR/xorg.sh
echo "Install Gnome" && $SCRIPTS_DIR/gnome.sh
echo "Install VSCode" && $SCRIPTS_DIR/vscode.sh

echo "Fix clock sync"
timedatectl set-local-rtc 1 --adjust-system-clock

echo "Install package for NTFS"
sudo pacman -Syu --noconfirm ntfs-3g
