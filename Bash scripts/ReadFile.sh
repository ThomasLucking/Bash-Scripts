#!/bin/bash
while read line # this reads which line and the while loop checks if it can still read each line

do # do and done is like (condition) and (what happens if conditions met) it's like if(){} in js and c#
    echo $line # prints each line to the terminal
done < scripting.txt # the specific folder it read


