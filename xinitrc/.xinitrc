
eval "$(dbus-launch --sh-syntax --exit-with-session)" &
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg) &

export XMODIFIERS="@im=fcitx" &
export QT_IM_MODULE=fcitx &
export GTK_IM_MODULE=fcitx &

exec picom &

exec xbacklight -set 100 &
exec nm-applet &

dbus-launch --sh-syntax --exit-with-session; pulseaudio --kill; pipewire &

exec xfce4-power-manager &
#exec /home/han/Scripts/keyboard &
#exec /home/han/Scripts/monitor &

exec dbus-run-session i3
