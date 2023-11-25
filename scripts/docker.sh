# !/bin/bash
set -e

echo "- Installation"
sudo pacman -Syu --noconfirm docker docker-compose

echo "- Add user to group"
sudo usermod -aG docker $USER
newgrp docker

echo "- Enable daemon"
sudo systemctl enable --now docker
