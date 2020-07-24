FROM alpine:latest

RUN apk add --update samba-common-tools samba-server
RUN rm -rf /var/cache/apk/*

EXPOSE 445/tcp

ENTRYPOINT ["smbd", "--no-process-group", "--foreground", "--log-stdout"]
