#!/usr/bin/sh
filename=$1
while read line; do
  # reading each line
  echo "$line"
  COMPONENT="$(echo $line | cut -d ' ' -f1 )"
  REVISION="$(echo $line | cut -d ' ' -f2 )"
  svn update -r $REVISION $COMPONENT
done<$filename
