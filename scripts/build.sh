#!/bin/bash
rm -r /$REPONAME/scripts/go_runner.sh
echo 'export PATH=$PATH:/usr/local/go/bin; pwd; go run go_flags.go' >/$REPONAME/scripts/go_runner.sh
# username
if test -z "$username" 
then
      echo "username is empty using default "
else
      echo " --username = '$username'" >>/$REPONAME/scripts/go_runner.sh
fi

# password
if test -z "$password" 
then
      echo "password is empty using default "
else
      echo " --password='$password'" >>/$REPONAME/scripts/go_runner.sh
fi


# webui
if test -z "$webui" 
then
      echo "webui is empty using default "
else
      echo " --awebui='$webui'" >>/$REPONAME/scripts/go_runner.sh
fi

# webuipath
if test -z "$webuipath" 
then
      echo "webui is empty using default "
else
      echo " --webuipath='$webuipath'" >>/$REPONAME/scripts/go_runner.sh
fi


# add-rss
if test -z "$addrss" 
then
      echo "addrss is empty using default "
else
      echo "$addrss"  >>/$REPONAME/scripts/go_runner.sh
fi
# scaling go_runner.sh
cat /$REPONAME/scripts/go_runner.sh |tr -d '\n' |sed  '1 i\#!/bin/bash' > /$REPONAME/scripts/go_qbittorrent.sh

# scaled


chmod +x /$REPONAME/scripts/go_qbittorrent.sh
bash /$REPONAME/scripts/go_qbittorrent.sh
