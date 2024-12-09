#!/bin/bash
set -euo pipefail

#sudo pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

sudo pacman -Syu --noconfirm

for f in $(find pacman_pkg/ -name '*.txt' -or -name '*.txt'); do yay -S - < $f --noconfirm --needed || true; done
