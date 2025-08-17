#!/bin/sh
# A simple script with a function...

add_a_user()
{
  USER=$1 # user is first parameter
  PASSWORD=$2 # password is second parameter
  shift; shift; # removes the first two arguments ($1 and $2)
  # Having shifted twice, the rest is now comments ...
  COMMENTS=$@ # all parameters
  echo "Adding user $USER ..." # prints add user
  echo useradd -c "$COMMENTS" $USER # -c it takes the following command to execute.
  echo passwd $USER $PASSWORD  # shows the useradd command with comments and username
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD" # prints everything else.
}

###
# Main body of script starts here
###
echo "Start of script..."
add_a_user bob letmein Bob Holness the presenter
add_a_user fred badpassword Fred Durst the singer
add_a_user bilko worsepassword Sgt. Bilko the role model
echo "End of script..."