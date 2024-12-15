#!/bin/bash
set -euo pipefail

sudo pacman -Syu --noconfirm

for f in $(find yay_pkg/ -name '*.txt' -or -name '*.txt'); do yay -S - < $f --noconfirm --needed || true; done
