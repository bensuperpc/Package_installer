#!/bin/bash
#
# Install.sh - Install for Manjaro and ArchLinux
#
# Created by Bensuperpc at 31, October of 2020
#
# Released into the Public domain with MIT licence
# https://opensource.org/licenses/MIT
#
# Written with VisualStudio code 1.49.1 and python 3.8.5
# Script compatibility : Linux (Manjaro and Archlinux based)
#
# ==============================================================================

sudo pacman -Syu --noconfirm
for f in $(find pacman_pkg/ -name '*.txt' -or -name '*.txt'); do sudo pacman -S - < $f --noconfirm --needed || true; done
