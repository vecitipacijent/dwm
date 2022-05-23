#1/bin/bash

cp -r dwm-laptop ~/

cat ~/dwm-laptop/logo/logo.txt

sleep 7s

# Refreshing mirrors
while true; do
        read -p "Do you wish to refresh mirrors? " yn
        case $yn in
                [Yy]* ) sudo pacman -Syy; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Updating the system
while true; do
        read -p "Do you wish to update the system? " yn
        case $yn in
                [Yy]* ) sudo pacman -Syu; break;;
                [Nn]* )  break;;
                * ) echo "Please anser Y or N ?! ";;
        esac
done

# Copyng necessary files to home directory
cd ~/dwm-laptop/scripts/

# Starting Pacman script
while true; do
        read -p "Do you wish to install my set of Pacman programs? " yn
        case $yn in
                [Yy]* ) sh pacman-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Starting Yay script
while true; do
        read -p "Do you wish to install my set of Yay programs? " yn
        case $yn in
                [Yy]* )  sh yay-aur-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Starting fonts script
while true; do
        read -p "Do you wish to install my set of fonts? " yn
        case $yn in
                [Yy]* ) sh fonts-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Entering the DWM directory
cd ~/dwm-laptop/

# Copying the dwm-themes directory to /usr/share/
while true; do
        read -p "Do you wish to use my set of themes for DWM? " yn
        case $yn in
                [Yy]* ) sudo cp -r dwm-themes /usr/share/; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Copying DWM and Suckless tools
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to install DWM and Suckless utils? " yn
        case $yn in
                [Yy]* ) sh suckless-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Copying wallpapers
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use my wallpapers? " yn
        case $yn in
                [Yy]* ) sh wallpapers-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# LightDM config
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use my configuration of LightDM? " yn
        case $yn in
                [Yy]* ) sh lightdm-config.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Xinitrc file, just in case
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to have a .xinitrc file just in case? " yn
        case $yn in
                [Yy]* ) sh xinitrc-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Autostart script for DWM
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use my DWM autostart script? " yn
        case $yn in
                [Yy]* ) sh autostart-config.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Touchpad - tap to click
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to configure tap to click touchpad option? " yn
        case $yn in
                [Yy]* ) sh touchpad-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Dracula themes - GTK, Icons and QT
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to install Dracula themes? " yn
        case $yn in
                [Yy]* ) sh dracula-themes-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# ZSH shell configuration
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to configure ZSH shell as a default? " yn
        case $yn in
                [Yy]* ) sh zsh-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Rofi configuration
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use my Rofi configuration? " yn
        case $yn in
                [Yy]* ) sh rofi-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Alacritty configuration
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to to configure Alacritty with my configs? " yn
        case $yn in
                [Yy]* ) sh alacritty-config.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Termite configuration
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use my Termite configuration? " yn
        case $yn in
                [Yy]* ) sh termite-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Vim configuration
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use my Vim configuration? " yn
        case $yn in
                [Yy]* ) sh vim-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# MPV configuration
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use my MPV configuration for 720p videos? " yn
        case $yn in
                [Yy]* ) sh mpv-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Power menu script
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use a power menu script for Rofi? " yn
        case $yn in
                [Yy]* ) sh powermenu-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Missing files script - just to be sure that we installed everything
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to run a script that will check if we missed something? " yn
        case $yn in
                [Yy]* ) sh missing.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Picom configuration
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Do you wish to use a blur efect with Picom? " yn
        case $yn in
                [Yy]* ) sh picom-config.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

# Firefox txt file
cd ~/dwm-laptop/scripts/
while true; do
        read -p "Would you like to know how to customize Firefox with css? " yn
        case $yn in
                [Yy]* ) sh firefox-chrome-install.sh; break;;
                [Nn]* ) break;;
                * ) echo "Please answer Y or N ?! ";;
        esac
done

echo "You have come to an end!"
sleep 2s
echo "ENJOY DWM!"
cat ~/dwm-laptop/logo/logo.txt
sleep 10s
echo "BYE!"
sleep 3s
exit
