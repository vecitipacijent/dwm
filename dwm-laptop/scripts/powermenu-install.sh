#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

echo "CONFIGURING POWER MENU FOR ROFI!"
sleep 3s
cd ~/dwm-laptop/powermenu/
cp -r .scripts ~/
echo "POWER MENU CONFIGURED!"
sleep 3s
exit
