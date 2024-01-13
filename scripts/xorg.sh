# !/bin/bash
set -e

DRIVERS=("xorg-drivers" "f86-video-amdgpu" "xf86-video-ati" "xf86-video-intel" "xf86-video-nouveau" "nvidia")
DRIVER="0"

echo "- Instalation"
sudo pacman -Syu --noconfirm xorg

echo "- Identification The Graphic Card"
lspci -v | grep -A1 -e VGA -e 3D

echo "- Select Drivers"
echo "0. xorg-drivers (all)
1. xf86-video-amdgpu (AMD)
2. xf86-video-ati (ATI)
3. xf86-video-intel (Intel)
4. xf86-video-nouveau (NVIDIA | Open Source)
5. nvidia (NVIDIA | Proprietary)"
read -p "Select (default: 0): " DRIVER
if ! [[ -v DRIVERS[$DRIVER] ]] ; then
    echo "Out of range"
    exit 1
fi

echo "- Instalation Of Drivers"
sudo pacman -Syu --noconfirm DRIVERS[$DRIVER]
