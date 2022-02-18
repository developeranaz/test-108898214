#!/bin/sh

#aria2
if grep -Fxq "hi" fil
then
    echo "found"
else
   echo 'notfound'
fi
