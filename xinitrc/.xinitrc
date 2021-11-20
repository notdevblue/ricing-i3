#/bin/bash

exec picom &
exec ibus-daemon -d -r &
exec blueman-applet &
dbus-launch --sh-syntax --exit-with-session; pulseaudio --kill; pipewire &
i3
