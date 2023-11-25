# !/bin/bash
set -e

AUR_DIR=$HOME/Repositories/.aur
CURRENT_DIR=$(pwd)

echo "- Installation Dependencies"
sudo pacman -Syu --noconfirm \
    git \
    bc \
    dkms \
    linux-headers \
    iwd

echo "- Download AUR Repository"
mkdir -p $AUR_DIR
cd $AUR_DIR
git clone https://aur.archlinux.org/rtl88x2bu-dkms-git.git

echo "- Installation"
cd rtl88x2bu-dkms-git
makepkg -si --noconfirm
cd $CURRENT_DIR

echo "- Enable Daemon"
sudo systemctl enable --now iwd

echo "- Connect to wi-fi"
iwctl device list
read -p "Select device: " device
iwctl device $device set-property Powered on
iwctl device $device get-networks
read -p "Select network: " network
read -p "Password for $network: " password
iwctl station $device connect $password
