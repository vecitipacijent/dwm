#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

echo "CREATING AN .XINITRC FILE JUST IN CASE THAT LIGHTDM FAILS TO START!"
sleep 3s
cd ~/dwm-laptop/xinitrc/
cp -r .xinit-dwm-start ~/
cp .xinitrc ~/
echo ".XINITRC FILE CREATED WITH A DWM-START SCRIPT!"
sleep 3s
exit
