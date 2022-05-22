#!/bin/sh
# mock updater for local dev

export SET_HOSTNAME=$(cat /service/hostname/update | tr -d '\n')

echo "got file update for hostname $SET_HOSTNAME"

sleep 2

echo $SET_HOSTNAME > /service/hostname/current
