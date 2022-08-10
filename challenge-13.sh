#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 10, 2022
# Purpose: This script asks a user to type a domain, 
# then displays information about the typed domain

# Main

# Assign filename 
filename='domain_info.txt'

# This function includes the following operations: 
# whois, dig, host, nslookup of domain name 
function getDomainInfo {
    whois $domain
    dig $domain
    host $domain
    nslookup $domain
}

# This loop continues to ask for domain name until user
# is done entering new domain names
until [ $menu = "n" ]; do 
    # Prompt for user input and store in variable
    echo Enter domain: 
    read domain

    # Call getDomainInfo function 
    getDomainInfo

    # Adds domain info into a text file


    # Ask user if they would like to repeat?
    echo "Would you like to get information for another domain? (yes = y/no = n)"
    read menu 
done 

# End