# Set X colours
xrdb -merge ~/.Xresources
xbindkeys

exec i3 >> .i3log
