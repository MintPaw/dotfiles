sleep 3

i3-msg "append_layout .i3/start/default.json"
start-pulseaudio-x11 &
xfce4-terminal &
pidgin &
google-chrome-beta &
sleep 3; rm mm.cfg
