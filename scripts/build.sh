#!/bin/bash

# username
if test -z "$username" 
then
      echo "username is empty using default "
else
      echo " --username = '$username'"
fi

# password
if test -z "$password" 
then
      echo "password is empty using default "
else
      echo " --password='$password'"
fi
