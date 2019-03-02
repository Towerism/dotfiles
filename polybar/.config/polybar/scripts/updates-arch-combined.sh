#!/bin/bash

set -o pipefail

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi
updates_aur=$(yay -Qum 2> /dev/null | wc -l) 
if [ "$?" -ne 0 ]; then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" -gt 0 ]; then
    echo "$updates_arch  $updates_aur"
else
    echo ""
fi
