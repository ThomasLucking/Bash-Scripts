#!/bin/bash

search_function() {
    echo "Enter username to search:"
    read username
    grep -i "$username" data.txt || echo "Not found."
}

add_function() {
    echo "Please add your username."
    read username_add
    echo "Please add your telephone number."
    read telephone_add
    echo "please add your email."
    read email_add
    
    {
        echo "Name: [ $username_add ]"
        echo "Phone number: [ $telephone_add ]"
        echo "Email: [ $email_add ]"
    } >> data.txt # the extra {} allows you to write multiple things in a file.
    echo "Added username: $username_add"
    echo "Added phone number: " $telephone_add
    echo "Added email: " $email_add 
}

remove_edit_function() {
    echo "everything inside data.txt"   
    
    # Custom counter implementation instead of nl
    person_counter=1 # the person counter
    line_counter=1 # line counter
    
    while IFS= read -r line || [ -n "$line" ]; do
        # Skip empty lines
        if [[ -z "$line" ]]; then # this checks if the string is empty. if it is then continue
            continue
        fi
        # Check which field this line represents based on line position
        field_position=$(((line_counter - 1) % 3 + 1))
        
        case $field_position in
            1) echo "Person $person_counter - $line" ;;
            2) echo "Person $person_counter - $line" ;;
            3) echo "Person $person_counter - $line"
               ((person_counter++)) ;; # Increment person counter after email (3rd line)
        esac
        
        ((line_counter++))
    done < data.txt
    
    total_lines=$(wc -l < data.txt) # this calculates how many lines are there
    num_people=$((total_lines / 3)) # then divides them by 3 

    echo "there are $num_people people in the database" # this tells you how many people are in the database based on math 
    read -p "Which person do you want to edit (1-$num_people): " person_num # asks which person you want to modify

    if [[ $person_num -lt 1 || $person_num -gt $num_people ]]; then # this checks if the user inputed a correct user number.
        echo "Invalid person number."
        return
    fi
    
    
    echo "Which field would you like to modify (name/phone/email):" # this asks the user which field they would like to modify
    read field  # reads the value of the input.
    
    #  this calculates  which line number to change based on person and field
    case $field in 
        name) line_number=$((( person_num - 1) * 3 + 1)) ;;
        phone) line_number=$((( person_num - 1) * 3 + 2)) ;;
        email) line_number=$((( person_num - 1) * 3 + 3)) ;; # The formula calculates the line by counting all lines in previous 3-line person blocks and then adding the field's position within the current person's block.
        *) echo "invalid field."; return ;;
    esac

    read -p "Enter the new value for $field: " new_value # this asks the new value for that specific line.
    
    tmpfile=$(mktemp) # this line creates a temporary file to avoid confusion and replacing contents over each other.
    counter=0 # this basically makes sure which line we are reading from the data.txt file

    # Read file line by line and only modify the target line
    while IFS= read -r line || [ -n "$line" ]; do # this reads the file line by line IFS prevents leading or trailing whitespaces -r prevents interpreting backslashes as escape character. and the -n $line prevents the read even if it doesn't end with a newline character
        ((counter++)) # increments the counter by 1 to keep track of the current line
        # this checks if this is the line we want to modify
        if [[ $counter -eq $line_number ]]; then
            if [[ $field == "name" ]]; then
                echo "Name: [ $new_value ]" >> "$tmpfile"
            elif [[ $field == "phone" ]]; then
                echo "Phone number: [ $new_value ]" >> "$tmpfile"
            elif [[ $field == "email" ]]; then
                echo "Email: [ $new_value ]" >> "$tmpfile"
            fi
        else
            # Keep the original line unchanged
            echo "$line" >> "$tmpfile"
        fi
    done < data.txt # reads from the data.txt

    mv "$tmpfile" data.txt # moves everything from the temporary file to data.txt 
    echo "Modification successful." # success
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