#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

echo "ENABLING LIGHTDM IN SYSTEMD!"
sleep 3s
sudo pacman -S --noconfirm lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm.service
echo "LIGHTDM SERVICE ENABLED!"
sleep 3s
cd ~/dwm-laptop/lightdm/
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/
cd ~/dwm-laptop/wallpapers/
sudo cp mountain1.jpg /usr/share/pixmaps/
cd /usr/share/
sudo mkdir xsessions
cd ~/dwm-laptop/lightdm/
sudo cp dwm.desktop /usr/share/xsessions/
sleep 3s
echo "LIGHTDM CONFIGURED!"
sleep 3s
exit
