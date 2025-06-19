#!/bin/sh
# Serve files from addon_config (/config)

WEB_ROOT="/config"
PORT=${INGRESS_PORT:-8080}

cd "$WEB_ROOT" || exit 1
exec python3 -m http.server "$PORT" --bind 0.0.0.0
