#!/bin/sh
xrandr -s 1440x900 &
xrdb -l $HOME/.Xresources &
xsetroot -cursor_name left_ptr &
vmware-user &
picom &
dunst &
bar &
sleep 1
hsetroot -fill $HOME/Bilder/minimal_japan.jpg &
export GTK_THEME=Adwaita-dark
export QT_STYLE_OVERRIDE=gtk2
exec dwm
