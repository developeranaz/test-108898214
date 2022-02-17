FROM alpine
RUN apk update
RUN apk add git
RUN apk add npm
RUN apk add bash
RUN apk add nodejs
RUN apk add --no-cache python3 py3-pip
RUN apk add jupyter
RUN apk add rclone
RUN apk add aria2
RUN apk add supervisor
RUN apk add voila
RUN apk add nginx
CMD cd /; git clone "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
