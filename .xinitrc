#!/bin/sh
xsetroot -cursor_name left_ptr &
compton &
nitrogen --restore &
~/.config/polybar/launch.sh &
exec bspwm
