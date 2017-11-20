#!/bin/sh

if [ "$#" -ne 4 ] ||  [ "$1" = "help" ]; then
   echo "Usage: mvn_init.sh [simple|webapp] [groupId] [artifactId] [version]"
   exit 0
fi

ARCHETYPE=maven-archetype-simple

if [ "$1" = "webapp" ]; then
   ARCHETYPE=maven-archetype-webapp
fi

mvn -e archetype:generate -DgroupId=$2 -DartifactId=$3 -Dversion=$4 -DarchetypeArtifactId=$ARCHETYPE -DinteractiveMode=false
