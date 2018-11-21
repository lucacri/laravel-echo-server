#!/usr/bin/with-contenv bash

if [ ! -f /app/laravel-echo-server.json ]; then
    cp /etc/laravel-echo-server.json /app/laravel-echo-server.json
    # Replace with environment variables
    sed -i "s|LARAVEL_ECHO_SERVER_DB|${LARAVEL_ECHO_SERVER_DB:-redis}|i" /app/laravel-echo-server.json
    sed -i "s|REDIS_HOST|${LARAVEL_ECHO_REDIS_HOST:-redis}|i" /app/laravel-echo-server.json
    sed -i "s|REDIS_PORT|${LARAVEL_ECHO_REDIS_PORT:-6379}|i" /app/laravel-echo-server.json
    sed -i "s|LARAVEL_ECHO_SERVER_DEBUG|${LARAVEL_ECHO_SERVER_DEBUG:-false}|i" /app/laravel-echo-server.json
    sed -i "s|LARAVEL_ECHO_AUTH_HOST|${LARAVEL_ECHO_AUTH_HOST:-http\:\/\/localhost}|i" /app/laravel-echo-server.json
    sed -i "s|REDIS_DB_BACKEND|${LARAVEL_ECHO_REDIS_DB_BACKEND:-0}|i" /app/laravel-echo-server.json
    sed -i "s|LARAVEL_ECHO_SERVER_PORT|${LARAVEL_ECHO_SERVER_PORT:-6001}|i" /app/laravel-echo-server.json
fi