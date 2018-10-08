xrdb -merge ~/.cache/wal/colors.Xresources
/usr/bin/pulseaudio --kill
/usr/bin/pulseaudio --start
numlockx on
systemctl --user import-environment DISPLAY
eval $(keychain --quiet --eval ~/.ssh/id_rsa)
i3
