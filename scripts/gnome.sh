# !/bin/bash
set -e

AUR_DIR=$HOME/Repositories/.aur
CURRENT_DIR=$(pwd)
DOTFILES_DIR=$(dirname "$0")/../dotfiles

echo "- Installation Dependencies"
sudo pacman -Syu --noconfirm \
    dconf \
    gdm \
    git \
    gnome-browser-connector \
    gnome-control-center \
    gnome-disk-utility \
    gnome-firmware \
    gnome-font-viewer \
    gnome-keyring \
    gnome-menus \
    gnome-session \
    gnome-settings-daemon \
    gnome-shell \
    gnome-terminal \
    gnome-tweaks \
    nautilus \
    networkmanager \
    xdg-user-dirs \
    xdg-user-dirs-gtk

echo "- Installation AUR Packages:"
mkdir -p $AUR_DIR
cd $AUR_DIR

echo "  - Alphabetical App Grid"
git clone https://aur.archlinux.org/gnome-shell-extension-alphabetical-grid-extension.git
cd gnome-shell-extension-alphabetical-grid-extension
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

echo "- Load Terminal Configuartion"
cat $DOTFILES_DIR/.gnome-terminal | dconf load /org/gnome/terminal/legacy/profiles:/

echo "- Enable daemon"
sudo systemctl enable gdm
