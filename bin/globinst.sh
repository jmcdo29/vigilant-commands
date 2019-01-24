#! /bin/sh
npm install -g add $*
notify -t "Global Install Finished." -m "Finished installing $* into global dependencies." -i "$notifIcon"