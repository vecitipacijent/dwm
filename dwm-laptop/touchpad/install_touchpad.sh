printf "Enabling the tap to click Touchpad option for the laptop users...\n"
sleep 5s
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
printf "Touchpad tap to click option successfully enabled!\n"
sleep 10s
exit
