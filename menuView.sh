#!/bin/bash
#Author: Khondakar
#Date: 13/June/2020
#Note: Menu for View Log


trap '' 2  # No control + c allowed

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	
	
	echo -e "\e[30;48;5;214m                       [M E N U]                         \e[0m"
  	echo -e "\e[30;48;5;214m\e[1m                       VIEW LOGS                         \e[0m" 
	echo -e "\e[30;48;5;214m                                                         \e[0m"  	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line

  	echo -e "\e[30;48;5;214m\e[1mCHOOSE FROM THE BELOW OPTIONS:                           \e[0m" 
	echo -e "\e[30;48;5;214m                                                         \e[0m"
	echo -e "\e[30;48;5;214m[1] Application Log.                                     \e[0m" 
  	echo -e "\e[30;48;5;214m[2] System Log.                                          \e[0m"
	echo -e "\e[30;48;5;214m[3] Service Log.                                         \e[0m"
	echo -e "\e[30;48;5;214m[4] Admin & Security Log.                                \e[0m"
	echo -e "\e[30;48;5;214m[5] Exit or Quit.                                        \e[0m"
	echo -e "\e[30;48;5;214m                                                         \e[0m"	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	

	echo -n "Please select number and press <ENTER> key :  " 
 	read usrinput  # Create variable to retains the answer
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line 	
	case "$usrinput" in
   		1) sudo chmod +x ./applicationLog.sh #Run this as super user
		   ./applicationLog.sh ;;	
   		2) sudo chmod +x ./systemLog.sh
		   ./systemLog.sh ;;	
		3) sudo chmod +x ./serviceLog.sh
		   ./serviceLog.sh ;;	
		4) sudo chmod +x ./adminLog.sh
		   ./adminLog.sh ;; 
		5) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

