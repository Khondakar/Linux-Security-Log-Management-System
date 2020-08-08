#!/bin/bash
#Author: Khondakar
#Date: 20/May/2020
#Note: User Management Automation

#check if user is root
#if [ $(id -u) -eq 0 ]; then

trap '' 2  # No control + c allowed

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
	echo -e "\e[30;48;5;3m                    [M E N U]                            \e[0m" 
  	echo -e "\e[30;48;5;3m\e[1m              Linux User Management                      \e[0m" 
	echo -e "\e[30;48;5;3m                                                         \e[0m" 
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
	
  	echo -e "\e[30;48;5;3m\e[1m CHOOSE FROM THE BELOW OPTIONS:                          \e[0m" #\e[33m - Yellow txt
	echo -e "\e[30;48;5;3m                                                         \e[0m" # Grey Line  	
	echo -e "\e[30;48;5;3m 1) Create Users & Set Password.                         \e[0m" #\e[32m - Green txt
  	echo -e "\e[30;48;5;3m 2) Create Groups.                                       \e[0m"
	echo -e "\e[30;48;5;3m 3) Add Users to Groups.                                 \e[0m"
	echo -e "\e[30;48;5;3m 4) Create .TXT files.                                   \e[0m"
	echo -e "\e[30;48;5;3m 5) Set Permission to Users.                             \e[0m"
	echo -e "\e[30;48;5;3m 6) Delete Users.                                        \e[0m"
	echo -e "\e[30;48;5;3m 7) Delete Groups.                                       \e[0m"
	echo -e "\e[30;48;5;3m 8) Exit or Quit.                                        \e[0m"
	echo -e "\e[30;48;5;3m                                                         \e[0m" # Grey Line	
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
	echo -n -e "\e[96mPlease select number and press <ENTER> key : " #\e[34m - Blue txt
 	read usrinput  # Create variable to retains the answer
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
 	case "$usrinput" in
   		1) sudo chmod +x ./UserManagement/adduser.sh #Run this as super user
		   ./UserManagement/adduser.sh ;;	# Run adduser.sh
   		2) sudo chmod +x ./UserManagement/creategrp.sh
		   ./UserManagement/creategrp.sh ;;	# Run creategrp.sh
		3) sudo chmod +x ./UserManagement/addusrtogrp.sh
		   ./UserManagement/addusrtogrp.sh ;;	# Run addusrtogrp.sh
		4) sudo chmod +x ./UserManagement/createtxtfile.sh
		   ./UserManagement/createtxtfile.sh ;; # Run createtxtfile.sh
		5) sudo chmod +x ./UserManagement/setpermission.sh
		   ./UserManagement/setpermission.sh ;; # Run setpermission.sh
		6) sudo chmod +x ./UserManagement/deleteuser.sh
   		   ./UserManagement/deleteuser.sh ;;	# Run deleteuser.sh
		7) sudo chmod +x ./UserManagement/grpdel.sh
		   ./UserManagement/grpdel.sh	;;	# Run grpdel.sh
		8) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

#else
#	echo "ELSE if condition.. "
#fi
