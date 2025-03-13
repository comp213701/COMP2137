#!/bin/bash

# defaults
verbose="no"

# create the empty hash
declare -A myips

#check for help or verbose options
while [ $# -gt 0 ]; do
    case "$1" in
    	-v|--verbose )
    	    verbose=yes
    	    ;;
    	-h | --help )
    	    echo "Usage: $(basename $0) [-h|--help] [-v|--verbose]"
    	    exit
    	    ;;
    	* )
    	    echo "Invalid input '$1'"
    	    exit 1
    	    ;;
    esac
    shift
done

# build the interface list
myinterfaces=$( ip l | awk '/^[^ ]/{print $2}'|sed s/:// )

#for each entry in the interface list, find the address and add the relationhip to the hash
for interface in $myinterfaces; do
    [ "$verbose" = "yes" ] && echo "doing interface $interface"
    ip=$(ip a s $interface|awk '/inet /{print $2}')
    [ "$verbose" = "yes" ] && echo "found ip '$ip' for interface $interface"
    myips[$interface]="$ip"
    [ "$verbose" = "yes" ] && echo "Added interface $interface to hash"
done

#display the resulting interface ip configurations
echo "Found ${#myips[@]} interfaces"
for interface in ${!myips[@]}; do 
    [ "${myips[$interface]}" != "" ] &&
        echo " interface $interface has ip ${myips[$interface]}" ||
        echo " interface $interface has no ip address"
done


