FROM alpine:latest

RUN apk add --update rsyslog \
    && rm -rf /var/cache/apk/*

EXPOSE 514 514/udp

VOLUME [ "/var/log" ]

COPY rsyslog.conf /etc/rsyslog.conf

ENTRYPOINT [ "rsyslogd", "-n" ]
