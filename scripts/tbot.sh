#!/bin/sh
while :
do
curl "$BOT" |sed 's///g' >/$REPONAME/config/message
sleep 10
done
