#!/bin/bash

USERS=" dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for user in $USERS ; do

  ping $user -c 1 2>&1 >/dev/null

  if [ $? = 0 ] ; then

	echo $user ": alive"

  else

	echo $user ": dead"

  fi

done

exit 0
