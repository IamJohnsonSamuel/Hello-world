#!/usr/bin/sh
#Usage of this script is 
#sh SVN_Update.sh <input_file_name>
#input filw should be in the format <component><space><Revision>
#So that thhis script can update the component to revisions mentioed in the input
#for generating the input use the script "SVNRevision.sh"

filename=$1
while read line; do
  # reading each line
  echo "$line"
  COMPONENT="$(echo $line | cut -d ' ' -f1 )"
  REVISION="$(echo $line | cut -d ' ' -f2 )"
  svn update -r $REVISION $COMPONENT
done<$filename
