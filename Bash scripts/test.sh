#!/bin/bash

echo "we are the" `date`

echo -e "\n enter the path to directory"

read the_path

echo -e "\n you path has the follwing files and folders:"
ls $the_path