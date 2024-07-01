#!/bin/bash

# MPD Configuration
IP=127.0.0.1
PORT=6601

MUSIC_DIR="$HOME/Música"
TEMP_DIR="/tmp"
TEMP_FILE="$TEMP_DIR/mpdsongname.tmp"
TEMP_FILEB="$TEMP_DIR/mpdsongnameb.tmp"

file_name=$(mpc -h $IP -p $PORT current -f "%file%")
[ ! -f $TEMP_FILE ] && touch $TEMP_FILE

CONTENT=$(cat $TEMP_FILE)
CONTENTB=$(echo $file_name)

if [ "$CONTENT" == "$CONTENTB" ]; then
	# echo "Misma canción"
	exit 0
else
	# echo "Cancion diferente"
	echo $file_name > $TEMP_FILE
	rm -f /tmp/cover.jpg
	$(ffmpeg -i "$MUSIC_DIR/$file_name" "$TEMP_DIR/cover.jpg")
	exit 0
fi
