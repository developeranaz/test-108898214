#!/bin/sh

#aria2
if grep -Fxq "ria" /$REPONAME/scripts/message
then
    echo "found"
else
   echo 'notfound'
fi
