#!/bin/bash
#Note: Create Groups
#Author:Khondakar

# User input:
echo -e "\e[33mHow many Group you want to create?"
read input

# Create groups based on user input
for ((c=1; c<= $input; c++))
do
 sudo addgroup grp$c;
done


#sudo addgroup grp1
#sudo addgroup grp2
#sudo addgroup grp3
#	sudo addgroup nsw
#	sudo addgroup qld
echo -e "\e[33m---------* Groups Successfully Created! *-----------"
