#!/bin/sh

export SET_HOSTNAME=$(cat /service/hostname/update | tr -d '\n')

echo "got file update for hostname $SET_HOSTNAME"

./start.sh skip
