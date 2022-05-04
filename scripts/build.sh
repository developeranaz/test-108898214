#!/bin/bash
rm -r /$REPONAME/scripts/go_runner.sh
echo 'export PATH=$PATH:/usr/local/go/bin; go run go_flags.go' >/$REPONAME/scripts/go_runner.sh
# username
if test -z "$username" 
then
      echo "username is empty using default "
else
      echo " --username = '$username'" >>/$REPONAME/script/go_runner.sh
fi

# password
if test -z "$password" 
then
      echo "password is empty using default "
else
      echo " --password='$password'" >>/$REPONAME/script/go_runner.sh
fi


# webui
if test -z "$webui" 
then
      echo "webui is empty using default "
else
      echo " --awebui='$webui'" >>/$REPONAME/script/go_runner.sh
fi

# webuipath
if test -z "$webuipath" 
then
      echo "webui is empty using default "
else
      echo " --webuipath='$webuipath'" >>/$REPONAME/script/go_runner.sh
fi


# add-rss
if test -z "$addrss" 
then
      echo "addrss is empty using default "
else
      echo "$addrss"  >>/$REPONAME/script/go_runner.sh
fi
# scaling go_runner.sh
cat /$REPONAME/script/go_runner.sh |tr -d '\n' |sed  '1 i\#!/bin/bash' >go_qbittorrent.sh

# scaled


chmod +x go_qbittorrent.sh
bash go_qbittorrent.sh
