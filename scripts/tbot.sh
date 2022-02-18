#!/bin/sh
curl -s "https://api.telegram.org/bot$BOTTOKEN/getUpdates"|tail -1|sed 's/,"text":"/\n/g;s/"}}]}//g' |tail -1 >/$REPONAME/config/message
sleep 10
