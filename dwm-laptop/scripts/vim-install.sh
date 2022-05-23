#!/bin/bash
###################################################################
##                 _ _   _                  _  _            _    ##
## /\   /\___  ___(_) |_(_)_ __   __ _  ___(_)(_) ___ _ __ | |_  ##
## \ \ / / _ \/ __| | __| | '_ \ / _` |/ __| || |/ _ \ '_ \| __| ##
##  \ V /  __/ (__| | |_| | |_) | (_| | (__| || |  __/ | | | |_  ##
##   \_/ \___|\___|_|\__|_| .__/ \__,_|\___|_|/ |\___|_| |_|\__| ##
##                        |_|               |__/                 ##
###################################################################

echo "CONFIGURING VIM!"
sleep 3s
cd ~/dwm-laptop/vim/
cp .vimrc ~/
cp .vimrc.plug ~/
cd ~/
mkdir -p .vim/plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "VIM CONFIGURED!"
echo "TO INSTALL VIM PLUGINS YOU MUST ENTER VIM AND TYPE:"
echo " ' :PlugInstall ' TO INSTALL PLUGINS!"
sleep 10s
echo "You need to go to a '~/.vim/plugged/youcompleteme/' directory"
echo "And run the command 'python install.py' to compile the plug"
sleep 20s
exit
