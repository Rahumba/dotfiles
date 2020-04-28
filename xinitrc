#!/bin/sh
xrandr -s 1440x900 &
xrdb -l $HOME/.Xresources &
xsetroot -cursor_name left_ptr &
vmware-user &
emacs --daemon &
# bar &
# sleep 1
export GTK_THEME=Plata-Noir-Compact
export QT_STYLE_OVERRIDE=gtk2
export GDK_CORE_DEVICE_EVENTS=1
exec stumpwm
