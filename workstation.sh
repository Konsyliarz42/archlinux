# !/bin/bash

SCRIPTS_DIR=$(dirname "$0")/scripts

echo "Setup nano" && $SCRIPTS_DIR/nano.sh
echo "Install fonts" && $SCRIPTS_DIR/fonts.sh
echo "Install docker" && $SCRIPTS_DIR/docker/sh
echo "Enable SSH" && $SCRIPTS_DIR/openssh.sh
echo "Setup ZSH" && $SCRIPTS_DIR/zsh.sh
echo "Connect to VPN" && $SCRIPTS_DIR/wireguard.sh
echo "Install Gnome" && $SCRIPTS_DIR/gnome.sh
echo "Install VSCode" && $SCRIPTS_DIR/vscode.sh
