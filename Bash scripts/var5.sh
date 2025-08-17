#!/bin/sh
/usr/local/bin/my-command
if [ "$?" -ne "0" ]; then # $? is a special character that contains the exist status of the program so basically if it exists with 0 it's sucess and 1 failure.
  echo "Sorry, we had a problem there!"
fi

# this program just checks if it's a 0 and if it is it sends an echo saying there is a problem.