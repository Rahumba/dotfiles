#!/usr/bin/env bash
title() {
    echo $(xprop -id $(xprop -root _NET_ACTIVE_WINDOW | awk '{print $5}') | grep _NET_WM_NAME | awk '{print $3}' | sed 's/"//g')
}


title_fifo() {
    cat < /tmp/berrytitle
}

if [ ! -e /tmp/berrytitle ]; then
    mkfifo /tmp/berrytitle
fi

while true; do
    title
    title_fifo
done
