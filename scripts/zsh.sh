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

echo "- Instalation Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "- Installation AUR Packages:"
mkdir -p $AUR_DIR
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
