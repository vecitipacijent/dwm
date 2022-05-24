#feh --bg-scale ~/.config/wallpapers/arch.png
#xrandr -s 1366x768
#xrandr -s 1600x900
#xrandr -s 1920x1200
#xrandr -s 1920x1080
feh --bg-scale ~/.config/wallpapers/dracula-ant.png
#picom --vsync -f &
picom --config ~/.config/picom/picom.conf -b &
#picom --experimental-backends --config ~/.config/picom/picom.conf
exec slstatus &
xrdb -merge $HOME/.Xresources

