#!/bin/sh
killall conky
#conky -q -c $HOME/.config/conky/conky-mpd &
#conky -q -c $HOME/.config/conky/conky-time &
conky -q -c $HOME/.config/conky/conky-cpu &
conky -q -c $HOME/.config/conky/conky-network &
conky -q -c $HOME/.config/conky/conky-process & exit
