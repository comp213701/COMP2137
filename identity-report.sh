#!/bin/bash

# Create a script to display the current hostname, IP address, and gateway IP.

# display the current hostname
echo -n "Hostname: "
hostname

# display my ip address
# todo: add a label
ip r s default| awk '{print $9}'

# display my gateway ip
# todo: add a label
ip r s default| awk '{print $3}'

