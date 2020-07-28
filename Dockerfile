FROM alpine:latest

RUN apk add --no-cache --update samba-common-tools samba-server

EXPOSE 445/tcp

HEALTHCHECK --interval=1m --timeout=10s CMD nc -z 127.0.0.1 445 || exit 1

ENTRYPOINT ["smbd", "--no-process-group", "--foreground", "--log-stdout"]
