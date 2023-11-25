# !/bin/bash
set -e

DOTFILES_DIR=$(dirname "$0")/../dotfiles

echo "- Instalation"
sudo pacman -Syu --noconfirm nano nano-syntax-highlighting

echo "- Create configuration"
mkdir -p $HOME/.config/nano
cp $DOTFILES_DIR/nanorc $HOME/.config/nano/nanorc
