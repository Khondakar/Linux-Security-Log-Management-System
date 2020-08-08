#!/bin/bash
#Note: Delete existing users
#Author:Khondakar


# Remove users
sudo userdel Usr1
sudo userdel Usr2
sudo userdel Usr3

# Delete user's directory from /home
sudo rm -r /home/Usr1
sudo rm -r /home/Usr2
sudo rm -r /home/Usr3
echo -e "\e[33m-------* Users Successfully Deleted *--------"
