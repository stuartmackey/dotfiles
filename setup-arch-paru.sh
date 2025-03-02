#!/bin/bash

echo "---- Set up Paru"
sudo pacman -S --needed base-devel
rustup default stable
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

