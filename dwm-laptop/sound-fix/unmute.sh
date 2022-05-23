# Checking if your Pulse Audio is muted or not:
echo "Checking if your PulseAudio is muted?"
sleep 2s
pamixer --get-volume-human
# Unmute Pulse Audio
echo "Unmute audio now!"
sleep 2s
pamixer -u
# Unmute Alsa audio manually, if it muted:
echo "Unmute Alsa manually, if it's muted!"
sleep 4s
alsamixer -c 0
