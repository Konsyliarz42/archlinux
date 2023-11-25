# !/bin/bash
set -e

AUR_DIR=$HOME/Repositories/.aur
DOTFILES_DIR=$(dirname "$0")/../dotfiles
CURRENT_DIR=$(pwd)

echo "- Instalation Dependencies"
sudo pacman -Syu --noconfirm \
    zsh \
    zsh-syntax-highlighting \
    zsh-autosuggestions

echo "- Installation AUR Packages:"
mkdir -p $AUR_DIR
cd $AUR_DIR

echo "  - Oh My Zsh"
git clone https://aur.archlinux.org/oh-my-zsh-git.git
cd oh-my-zsh-git
makepkg -si --noconfirm
cd $AUR_DIR

echo "  - Pure"
git clone https://aur.archlinux.org/zsh-pure-prompt.git
cd zsh-pure-prompt
makepkg -si --noconfirm
cd $AUR_DIR

cd $CURRENT_DIR

echo "- Create configuration"
cp $DOTFILES_DIR/zshrc $HOME/.zshrc

echo "- Setting Default Shell"
chsh -s /bin/zsh
