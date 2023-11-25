# !/bin/bash
set -e

AUR_DIR=$HOME/Repositories/.aur
CURRENT_DIR=$(pwd)

echo "- Installation Dependencies"
sudo pacman -Syu --noconfirm \
    git \
    gdm \
    gnome-control-center \
    gnome-font-viewer \
    gnome-keyring \
    gnome-menus \
    gnome-session \
    gnome-settings-daemon \
    gnome-shell \
    gnome-browser-connector \
    gnome-tweaks \
    gnome-terminal \
    nautilus \
    gnome-firmware \
    networkmanager \
    xorg \

echo "- Installation AUR Packages:"
mkdir -p $AUR_DIR
cd $AUR_DIR

echo "  - UTC clock"
git clone https://aur.archlinux.org/gnome-shell-extension-utc-clock.git
cd gnome-shell-extension-utc-clock
makepkg -si --noconfirm
cd $AUR_DIR

echo "  - Blur my Shell"
git clone https://aur.archlinux.org/gnome-shell-extension-blur-my-shell.git
cd gnome-shell-extension-blur-my-shell
makepkg -si --noconfirm
cd $AUR_DIR

echo "  - Alphabetical App Grid"
git clone https://aur.archlinux.org/gnome-shell-extension-alphabetical-grid-extension.git
cd gnome-shell-extension-alphabetical-grid-extension
makepkg -si --noconfirm
# cd $AUR_DIR

echo "  - Unblank"
git clone https://aur.archlinux.org/gnome-shell-extension-unblank-git.git
cd gnome-shell-extension-unblank-git
makepkg -si --noconfirm
cd $AUR_DIR

echo "  - Arch Update"
git clone https://aur.archlinux.org/gnome-shell-extension-arch-update.git
cd gnome-shell-extension-arch-update
makepkg -si --noconfirm
cd $AUR_DIR

echo "  - GDM Settings"
git clone https://aur.archlinux.org/gdm-settings.git
cd gdm-settings
makepkg -si --noconfirm
cd $AUR_DIR

cd $CURRENT_DIR

echo "- Enable daemon"
sudo systemctl enable gdm
