#! /bin/sh
npm uninstall $*
notify -t "Uninstall finished!" -m "Finished uninstalling $* from your package." -i "$notifIcon"