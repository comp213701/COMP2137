#!/bin/bash

echo My command was "'$0'"
echo The first thing on the line after the command was "'$1'"
echo The second thing on the line after the command was "'$2'"
echo The third thing on the line after the command was "'$3'"

echo There were $# things on the line besides the command "'$0'"

while [ $# -gt 0 ]; do

	if [ "$1" = "-v" ]; then
		verbose=yes
	elif [ "$1" = "-h" ]; then
		echo "You can type this command with -v for verbose, or -h for help"
		exit
	fi
	shift
	
done

[ "$verbose" = "yes" ] && echo script does work now
  
  echo working
  sleep 3
  echo working
