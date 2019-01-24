#! /bin/sh
count=0
for file in $( find . -name "*.ts" )
do
  if [[ ! $file == *".spec."* && ! -a .$(echo $file | cut -d "." -f 2).spec.ts ]]; then
    touch .$(echo $file | cut -d "." -f 2).spec.ts 
    let count=$count+1
  fi
done
notify -t "Tests Made!" -m "Tests made for $count files in $(pwd)." -i "$notifIcon"