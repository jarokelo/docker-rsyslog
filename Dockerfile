FROM alpine:latest

RUN apk add --update rsyslog \
    && rm -rf /var/cache/apk/*

EXPOSE 514 514/udp

COPY rsyslog.conf /etc/rsyslog.conf

RUN touch /var/log/messages /var/log/secure /var/log/maillog /var/log/cron /var/log/spooler /var/log/boot.log
VOLUME [ "/var/log" ]

ENTRYPOINT [ "rsyslogd", "-n" ]
