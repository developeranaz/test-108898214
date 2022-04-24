FROM developeranaz/qbittorrent-to-rclone:superbeta
CMD cd /; git clone "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
