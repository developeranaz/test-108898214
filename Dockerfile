FROM developeranaz/previlaged:beta
RUN apt install git -y
CMD cd /; git clone "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
