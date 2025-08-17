#!/bin/bash

a=70
b=90


# So -gt is greater than, and -lt is Less than.
if [ $a -gt 60 -a $b -lt 100 ]; then
    echo "Condition met!"
else
    echo "Conditions not met!"
fi  # this means the end of the if block 


# Okay so in short what this line is, it's basically if then [condition] and the condition is, is A(varirable) greater than(-gt)
# And(-a)  B(Variable) is less than(-lt) 100

# so when I run this program it displays condition met but if I change the value of a to 40 it will say conditions not met.

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


