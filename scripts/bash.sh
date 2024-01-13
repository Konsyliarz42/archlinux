# !/bin/bash
set -e

DOTFILES_DIR=$(dirname "$0")/../dotfiles

echo "- Create Configuration"
cp $DOTFILES_DIR/bashrc $HOME/.bashrc

echo "- Load Configuration"
source $HOME/.bashrc
