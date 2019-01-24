#! /bin/sh
# git add mod using POSIX shell
files=$(git diff --cached --name-status)
index=0
newArray=
addString=""
for i in ${files[*]}
do
  newArray[$index]=$i
  index=`expr $index + 1`
done
newIndex=0
while [ $newIndex -lt ${#newArray[*]} ]
do
  case "${newArray[$newIndex]}" in
  *'M'* | *'A'*)  newIndex=`expr $newIndex + 1`
          addString=$addString' '${newArray[$newIndex]};;
  *'D'* | *'R'*) newIndex=`expr $newIndex + 1`;;
  *) echo 'Found Nothing?'
  esac
  newIndex=`expr $newIndex + 1`
done
git add $addString
