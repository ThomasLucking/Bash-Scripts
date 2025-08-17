#!/bin/bash
i=1
while [[ $i -le 10 ]] ; do
   echo "$i"
  (( i += 1 )) # incrementation of a number or basically i = i + 1
done

# while i is less than 10 prints 1 and add + 1 to i until 10.


for i in {1..5}
do
    echo $1
done

# this is a for loop that prints from 1 to 5 




