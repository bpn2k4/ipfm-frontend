#!/bin/sh
CONFIG=""
for LINE in $(env | grep '^APP_'); do
  VAR=$(echo "$LINE" | awk -F= '{print $1}')
  VALUE=$(echo "$LINE" | cut -d '=' -f2-)
  CONFIG="$CONFIG""var $VAR = '$VALUE'\n"
done
printf "%b" "$CONFIG" > /usr/share/nginx/html/config.js
exec nginx -g 'daemon off;'
