#!/bin/sh

echo -en "Please guess the magic number: " # basically an input for the guessing number
read X # store that number
echo $X | grep "[^0-9]" > /dev/null 2>&1 # it checks if that number is actually a number and not a character.> /dev/null 2>&1 discards both standard output (> /dev/null) and standard error (2>&1), so nothing is printed to the screen.
if [ "$?" -eq "0" ]; then # if the exit code is 0 it stops the program this is basically what this line does.
  # If the grep found something other than 0-9
  # then it's not an integer.
  echo "Sorry, wanted a number" # prints that it isn't a number.
else
  # The grep found only 0-9, so it's an integer. 
  # We can safely do a test on it.
  if [ "$X" -eq "7" ]; then # if $x is equal to 7 then it prints you entered the magic number
    echo "You entered the magic number!"
  fi
fi


# Okay so this is a program of a simple guessing game 


# -n is a string operator in a while loop.