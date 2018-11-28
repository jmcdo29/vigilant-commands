#!/usr/bin/env sh
npm install -s $*
notify -t "Installation Finished." -m "Finished installing $* into dependencies." -i "$notifIcon"