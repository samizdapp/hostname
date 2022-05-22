#!/bin/sh
# mock updater for local dev

echo $SET_HOSTNAME > /service/hostname/current
echo $SET_HOSTNAME > /service/hostname/update


if [ $# -eq 0 ]; then
    while inotifywait -e close_write /service/hostname/update; do ./hostname_update.sh; done
fi

exit 0