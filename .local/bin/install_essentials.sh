#!/bin/sh

# Install yay (AUR helper)
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S zsh i3 polybar rofi ttf-jetbrains-mono
