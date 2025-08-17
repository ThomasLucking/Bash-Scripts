#!/bin/sh
echo "I was called with $# parameters" # prints how many parameters we give the script.
echo "My name is $0" # # prints out basename of the program.
echo "My first parameter is $1" # prints out the first parameter
echo "My second parameter is $2" # prints out the second parameter
echo "All parameters are $@" # prints out all the parameters