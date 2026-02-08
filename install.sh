#!/bin/bash

sudo pacman -S hyprland swww alacritty rofi waybar otf-font-awesome grim network-manager-applet nautilus

sudo rm -rf /etc/xdg/hypr
sudo rm -rf /etc/xdg/waybar
rm -rf $HOME/.config/alacritty
rm -rf $HOME/.config/rofi
rm -rf $HOME/.config/hypr

sudo mkdir -p /etc/xdg/hypr
sudo mkdir -p /etc/xdg/waybar
mkdir -p $HOME/.config/alacritty
mkdir -p $HOME/.config/rofi
mkdir -p $HOME/.config/hypr

sudo cp -rf wallpaper/* /etc/xdg/hypr
sudo cp -rf waybar/* /etc/xdg/waybar
cp alacritty/* $HOME/.config/alacritty
cp rofi/* $HOME/.config/rofi
cp hyprland/* $HOME/.config/hypr

reboot
