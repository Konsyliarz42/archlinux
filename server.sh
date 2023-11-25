# !/bin/bash

SCRIPTS_DIR=$(dirname "$0")/scripts

echo "Configure bash" && $SCRIPTS_DIR/bash.sh
echo "Setup wi-fi" && $SCRIPTS_DIR/wifi.sh
echo "Setup nano" && $SCRIPTS_DIR/nano.sh
echo "Install docker" && $SCRIPTS_DIR/docker/sh
echo "Enable SSH" && $SCRIPTS_DIR/openssh.sh
echo "Connect to VPN" && $SCRIPTS_DIR/zerotier.sh
