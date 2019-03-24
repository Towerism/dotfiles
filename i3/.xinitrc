xrdb -merge ~/.cache/wal/colors.Xresources
xrdb -merge ~/.Xresources
source ~/.profile
numlockx on
systemctl --user import-environment DISPLAY
eval $(keychain --quiet --eval ~/.ssh/id_rsa)
i3
