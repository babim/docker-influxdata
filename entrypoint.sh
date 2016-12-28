#!/bin/sh
set -e

# make start
if [ ! -f "/etc/influxdb/influxdb.conf" ]; then cp /influxdb.conf /etc/influxdb/ ;fi

# ssh
if [ -f "/runssh.sh" ]; then /runssh.sh; fi

if [ "${1:0:1}" = '-' ]; then
    set -- influxd "$@"
fi

exec "$@"
