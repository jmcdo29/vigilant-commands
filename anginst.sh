#!/usr/bin/env sh
for package in $*
do
  installString=$installString@angular/$package' '
done
npm install -D $installString
notify -t "Type Install Finished!" -m "Finished Angular installation for $*." -i "$notifIcon"