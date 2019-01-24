#! /bin/sh
for package in $*
do
  installString=$installString@types/$package' '
done
npm install -D $installString
notify -t "Type Install Finished!" -m "Finished type installation for $*." -i "$notifIcon"