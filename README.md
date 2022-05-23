# Suckless script for suckless installation and configuration of DWM and Suckless utils

This simple post Arch base installation script was made primarily for myself, because usually I'm too lazy to do this stuff manually all over again once I hope a DE and I hope a lot, but I always end up getting back to DWM. It's simply the best. Script was also created for those who wanna start using window manager and wanna try DWM for the first time, but don't know how or what they need to tweak, configure or install. The script installs and configures almost everything that you need to do after base installation of Arch Linux with Yay AUR helper installed.
                     
# Installation

## The script installs:
* `LXAppearance` Light-weight theme switcher from LXDE
* `PCManFM` Light-weight file manager from LXDE
* `nomacs` Free and open source image viewer
* `youtube-dl` A command-line program to download video and audio materials from YouTube and few other sites
* `veracrypt` Free open-source disk encryption software
* `htop`  A cross-platform terminal process viewer
* `termite` An easy to use and easy to configure keyboard-centric VTE-based terminal(obsoleted by Alacritty)
* `alacritty` A modern terminal emulator that comes with sensible defaults, but allows for extensive configuration NOTE: GPU BASED TERMINAL THAT CAN BE VERY FAST, BUT WON'T WORK ON OLDER GPU's - YOU NEED TO HAVE AT LEAST OpenGL 2.0 OR PREFERABLY HIGHER!
* Complete `PulseAudio` and `Alsa` utils
* `flameshot` Free and open-source, cross-platform tool to take screenshots
* `Jet Brains Mono` font
* `Nerd Font Symobols` font
* `Comic Mono` font
* `Awesome Font` font
* `Papirus icon theme` Icon theme
* `Dracula icon theme` Icon theme
* `Dracula gtk theme` GTK theme
* `zsh` ZSH shell
* `rofi` A window switcher, Application launcher and dmenu replacement
* `picom` A compositor for X, and a fork of Compton
* `feh` An X11 image viewer aimed mostly at console users
* `nitrogen` A fast and lightweight (GTK2) desktop background browser and setter for X
* `man` A user manual of any command that we can run on the terminal
* `rsync`A fast and versatile command-line utility for synchronizing files and directories between two locations over a remote shell
* `rclone` A tool that mounts any local, cloud or virtual filesystem as a disk
* `firefox` Web Browser
* `chromium` Web Browser
* `mpv` Best video player
* `vlc` Second best video player
* `LibreOffice` Microsoft Office free office
* `LightDM` LightDM login manager
* `unrar, uzip, zip` Compression tools
* `gtop` System monitoring dashboard for Linux
* `neofetch` Command-line system information tool written in bash
* `code` Visual Studio Code - A cross-platform text editor developed by Microsoft, built on the Electron framework
* `apache` Apache HTTP Server Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows
* `telegram-desktop` Telegram chat app
* `whatsapp` Whatsapp chat app
* `Viber` Viber chat app
* `Deadbeef` Music player
* `megatools` Tools for interacting with MEGA cloud
* `spotify` App for listening and streaming music, podcasts...
* `Xorg server and utilities with intel driver` Drivers

## The script also installs and configures:
* `Suckless utils` - Dwm 6.2 ; st 0.8.5 ; dmenu 5.1 ; slstatus ;
* Configures touchpad for laptops, enables tap to click option
* Configures rofi, lightdm-gtk-greeter, autostart script for DWM with Dracula default wallpapers, zsh shell with `p10k` and `oh-my-zsh`
* Configures MPV player to play videos in 720p format, stoping the laptops CPU to overheat
* Configures vim and vim plugins
* Makes a .xinitrc file in home directory in case LightDM won't start or breaks for some reason
* Contains Firefox-chrome-css that you need to install manually
* Sets `Comic Mono` font as a default font

## -Make sure that you have installed yay AUR helper!!!

* One by one, just copy the highlighted commands:

First, change directory to Downloads with a command:

`cd ~/Downloads/`

Clone the Github directory with a command:

`git clone https://github.com/vecitipacijent/Asus-dwm.git`

Change directory again with a command:

`cd Asus-dwm/`

Make an executable script with a command:

`chmod +x install.sh`

And finally, start a script with a command:

`sh install.sh` 

or

`./install.sh`
