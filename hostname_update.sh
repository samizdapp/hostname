#!/bin/sh

export SET_HOSTNAME=$(cat /service/hostname/update | tr -d '\n')

./start.sh skip
