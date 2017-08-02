#!/bin/bash
TMPBG=~/scripts/locked.png
LOCK=~/scripts/lock.png
RES=1920x1080

ffmpeg -video_size $RES -y -i ~/.background -i $LOCK -filter_complex "overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG
i3lock -u -i $TMPBG
