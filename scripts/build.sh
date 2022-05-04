#!/bin/bash
rm -r go_runner.sh
echo "go run go_flags.go" >> go_runner.sh

# username
if test -z "$username" 
then
      echo "username is empty using default "
else
      echo " --username = '$username'" >>go_runner.sh
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


# add-rss
if test -z "$addrss" 
then
      echo "addrss is empty using default "
else
      echo "$addrss"  >>go_runneroff.sh
fi
# scaling go_runner.sh
cat go_runner.sh |tr -d '\n' |sed  '1 i\#!/bin/bash' >go_qbittorrent.sh

# scaled


chmod +x go_qbittorrent.sh
bash go_qbittorrent.sh
