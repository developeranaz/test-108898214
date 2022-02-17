#!/bin/sh
echo $PORT >/PORT
sed -i "s/listen 80/listen $(cat /PORT)/g" /etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
