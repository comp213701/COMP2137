#!/bin/bash
# this is the demo helloworld.sh script, showing how to use shellcheck and gedit
# it prints out Hello World
# # it uses a template

cat <<EOF

----------
TEXT FOR DEMO: Hello World

User:      $USER
Host:      $HOSTNAME
Process #: $$
----------

EOF
