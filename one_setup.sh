#!/bin/bash

sudo apt update
sudo apt install -y live-build squashfs-tools live-boot live-config xorriso isolinux
git clone --recurse-submodules https://github.com/brdeb/distro
cd distro
chmod +x lb-config/lb_config_brdeb.sh
lb-config/lb_config_brdeb.sh
lb build
