#!/bin/bash


search_function() {
    echo "Enter username to search:"
    read username
    grep -i "$username" data.txt || echo "Not found."
}

add_function() {
    echo "What would you like to add?"
    read username_add
    echo "$username_add" >> data.txt
    echo "Added username: $username_add"
}

remove_edit_function() {
    echo "This is the list of everything inside data.txt"
    cat data.txt
    tmpfile=$(mktemp) 
    while IFS="" read -r p || [ -n "$p" ]
    do
        echo "Current line: $p"
        # printf '%s\n' "$p"
        read  -u 0 -p "Do you want to modify this line? (Y/N) " answer < /dev/tty # so basically what the -u and 0 it basically tells the bash script to read from my keyboard and not from a redirected file
        if [[ "$answer" == "Y" || "$answer" == "y" ]]; then # this checks if the user said yes and if so it runs the condition
            read -p "Enter new value: " new_value < /dev/tty # it asks the user to enter a new value then stores it into a new value
            echo "$new_value" >> "$tmpfile" # appends the value into the tmpfile.
        else
            echo "$p" >> "$tmpfile" # this just makes sure that there are no changes to the original line.
        fi

    done < data.txt
    mv "$tmpfile" data.txt # writes the tmpfile to the data.txt
    echo "modification succesful" # prints modification succesful.

}

while true; do
    echo "1) Search"
    echo "2) Add"
    echo "3) Remove/Edit"
    echo "4) Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) search_function ;;
        2) add_function ;;
        3) remove_edit_function ;;
        4) break ;;
        *) echo "Invalid option" ;;
    esac
done

