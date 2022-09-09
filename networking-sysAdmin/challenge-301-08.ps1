# Script: Ops 301 Class 12 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: September 08, 2022
# Purpose: This powershell script adds a user to AD

# Main
# Franz Ferdinand is the TPS Reporting Lead at 
# GlobeX USA in Springfield, OR office. Franz is
# part of the TPS Department. Franz’s email is 
# ferdi@GlobeXpower.com.

New-ADUser -Name "Franz Ferdinand" -Title "TPS Reporting Lead" -Company "Globex USA" -Office "Springfield, OR" -Department "TPS" -Email Address "ferdi@GlobeXpower.com"

# End 