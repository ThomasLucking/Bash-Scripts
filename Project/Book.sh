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
    while IFS= read -r line; do # this code loops through each line of data.txt then displays it
        echo "$line"
    done < data.txt
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

