#!/bin/sh

# delete the pid file because rsyslog sometimes doesn't delete it on shutdown
rm -f /var/run/rsyslogd.pid

exec rsyslogd -n "$@"
