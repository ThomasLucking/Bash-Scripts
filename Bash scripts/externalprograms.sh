$ MYNAME=`grep "^${USER}:" /etc/passwd | cut -d: -f5` # this checks the username is etc/passwd and then cuts the : and then displays the 5th fieéd which is usally the username 
$ echo $MYNAME
Steve Parker


#!/bin/sh
find / -name "*.html" -print | grep "/index.html$" # this script looks for files with .html then filters it for the index.html
find / -name "*.html" -print | grep "/contents.html$" # Search the entire filesystem for .html files and list only those named contents.html
