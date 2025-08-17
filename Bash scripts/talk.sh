#!/bin/sh

echo "Please talk to me ..."
while :
do
  read INPUT_STRING # this reads the text inputed 
  case $INPUT_STRING in
	hello) # if the text is hello it prints hello yourself!
		echo "Hello yourself!"
		;;
	bye) # if it's bye it will display see you again and exit the script
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
done
echo 
echo "That's all folks!"