#!/usr/bin/env bash

getinfo(){
    wspaces=$(wmctrl -d | head -4 | grep -o "[0-9]  [-\*]" | rev | tr '\n' ' ' | cut -d '-' -f 1-4 | rev | sed -e 's/0/1/' -e 's/1/2/' -e 's/2/3/' -e 's/3/4/' | rev)
}


format(){
    echo "$wspaces" | sed\
        -e "s/\*  1/  %\{F#ffffff\}1/g"\
        -e "s/\*  2/  %\{F#ffffff\}2/g"\
        -e "s/\*  3/  %\{F#ffffff\}3/g"\
        -e "s/\*  4/  %\{F#ffffff\}4/g"\
        -e "s/\-/%\{F#a3a2a2\}/g"
    }

change(){
    cat < /tmp/berrychange
}

if [ ! -e /tmp/berrychange ]; then
    mkfifo /tmp/berrychange
fi

while true; do
    getinfo
    format
    change
done
