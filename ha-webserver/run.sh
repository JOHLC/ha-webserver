#!/bin/sh
# Serve HTML files for Home Assistant Webserver Addon

WEB_ROOT="/data"
[ ! -d "$WEB_ROOT" ] && WEB_ROOT="/config/www"

PORT=${INGRESS_PORT:-8080}

cd "$WEB_ROOT"
exec python3 -m http.server "$PORT" --bind 0.0.0.0
