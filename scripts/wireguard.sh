# !/bin/bash
set -e

CONF_FILE="/etc/wireguard/wg0.conf"

echo "- Installation"
sudo pacman -Syu --noconfirm wireguard-tools networkmanager

echo "- Connect With Vpn"
read -p "Write path to wireguard config (/etc/wireguard/wg0.conf): " CONF_FILE
nmcli connection import type wireguard file "$CONF_FILE"
