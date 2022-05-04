#!/bin/bash

# username
if test -z "$username" 
then
      echo "username is empty using default "
else
      echo " --username = '$username'" >go_runner.sh
fi

# password
if test -z "$password" 
then
      echo "password is empty using default "
else
      echo " --password='$password'" >>go_runner.sh
fi


# webui
if test -z "$webui" 
then
      echo "webui is empty using default "
else
      echo " --awebui='$webui'" >>go_runner.sh
fi

# webuipath
if test -z "$webuipath" 
then
      echo "webui is empty using default "
else
      echo " --webuipath='$webuipath'" >>go_runner.sh
fi
