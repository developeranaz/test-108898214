#!/bin/bash
if test -z "$username" 
then
      echo "username empty using default username"
else
      echo " --username = '$username'"
fi
