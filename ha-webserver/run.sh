#!/usr/bin/with-contenv bashio
# Serve HTML files for Home Assistant Webserver Addon with Ingress support

# Use /data or /config/www as the web root
WEB_ROOT="/data"
if [ ! -d "$WEB_ROOT" ]; then
  WEB_ROOT="/config/www"
fi

# Use the port provided by Home Assistant for ingress
PORT=${INGRESS_PORT:-8080}

cd "$WEB_ROOT"
exec python3 -m http.server "$PORT" --bind 0.0.0.0
