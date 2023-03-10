#!/usr/bin/bash

xrandr --output HDMI-A-0 --primary --mode 1920x1080 --rate 74.97
xrandr --newmode "1080p" 148.50 1920 2008 2052 2200 1080 1084 1089 1125 +hsync +vsync
xrandr --addmode DisplayPort-0 1080p
xrandr --output DisplayPort-0 --mode 1080p --left-of HDMI-A-0
nitrogen --restore
