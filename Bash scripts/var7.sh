#!/bin/sh
echo -en "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then # -z zero length 
  myname=`whoami`
fi
echo "Your name is : $myname"

