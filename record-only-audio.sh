#!/bin/bash

#LIST_DEVICES=`ffmpeg -f avfoundation -list_devices true -i ""`
OUT=${1-output.aac}
FFMPEG=/usr/local/bin/ffmpeg

# Number of device sound create in MIDI Setup
DEVICE_SOUND_NUMBER=2

# Number of channels from records sound
CHANNEL=2

# Format file output
FORMAT_OUT=aac

# Sample rate - amostragem
SAMPLE=96K

$FFMPEG -f avfoundation -ac $CHANNEL -i :$DEVICE_SOUND_NUMBER -c:a $FORMAT_OUT -ab $SAMPLE $OUT
