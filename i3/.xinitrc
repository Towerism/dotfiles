xrdb -merge ~/.cache/wal/colors.Xresources
xrdb -merge ~/.Xresources
systemctl --user import-environment DISPLAY

if [ "$0" != "nvidia-xrun" ]; then
    source ~/.profile
    numlockx on
    eval $(keychain --quiet --eval ~/.ssh/id_rsa)
fi
i3
