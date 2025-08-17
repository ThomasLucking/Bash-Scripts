#!/bin/sh

old_IFS="$IFS"
IFS=:
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"

#This script temporarily changes the Internal Field Separator (IFS) to a colon (:) so that user input can be split into fields at colons instead of spaces. It prompts the user for colon-separated data, reads the first three fields into variables x, y, and z, then restores the original IFS. Finally, it prints the values of x, y, and z.

