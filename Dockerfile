FROM developeranaz/qbittorrent-to-rclone:superbeta
RUN export PATH=$PATH:/usr/local/go/bin
ENV username="developeranaz"
ENV password="developeranaz"
ENV PORT="8080"
ENV GITCLONE="https://github.com/developeranaz/test-108898214"
ENV REPONAME="test-108898214"
ENV BRANCH="cf.agro-and-individual.nginx.index"
RUN wget "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64"; mv cloudflared-linux-amd64 /usr/bin/cloudflared; chmod +x /usr/bin/cloudflared; cp /usr/bin/rclone /usr/bin/rcx; chmod +x /usr/bin/rcx
#CMD cd /; git clone "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
CMD cd /; git clone -b "$BRANCH" "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
