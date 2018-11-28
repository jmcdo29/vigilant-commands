#!/usr/bin/env sh
npm install -D $*
notify -t "Dev Install Complete" -m "Finished installing $* into dev dependencies." -i "$notifIcon"