#!/bin/bash


set -x # this is basically it shows what which line of bash does and executes

echo "Please enter a number: "
read num

if [ $num -gt 0 ]; then
  echo "$num is positive"
elif [ $num -lt 0 ]; then
  echo "$num is negative"
else
  echo "$num is zero"
fi

# this is another example, a person enter a number and it reads it. then it checks if the num is greater than 0,
# then it prints that num is positive. if it's lt than 0 then it's negative. and if it's neither. then itŝ 0.
