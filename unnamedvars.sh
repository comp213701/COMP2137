#!/bin/bash

source ~/COMP2137/mylib.sh

declare -a stuffToProcess
while [ $# -gt 0 ]; do
	case "$1" in
		-h | --help )
			echo "Usage: $(basename $0) [-h | --help] [stuff ...]"
			exit 0
			;;
		* )
			stuffToProcess+=("$1")
		;;
	esac
	shift
done

[ ${#stuffToProcess[@]} ] && echo "Will do work on ${stuffToProcess[@]} (${#stuffToProcess[@]} items)"

index=0
while [ -n "${stuffToProcess[$index]}" ]; do
	myfunc ${stuffToProcess[$index]}
	index=$((index + 1))
done

