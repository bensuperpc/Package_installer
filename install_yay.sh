#!/bin/bash

for i in "$@"
do
case $i in
    -y|--yay)
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    shift # past argument=value
    ;;
    -i|--install)
    echo 'Install packages...'
#    yay -Sua
    for file in $(find yay/ -name '*.txt' -or -name '*.txt')
    do 
        while read line; do
            yay -S --noconfirm $line
        done < $file
    done
    shift # past argument=value
    ;;
#    -r=*|--rsyncuser=*)
#    RSYNC_USER+="${i#*=} "
#    shift # past argument=value
#    ;;
    -h|--help)
    echo "Usage: ${0##*/} [-i : Install packages, -y : Install yay]"
    exit 0
    ;;
    *)
        # unknown option
    ;;
esac
done