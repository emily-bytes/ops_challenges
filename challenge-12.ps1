# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 9, 2022
# Purpose: This script returns the IPv4 address of the computer.

# Main

# Use Select-String cmdlet to only return the IPv4 address string 
# and no other extraneous information.

# Create a local file called network_report.txt that holds the contents
# of an ipconfig /all command.
ipconfig /all | Out-File -FilePath .\network_report.txt

# Use Select-String to search network_report.txt and return only 
# the IP version 4 address
Select-String -Path .\*txt -Pattern 'IPv4 Address'

# Remove the network_report.txt when you are finished searching it. 
Remove-Item -Path "C:\Users\eslco\OneDrive\Desktop\network_report.txt"

# End 
