#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

echo "INSTALLING SUCKLESS SOFTWARE!"
sleep 3s
echo "COPYING SUCKLESS SOFTWARE TO .CONFIG DIRECTORY!"
sleep 3s
cd ~/dwm-laptop/
cp -r suckless ~/.config/
echo "INSTALLING DWM!"
cd ~/.config/suckless/dwm-6.2/
sudo make clean install
echo "DWM INSTALLED!"
sleep 3s
echo "INSTALLING ST!"
sleep 3s
cd ~/.config/suckless/st-0.8.5/
sudo make clean install
echo "ST INSTALLED!"
sleep 3s
echo "INSTALLING DMENU!"
sleep 3s
cd ~/.config/suckless/dmenu-5.1/
sudo make clean install
echo "DMENU INSTALLED!"
sleep 3s
echo "INSTALLING SLSTATUS!"
sleep 3s
cd ~/.config/suckless/
tar -xzvf slstatus.tar.gz
rm slstatus.tar.gz
cd ~/.config/suckless/slstatus/
sudo make clean install
echo "SLSTATUS INSTALLED!"
sleep 2s
echo "SUCKLESS SOFTWARE INSTALLED!"
sleep 3s
exit
