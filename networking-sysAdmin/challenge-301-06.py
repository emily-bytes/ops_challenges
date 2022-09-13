import os

# Script: Ops 301 Class 06 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 9/6/2022
# Purpose: This Python script executes the hardware 
# spec-fetching bash script written in Ops 201; must 
# use three variables and print three times 

# Main

# declare three variables containing bash operations 
ip_address = os.popen('ip a').read()
name = os.popen('whoami').read() 
list_hardware = os.popen('sudo lshw -short').read()

# # Computer Name
print('Computer Name : ' + name)    # print(os.uname())
print('IP Address : ' + ip_address)
print('List Hardware : ' + list_hardware)

# End



