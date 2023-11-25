# !/bin/bash
set -e

DOTFILES_DIR=$(dirname "$0")/../dotfiles

echo "- Create configuration"
cp $DOTFILES_DIR/bashrc $HOME/.bashrc

echo "- Load configuration"
source $HOME/.bashrc
