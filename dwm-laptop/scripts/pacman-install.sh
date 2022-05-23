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

echo "INSTALLING SOFTWARE FROM PACMAN MANAGER!"
sleep 5s

# List of programs: 

PKGS=(	
	'lxappearance'	
	'pcmanfm'	
	'nomacs'	
	'youtube-dl'	
	'veracrypt'
	'alacritty'	
	'htop'	
	'pavucontrol'	
	'pamixer'	
	'alsa-firmware'	
	'alsa-utils'	
	'alsa-plugins'	
	'pulseaudio-alsa'	
	'pamixer'	
	'flameshot'	
	'ttf-jetbrains-mono'	
	'papirus-icon-theme'	
	'ttf-nerd-fonts-symbols'	
	'zsh'	
	'rofi'	
	'picom'	
	'feh'	
	'nitrogen'	
	'man'	
	'rsync'	
	'rclone'	
	'firefox'	
	'mpv'	
	'vlc'	
	'qt5ct'	
	'libreoffice-still'	
	'libreoffice-still-sr-latn'	
	'lightdm'	
	'lightdm-gtk-greeter'	
	'curl'	
	'gtop'	
	'neofetch'	
	'ntp'	
	'unrar'	
	'unzip'	
	'zip'	
	'wget'	
	'zenity'	
	'zsh-completions'	
	'exfat-utils'	
	'catfish'	
	'code'	
	'apache'	
	'clang'	
	'cmake'	
	'electron'	
	'git'	
	'gcc'	
	'glibc'	
	'nodejs'	
	'php'	
	'php-apache'	
	'python'	
	'yarn'	
	'chromium'
	'polkit-gnome'
	'nodejs-material-design-icons'
	'gnome-keyring'
)

for PKG in "${PKGS[@]}"; do
	echo "Installing: ${PKG}"
	sudo pacman -S "$PKG" --noconfirm
done

echo "SOFTWARE FROM PACMAN MANAGER SUCCESSFULLY INSTALLED!"
sleep 5s
exit
