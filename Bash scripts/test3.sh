#!/bin/sh
X=0
while [ -n "$X" ] # this script only runs if it the text isn't empty.
do
  echo "Enter some text (RETURN to quit)"
  read X
  echo "You said: $X" # prints out what you said basically
done
