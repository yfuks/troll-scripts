#!/bin/sh

CURRENT_DIR=($(pwd))
MP3_DIR=$CURRENT_DIR/mp3
MP3_LIST=($(ls -d $MP3_DIR/*.mp3))

## number of mp3
while true;
do
	osascript -e 'set Volume 10'
	afplay -v 100 ${MP3_LIST[$(( ( RANDOM % ${#MP3_LIST[@]} )))]};
	sleep $(( ( RANDOM % 7 ) ));
done