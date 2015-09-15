# Set X colours
xrdb -merge ~/.Xresources
xrandr --dpi 96
xbindkeys
TERMINAL=gnome-terminal

exec i3 >> .i3log
