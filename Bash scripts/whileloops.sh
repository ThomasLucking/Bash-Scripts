#!/bin/sh
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ] # this keeps the loop going because if we haven't said bye why would the program stop?
do
  echo "Please type something in (bye to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done

# this while loop basically just loops around and prints whatever we say however when we want to leave we just say bye

#!/bin/sh
while : # this is a while true loop, true is defined as a semincolon :. this program will never stop.
do
  echo "Please type something in (^C to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done

