FROM alpine:latest

RUN apk add --no-cache --update samba-common-tools samba-server

EXPOSE 445/tcp

ENTRYPOINT ["smbd", "--no-process-group", "--foreground", "--log-stdout"]
