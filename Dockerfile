FROM developeranaz/qbittorrent-to-rclone:superbeta
RUN export PATH=$PATH:/usr/local/go/bin
CMD cd /; git clone "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
