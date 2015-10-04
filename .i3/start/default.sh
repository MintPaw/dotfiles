i3-msg "append_layout .i3/start/default.json"
start-pulseaudio-x11 &
i3-sensible-terminal &
pidgin &
google-chrome-beta &
sleep 3; rm mm.cfg
