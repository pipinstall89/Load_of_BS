#!/bin/bash

# Bash script for organizing a user list from windapsearch output
# Sample windapsearch --users output:
# cn: Doe, John
# userPrincipalName: john.doe@company.com
# don't forget to chmod +x the file 

file_path="/path/to/user_list.txt"

while IFS= read -r line
do
    if [[ $line == userPrincipalName:* ]]; then
        email="${line#userPrincipalName: }"
        echo "$email"
    fi
done < "$file_path"
