#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

			# SOFTWARE								
#################################################################

echo "INSTALLING SOFTWARE FROM AUR USING YAY AUR HELPER!"
sleep 3s

# AUR apps:

PKGS=(
	'mkinitcpio-firmware'
	'linux-firmware-qlogic'
	'upd72020x-fw'
	'faac'
	'wd719x-firmware'
	'aic94xx-firmware'
	'qed-git'
	'dracula-gtk-theme'
	'flashplugin'
	'dracula-cursors-git'
	'whatsapp-nativefier'
	'telegram-desktop'
	'viber'
	'deadbeef'
	'megatools'
	'spotify'
	'spotifywm-git'
	'ttf-comic-mono-git'
	'picom-git'
	'powrline-fonts'
	'termite'
	'brave-bin'
	'ttf-consolas-ligaturized'
	'ttf-material-design-icons'
	'alacritty-themes'
	'nordic-theme-git'
	'moc-pulse'
	'mocicon'
	'betterlockscreen'
)

for PKG in "${PKGS[@]}"; do
	echo "Installing: ${PKG}"
	yay -S "$PKG" --noconfirm
done
 
echo "SOFTWARE FROM AUR INSTALLED SUCCESSFULLY USING YAY AUR HELPER!"
sleep 3s
exit
