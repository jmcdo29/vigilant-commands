#! /bin/sh
count=0
for file in $( find . -name "*.$1" )
do 
  if [[ ! $file = *"node_modules"* ]]; then
    cp $file .$(echo $file | cut -d "." -f 2).$2
    rm $file
    let count=$count+1
  fi
done
notify -t "Files updated!" -m "Updated $count files from .$1 to .$2 in $(pwd)" -i "$notifIcon"