# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar main --config=~/.config/polybar/config.ini &
# Launch secondary bar if second monitor is connected
if xrandr | grep -q 'HDMI-1 connected' ; then
  polybar second --config=~/.config/polybar/config.ini &
fi

echo "Polybar launched..."
