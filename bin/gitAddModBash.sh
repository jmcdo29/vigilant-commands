#! /bin/bash
# git add mod using bash
files=$(git diff --cached --name-status)
index=0
newArray=()
addString=""
for i in ${files[*]}
do
  newArray[$index]=$i
  index=$((index+1))
done
for ((i=0; i<${#newArray[*]}; i++))
do
  if [[ ${newArray[$i]} == *"A" ]] || [[ ${newArray[$i]} == *"M" ]]
  then
    i=$((i+1))
    addString=$addString' '${newArray[$i]}
  fi
  if [[ ${newArray[$i]} == *"D" ]] || [[ ${newArray[$i]} == *"R" ]]
  then
    i=$((i+1))
  fi
done;
git add$addString
