[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

setxkbmap se &
xrandr --dpi 120 &
#nm-applet &
#exec i3

sxhkd -c ~/.config/bspwm/sxhkdrc &
exec bspwm
