#!/bin/bash
#Author: Khondakar
#Date: 30/June/2020
#Note: Service log will show all the activities related to services.
#Process: 

trap '' 2  # No control + c allowed

#Functions
serviceList(){
	sudo systemctl list-unit-files --type service
}


activeServices(){
	#sudo systemctl list-units --type=service
	sudo systemctl list-units --type=service --state=running
}


failServices(){
	sudo systemctl --failed
}

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	
	
	echo -e "\e[30;48;5;49m                        [M E N U]                        \e[0m"
  	echo -e "\e[30;48;5;49m\e[1m                      SERVICE LOGS                       \e[0m" 
	echo -e "\e[30;48;5;49m                                                         \e[0m"  	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line

  	echo -e "\e[30;48;5;49m\e[1mCHOOSE FROM THE BELOW OPTIONS:                           \e[0m" 
	echo -e "\e[30;48;5;49m                                                         \e[0m"
	echo -e "\e[30;48;5;49m[1] List of Installed Services.                          \e[0m" 
  	echo -e "\e[30;48;5;49m[2] List of Services Active & Running.                   \e[0m"
	echo -e "\e[30;48;5;49m[3] List of Failed Services.                             \e[0m"
	echo -e "\e[30;48;5;49m[4] Exit or Quit.                                        \e[0m"
	echo -e "\e[30;48;5;49m                                                         \e[0m"	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	

	echo -n -e "\e[96mPlease select number and press <ENTER> key :  " 
 	read usrinput  # Create variable to retains the answer
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line 	
	case "$usrinput" in
   		1) serviceList ;;	
   		2) activeServices ;;	
		3) failServices ;;	
		4) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

