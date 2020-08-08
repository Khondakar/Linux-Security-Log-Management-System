#!/bin/bash
#Author: Khondakar
#Date: 13/June/2020
#Note: Linux Security & Log Management System.

# No control + c allowed
trap '' 2  

# Function
calculator(){
	echo -e "\e[30;48;5;81m\e[1m                     C A L C U L A T O R                          \e[0m"
	python3 BinToDec.py
	echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line
}

sysUpdateUpgrade(){
	sudo apt-get update && sudo apt-get upgrade
}

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line

	echo -e "\e[30;48;5;81m\e[1m              LINUX SECURITY & LOG MANAGEMENT SYSTEM              \e[0m" #\e[30;48;5;81m - Light cyan
  	echo -e "\e[30;48;5;81m\e[1m                       [M A I N - M E N U]                        \e[0m" 
	echo -e "\e[30;48;5;81m                                                                  \e[0m"  	
	echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line
	echo -e "\e[30;48;5;81m\e[1mCHOOSE FROM THE BELOW OPTIONS:                                    \e[0m" #\e[1m - Bold
	echo -e "\e[30;48;5;81m                                                                  \e[0m" # white line  	
	echo -e "\e[30;48;5;81m\e[1mSECURITY & MAINTENANCE:                                           \e[0m"
	echo -e "\e[30;48;5;81m [1] System Update & Upgrade.                                     \e[0m"
	echo -e "\e[30;48;5;81m [2] Backup Management.                                           \e[0m"
	echo -e "\e[30;48;5;81m [3] Memory Management.                                           \e[0m"
	echo -e "\e[30;48;5;81m [4] User Management.                                             \e[0m"
	echo -e "\e[30;48;5;81m [5] Setup Email Notification.                                    \e[0m"
	echo -e "\e[30;48;5;81m [6] Set Permission to access ICMP for IPv4/IPv6.                 \e[0m"
	echo -e "\e[30;48;5;81m [7] Configure Firewall.                                          \e[0m"
	echo -e "\e[30;48;5;81m [8] 2-Factor Authentication.                                     \e[0m"
	echo -e "\e[30;48;5;81m [9] Alerts.                                                      \e[0m"	
	echo -e "\e[30;48;5;81m                                                                  \e[0m" # white line
	echo -e "\e[30;48;5;81m\e[1mLOG:                                                              \e[0m"	
	echo -e "\e[30;48;5;81m [10] View Logs.                                                  \e[0m"
	echo -e "\e[30;48;5;81m [11] Search & Reporting.                                         \e[0m"
	echo -e "\e[30;48;5;81m [12] Analytics.                                                  \e[0m"
	echo -e "\e[30;48;5;81m                                                                  \e[0m" # white line
	echo -e "\e[30;48;5;81m\e[1mTOOLS:                                                            \e[0m"
	echo -e "\e[30;48;5;81m [13] Binary Calculator.                                          \e[0m"
	echo -e "\e[30;48;5;81m [14] IP Addressing & Subnetting Calculation.                     \e[0m"
	echo -e "\e[30;48;5;81m [15] Exit or Quit.                                               \e[0m"
	echo -e "\e[30;48;5;81m                                                                  \e[0m" # white space with Light cyan
	echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line
	echo -n -e "\e[96mPlease select number and press <ENTER> key :  " 		#\e[81m - Light cyan
 	read usrinput  # Create variable to retains the answer
  	echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line
 	case "$usrinput" in
   		1) sysUpdateUpgrade ;;
   		2) sudo chmod +x ./menuBackup.sh
		   ./menuBackup.sh ;;	
		3) sudo chmod +x ./memoryUsage.sh
		   ./memoryUsage.sh ;; 
		4) sudo chmod +x ./UserManagement/menuUsrManagement.sh
		   ./UserManagement/menuUsrManagement.sh ;; 
		5) echo -e "\e[81mWork In Progress..." ;;	
		6) sudo chmod +x ./ICMP/setPermissionICMP.sh
		   ./ICMP/setPermissionICMP.sh ;; 
		7) sudo chmod +x ./menuConfigFW.sh
		   ./menuConfigFW.sh ;; 
		8) echo -e "\e[81mWork In Progress..." ;;
		9) echo -e "\e[81mWork In Progress..." ;;
		10) sudo chmod +x ./menuView.sh 
		   ./menuView.sh ;;	
   		11) sudo chmod +x ./menuforsearch.sh
		   ./menuforsearch.sh ;;
		12) sudo chmod +x ./menuGraph.sh
		   ./menuGraph.sh ;;	
		13) calculator ;;	
		14) cat ./SubnetCal/SubnetCalculation.txt | less ;;
		15) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

