#!/bin/sh
# Usage: mvn_update_versions.sh <current_version_tag> <new_version_tag>
# Example: mvn_update_versions.sh 2.1.0-SNAPSHOT 2.1.0

if [ "$#" -ne 2 ] ||  [ "$1" = "help" ]; then
   echo "Usage: mvn_update_version.sh [from_version] [to_version]"
   exit 0
fi

search=$1
replace=$2

for file in `find . -name pom.xml`; do
  grep "$search" $file &> /dev/null
  if [ $? -eq 0 ]; then
    echo Replacing version in $file
    sed -i "" 's|'"$search"'|'"$replace"'|g' $file
  fi
done
