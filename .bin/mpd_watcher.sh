#!/usr/bin/env bash
while true; do
    if ! mpc idle player; then
        sleep 5
        continue
    fi
    $HOME/.bin/songinfo
done
