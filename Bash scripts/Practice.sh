#!/bin/bash
# hello this is a comment which has the same syntax as python.

# simple program that asks what is your age and name then prints it out.

country="Switzerland"

echo "What is your name?"
read entered_name

echo "What is your age?"
read entered_age

echo -e "\nMy name is $entered_name and my age is $entered_age."

# Define the_path or remove ls entirely
the_path="."   # current directory
ls "$the_path"


echo "we are the" `date`

echo -e "\n enter the path to directory"

read the_path

echo -e "\n you path has the follwing files and folders:"
ls $the_path
