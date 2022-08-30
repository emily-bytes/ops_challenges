#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: July 27, 2022
# Purpose: This script prints out the login history of users
# via use of a function

# Main
# This function prints the log in history of users by
# assigning the command to var and executing command
function print_login_history {
    var=$(last -i)
    echo "$var"
}

# This calls print_login_history function
print_login_history

# End

