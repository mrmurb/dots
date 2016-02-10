[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

setxkbmap se &
xrandr --dpi 120 &
nm-applet &
exec i3
