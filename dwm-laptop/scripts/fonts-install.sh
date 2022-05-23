#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

# All possible needed fonts
echo "Installing a large group of fonts"
sleep 3s

PKGS=(
	'dina-font'
	'tamsyn-font'
	'ttf-bitstream-vera'
	'ttf-croscore'
	'ttf-dejavu'
	'ttf-droid'
	'gnu-free-fonts'
	'ttf-ibm-plex'
	'ttf-liberation'
	'ttf-linux-libertine'
	'noto-fonts'
	'ttf-roboto'
	'tex-gyre-fonts'
	'ttf-ubuntu-font-family'
	'ttf-anonymous-pro'
	'ttf-cascadia-code'
	'ttf-fantasque-sans-mono'
	'ttf-fira-mono'
	'ttf-hack'
	'ttf-fira-code'
	'ttf-inconsolata'
	'ttf-jetbrains-mono'
	'ttf-monofur'
	'adobe-source-code-pro-fonts'
	'cantarell-fonts'
	'inter-font'
	'ttf-opensans'
	'gentium-plus-font'
	'ttf-junicode'
	'adobe-source-han-sans-otc-fonts'
	'adobe-source-han-serif-otc-fonts'
	'noto-fonts-cjk'
	'noto-fonts-emoji'
)

for PKG in "${PKGS[@]}"; do
	echo "Installing: ${PKG}"
	sudo pacman -S "$PKG" --noconfirm
done

echo "All fonts installed!"
sleep 3s
exit

