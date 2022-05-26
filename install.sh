#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

echo "CALLING ALL SCRIPTS ONE BY ONE!"
sleep 3s
cp -r dwm-laptop ~/
cat ~/dwm-laptop/logo/logo.txt
sleep 20s
# Apps install
sudo pacman -Syy
sudo pacman -Syu
cd ~/dwm-laptop/scripts/
sh pacman-install.sh
sh yay-aur-install.sh
sh fonts-install.sh
# Copyng DWM themes to /usr/share/ directory
cd ~/dwm-laptop/
sudo cp -r dwm-themes /usr/share/
# Suckless install
cd ~/dwm-laptop/scripts/
sh suckless-install.sh
# Wallpapers copy
cd ~/dwm-laptop/scripts/
sh wallpapers-install.sh
# LightDM config
cd ~/dwm-laptop/scripts/
sh lightdm-config.sh
# Xinitrc file
cd ~/dwm-laptop/scripts/
sh xinitrc-install.sh
# Autostart for DWM
cd ~/dwm-laptop/scripts/
sh autostart-config.sh
# Touchpad tap to click
cd ~/dwm-laptop/scripts/
sh touchpad-install.sh
# Dracula themes
cd ~/dwm-laptop/scripts/
sh dracula-themes-install.sh
# ZSH shell
cd ~/dwm-laptop/scripts/
sh zsh-install.sh
# Rofi config
cd ~/dwm-laptop/scripts/
sh rofi-install.sh
# Alacritty config
cd ~/dwm-laptop/scripts/
sh alacritty-config.sh
# Termite config
cd ~/dwm-laptop/scripts/
sh termite-install.sh
# Vim config
cd ~/dwm-laptop/scripts/
sh vim-install.sh
# MPV config
cd ~/dwm-laptop/scripts/
sh mpv-install.sh
# Power menu
cd ~/dwm-laptop/scripts/
sh powermenu-install.sh
# Missing apps
cd ~/dwm-laptop/scripts/
sh missing.sh
# Picom configuration
cd ~/dwm-laptop/scripts/
sh picom-config.sh
# Ranger
cd ~/dwm-laptop/scripts/
sh ranger.sh
# MOC - Music On Console
sh moc-configuration.sh
# Firefox txt
cd ~/dwm-laptop/scripts/
sh firefox-chrome-install.sh

echo "SCRIPTS FINISHED!"
sleep 10s
echo "ENJOY DWM!"
sleep 3s
cat ~/dwm-laptop/logo/logo.txt
sleep 20s
echo "BYE!"
exit









