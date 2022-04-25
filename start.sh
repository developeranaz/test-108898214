#!/bin/sh
echo $PORT >/PORT
cd $REPONAME
go run ./go/go_qbittorrent.go --PORT=$(cat /PORT)

# sed -i "s/80/$PORT/g" /etc/nginx/http.d/default.conf
#sed -i "s/listen \[::]:80//g" /etc/nginx/sites-enabled/default
# nginx -g 'daemon off;'
jupyter notebook --ip=0.0.0.0 --port=$(cat /PORT) --NotebookApp.token='' --NotebookApp.password=''
