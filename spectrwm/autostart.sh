#!/bin/bash

feh --bg-fill ~/Pictures/wall.jpg &
picom &
redshift &
mons -m &
sxhkd -c ~/.config/sxhkd/common &
setxkbmap -layout us,cz -variant ,qwerty
xsetroot -cursor_name left_ptr

