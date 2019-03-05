#!/bin/sh

CURRENT_DIR=($(pwd))
NB_PROCESS_MAX=5

for ((i = 0; i < NB_PROCESS_MAX; i++))
do
	nohup $CURRENT_DIR/mp3/playRandomMp3.sh 0</dev/null >/dev/null &
	sleep $(( ( RANDOM % 7 ) ));
done