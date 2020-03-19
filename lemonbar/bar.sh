#!/usr/bin/env bash
Date() {
    DATE=$(date +%H:%M)
    echo -e "$DATE"
}

IP() {
    ETH=$(ip a s dev ens160 | awk -F'[ /]' '/inet /{print $6}')
    echo -e "$ETH"
}

vpn(){
        exist="$(ip a s dev tun0 | awk -F'[ /]' '/inet /{print $6}')"
        if [[ $exist ]]; then
                echo -e "$exist"
        else
                echo -e "No VPN"
        fi
}

vol_pa(){
    vol_pa="$(pamixer --get-volume-human)"
    vol_pa_clean="$(pamixer --get-volume)"
    if [[ $vol_pa_clean -eq muted ]]; then
        echo -e "$vol_pa"
    else
        echo -e "$vol_pa"
    fi
}

while true; do
    echo -e "%{c}%{A:pamixer -t:}$(vol_pa)%{A} | %{A:nordvpn connect de:}%{A3:nordvpn disconnect:}$(vpn)%{A}%{A} | $(IP) | $(Date)"
    sleep 1;
done
