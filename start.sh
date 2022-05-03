#!/bin/sh
echo $PORT >/PORT
cd $REPONAME
while :
    do
export PATH=$PATH:/usr/local/go/bin; go run ./go/go_flag.go --PORT=$(cat /PORT) --awebui="false" --awebuipath="vuetorrent" --appname="revel-6"

#export PATH=$PATH:/usr/local/go/bin; go run ./go/go_qbittorrent.go --PORT=$(cat /PORT) --awebui="false" --awebuipath="vuetorrent"
done
