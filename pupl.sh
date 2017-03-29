#!/bin/bash

if [ $# -ge 2 ]; then
    echo "Must use push|pull"
fi

if [ "$1" == "push" ]; then
    cp config ~/.i3/config
    sudo cp i3status.conf /etc/i3status.conf
    exit 0
fi

if [ "$1" == "pull" ]; then
    cp ~/.i3/config config
    cp /etc/i3status.conf i3status.conf
    exit 0
fi

echo "Must use push|pull"
exit 1
