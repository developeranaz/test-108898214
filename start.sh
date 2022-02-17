#!/bin/sh
echo $PORT >/PORT
sed -i "s/80/$(cat /PORT)/g" /etc/nginx/http.d/default.conf
#sed -i "s/listen \[::]:80//g" /etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
