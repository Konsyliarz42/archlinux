# !/bin/bash
set -e

echo "- Installation"
sudo pacman -Syu --noconfirm docker docker-compose

echo "- Add User To Group"
sudo usermod -aG docker $USER
newgrp docker

echo "- Enable Daemon"
sudo systemctl enable --now docker
