#!/bin/sh

factorial()
{
  if [ "$1" -gt "1" ]; then
    i=`expr $1 - 1` # subtracts 1 from the input number
    j=`factorial $i` # recursively calls the factorial function on the smaller number
    k=`expr $1 \* $j` # multiplies the current number ($1) by the result of factorial($i)
    echo $k # prints the result for this recursion level
  else
    echo 1 # base case: factorial of 1 (or 0) is 1
  fi
}



while :
do
  echo "Enter a number:"
  read x
  factorial $x
done        


# this is a factorial algorith in bash basically.