# Set X colours
xrdb -merge ~/.Xresources
xrandr --dpi 96
xbindkeys

exec i3 >> .i3log
