if [[ 100 -gt $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' ) ]]; then
	pactl set-sink-volume @DEFAULT_SINK@ +5% && $refresh_i3status; else pactl set-sink-volume @DEFAULT_SINK@ 100%
fi
