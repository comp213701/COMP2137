#!/bin/bash

echo "There are $# things on the command line"
echo "The first thing is '$1'"
echo "The second thing is '$2'"

shift

echo "shifted"

echo "Now the first thing is '$1', the second thing is '$2', and the number of things is $#"
