# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 9, 2022
# Purpose: This script returns the IPv4 address of the computer.
# Must include a variable and function 

# Main

# This function uses Select-String cmdlet to only return the IPv4 
# address string and no other extraneous information.
$Path="C:\Users\eslco\OneDrive\Desktop\network_report.txt" # or ".\network_report.txt"

function getIPaddress 
{
    # Create a local file called network_report.txt that holds the contents
    # of an ipconfig /all command.
    ipconfig /all | Out-File -FilePath $Path

    # Use Select-String to search network_report.txt and return only 
    # the IP version 4 address
    Select-String -Path $Path -Pattern 'IPv4 Address'
}

# Call function to get IP address 
getIPaddress

# Remove the network_report.txt when you are finished searching it. 
Remove-Item -Path $Path

# End 

