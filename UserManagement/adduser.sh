#!/bin/bash
#Note: Add users & set password.
#Author: Khondakar

# Create Users:
echo -e "\e[33mHow many User you want to create?"
read input

# For loop use to create as many user as you want
for ((i=1; i<= $input; i++))
do
 sudo useradd -m Usr$i; # Create user based on the input value
done
echo -e "\e[33m--- Users Successfully Created -----"

# Create users:
#sudo useradd -m Usr1
#sudo useradd -m Usr2
#sudo useradd -m Usr3
#	sudo cp -r /etc/skel/. /auto1
#	sudo cp -r /etc/skel/. /auto2
#	sudo cp -r /etc/skel/. /auto3

# Assign password for the users:
echo -e "\e[33mPlease set password for user - 'Usr1' :"
sudo passwd Usr1
echo -e "\e[33mPlease set password for user - 'Usr2' :"
sudo passwd Usr2
echo -e "\e[33mPlease set password for user - 'Usr3' :"
sudo passwd Usr3
echo -e "\e[34m------ Users Created & Passwords being set!! --------"
