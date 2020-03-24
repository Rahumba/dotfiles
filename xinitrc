#!/bin/bash
xrandr -s 1440x900 &
#xrdb $HOME/.Xresources &
#picom --conf $HOME/.config/picom_simple.conf &
picom &
xsetroot -cursor_name left_ptr &
#sxhkd &
/home/florian/.fehbg &
#xsetroot -solid grey &
vmware-user &
dunst &
bar &
exec dwm
