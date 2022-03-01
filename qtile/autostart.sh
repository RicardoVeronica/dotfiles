#!/bin/sh

# keyborad config
# setxkbmap latam &

# enable tab in laptop mousepad
xinput set-prop "$(xinput -list --name-only | grep -i touch)" "libinput Tapping Enabled" 1 &

# image
nitrogen --restore &
