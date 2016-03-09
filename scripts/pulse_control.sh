#!/bin/bash

ACTIVE_SINK=$(pactl list sinks | grep -o '^Sink #.*$' | awk '{print $2}' | sed '1s/^.//' )

if [[ $1 == 'mute' ]]
then
    pactl set-sink-mute $ACTIVE_SINK toggle
fi

if [[ $1 == 'inc' ]]
then
    pactl set-sink-volume $ACTIVE_SINK +"$2"%
fi

if [[ $1 == 'dec' ]]
then
    pactl set-sink-volume $ACTIVE_SINK -"$2"%
fi
