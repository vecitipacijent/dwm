#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

echo "COPYING AND CONFIGURING DRACULA THEMES!"
sleep 3s
cd ~/dwm-laptop/dracula-themes/
sudo cp -r dracula-gtk /usr/share/themes/
sudo cp -r dracula-icons /usr/share/icons/
cd ~/dwm-laptop/dracula-themes/dracula-qt5/
cp -r qt5ct ~/.config/
echo "DRACULA THEMES CONFIGURED!"
sleep 3s
