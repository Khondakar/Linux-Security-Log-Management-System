#!/bin/bash
#Author: Khondakar
#Date: 30/June/2020
#Note: Menu for Backup Process
#Process: 

trap '' 2  # No control + c allowed

#Function
schedulingBackup(){
	echo -e "\e[96mFollow the below steps to setup the scheduling the backup process:"
	echo -e "Step 1: crontab -e"
	echo -e "Step 2: Choose option 1."
	echo -e "Step 3: Add these lines: (The crontab executes the backUp.sh file every day of the week at 12:00 pm and also finds and deletes the backup files that are older than five days.)"
	echo "           0 12 * * 1 ./backUp.sh"
	echo "           0 12 * * 1 ./deleteBackup.sh"
	echo -e "Step 4: Save and Exit."
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	
	
	echo -e "\e[30;48;5;49m                        [M E N U]                        \e[0m"
  	echo -e "\e[30;48;5;49m\e[1m               COMPRESSION & BACKUP PROCESS              \e[0m" 
	echo -e "\e[30;48;5;49m                                                         \e[0m"  	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line

  	echo -e "\e[30;48;5;49m\e[1mCHOOSE FROM THE BELOW OPTIONS:                           \e[0m" 
	echo -e "\e[30;48;5;49m                                                         \e[0m"
	echo -e "\e[30;48;5;49m[1] Start Backup Folder.                                 \e[0m" 
  	echo -e "\e[30;48;5;49m[2] Delete Backup Files.                                 \e[0m"
	echo -e "\e[30;48;5;49m[3] Scheduling Auto Backup Process.                      \e[0m"
	echo -e "\e[30;48;5;49m[4] Exit or Quit.                                        \e[0m"
	echo -e "\e[30;48;5;49m                                                         \e[0m"	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	

	echo -n -e "\e[96mPlease select number and press <ENTER> key :  " 
 	read usrinput  # Create variable to retains the answer
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line 	
	case "$usrinput" in
   		1) sudo chmod +x ./backUp.sh #Run this as super user
		   ./backUp.sh ;;	
   		2) sudo chmod +x ./deleteBackup.sh
		   ./deleteBackup.sh ;;	
		3) schedulingBackup ;;	
		4) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

