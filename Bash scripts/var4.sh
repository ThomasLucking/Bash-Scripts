#!/bin/sh
while [ "$#" -gt "0" ] # this is saying if the parameters are greater than o
do
  echo "\$1 is $1" # print the parameters
  shift # this removes the first parameter
done   