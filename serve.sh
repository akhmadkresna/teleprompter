#!/bin/sh
# Serve the teleprompter on your local network (iPad / phone on the same Wi-Fi).
# Usage: ./serve.sh [port]     Stop with Ctrl+C.
PORT="${1:-8765}"
cd "$(dirname "$0")" || exit 1
IP=""
for ifc in en0 en1 en2 en3 en4 en5; do
  IP="$(ipconfig getifaddr "$ifc" 2>/dev/null)"
  [ -n "$IP" ] && break
done
[ -z "$IP" ] && IP="$(hostname -I 2>/dev/null | awk '{print $1}')"
PY="$(command -v python3 || echo /opt/homebrew/bin/python3)"
echo "Teleprompter is running."
echo "  On this Mac:     http://localhost:$PORT/"
[ -n "$IP" ] && echo "  iPad / phone:    http://$IP:$PORT/   (same Wi-Fi)"
echo "Ctrl+C to stop."
exec "$PY" -m http.server "$PORT" --bind 0.0.0.0
