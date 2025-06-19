#!/usr/bin/with-contenv bash
# Serve HTML files for Home Assistant Webserver Addon with Ingress support

WEB_ROOT="/data"
[ ! -d "$WEB_ROOT" ] && WEB_ROOT="/config/www"

PORT=${INGRESS_PORT:-8080}

cd "$WEB_ROOT"
exec python3 -m http.server "$PORT" --bind 0.0.0.0
