#!/bin/bash

echo "The command was '$0' - $# args on the line"
echo "The first argument was '$1'"
cat <<EOF
The second arg was '$2'
The third arg was '$3'
The fourth parameter was '$4'
The fifth param was '$5'
EOF

echo "Shifting the command line left one position - $# args remaining to process"
shift

echo "The command was '$(basename $0)'"
echo "The first argument was '$1'"
cat <<EOF
The second arg was '$2'
The third arg was '$3'
The fourth parameter was '$4'
The fifth param was '$5'
EOF

echo "Shifting the command line left one position - $# args remaining to process"
shift

echo "The command was '$(basename $0)'"
echo "The first argument was '$1'"
cat <<EOF
The second arg was '$2'
The third arg was '$3'
The fourth parameter was '$4'
The fifth param was '$5'
EOF

