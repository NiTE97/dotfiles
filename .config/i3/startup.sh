#!/bin/bash
#Keyboard Layout
setxkbmap -layout de
#Screensaver disable
xset s off
xset -dpms
xset s noblank

#Monitor config
xrandr --auto
xrandr --output DP-5 --mode 1920x1080 --rate 60 --pos 0x1260
xrandr --output DP-2 --mode 2560x1440 --rate 165 --pos 1920x1080 --primary
xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --pos 2240x0

#Autostart Apps
picom &
~/.config/polybar/launch.sh &
nitrogen --restore &
ckb-next -b &
dunst &
numlockx &
megasync &
flameshot &
udiskie &
