#feh --bg-scale ~/.config/wallpapers/arch.png
feh --bg-scale ~/.config/wallpapers/dracula-ant.png
#picom --vsync -f &
picom --config ~/.config/picom/picom.conf -b &
exec slstatus &
xrdb -merge $HOME/.Xresources

