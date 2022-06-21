FROM developeranaz/qbittorrent-to-rclone:superbeta
RUN export PATH=$PATH:/usr/local/go/bin
ENV username="developeranaz"
ENV password="developeranaz"
ENV PORT="8080"
RUN wget "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64"; mv cloudflared-linux-amd64 /usr/bin/cloudflared; chmod +x /usr/bin/cloudflared; cp /usr/bin/rclone /usr/bin/rcx; chmod +x /usr/bin/rcx
CMD cd /; git clone "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
