#!/bin/bash
set -euo pipefail

sudo pacman -Syu --noconfirm

for f in $(find pacman_pkg/ -name '*.txt' -or -name '*.txt'); do sudo pacman -S - < $f --noconfirm --needed || true; done
