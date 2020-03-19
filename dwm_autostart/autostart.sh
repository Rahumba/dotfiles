#!/usr/bin/env bash

dte(){
	dte="$(date "+%d.%m.%Y, %H:%M")"
	echo -e "\uf017 $dte"
}
vol_pa(){
	vol_pa="$(pamixer --get-volume-human)"
	if [[ $vol_pa -eq muted ]]; then
		echo -e "\ufc5d $vol_pa"
	else
		echo -e "\ufa7d $vol_pa"
	fi
}
net_ether(){
	net="$(ip a s | grep ens160 | grep inet | cut -d ' ' -f 6)"
	echo -e "\uf6ff $net"
}
vpn(){
	exist="$(ip a s | grep tun0 | grep inet | cut -d ' ' -f 6)"
	if [[ $exist ]]; then
		echo -e "\uf023 $exist"
	else
		echo -e "\uf13e No VPN"
	fi
}
up_time(){
	up_time="$(uptime | grep -ohe 'up .*' | sed 's/,//g' | awk '{ print $2 }')"
	echo -e " $up_time"
}
cmus_play(){
	if ps -C cmus > /dev/null; then

	artist=`cmus-remote -Q | 
		grep --text '^tag artist' | 
		sed '/^tag artistsort/d' | 
		awk '{gsub("tag artist ", "");print}'`
	title=`cmus-remote -Q  | 
		grep --text '^tag title' | 
		sed -e 's/tag title //' |
		awk '{gsub("tag title ", "");print}'`

	echo ": $artist - $title"; else echo ": -"; 
fi
}

wetter(){
    wttr="$(curl wttr.in/Fuerth?format=3)"
    wttr_cut="$(echo $wttr | cut -d " " -f 3)"
    echo -e " $wttr_cut"
}

while true; do
	#xsetroot -name " $(cmus_play) | $(up_time) | $(vpn) | $(net_ether) | $(vol_pa) | $(dte)"
	xsetroot -name " $(vpn)  $(net_ether)  $(dte)"
	sleep 1
done
