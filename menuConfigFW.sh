#!/bin/bash
#Author: Khondakar
#Date:04/July/2020
#Note: Configure Firewall and set permission to connect through IP address.

# No control + c allowed
trap '' 2  

# --- Functions (start) --------
FWStatuscheck(){
	sudo ufw status verbose
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWInstallation(){
	sudo apt-get update && sudo apt-get upgrade	
	sudo apt-get install ufw
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWEnable(){
	sudo ufw enable
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWDisable(){
	sudo ufw disable
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWLogon(){
	sudo ufw logging on
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWAppList(){
	sudo ufw app list
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWEnableConnections(){
	sudo ufw allow ssh
	sudo ufw allow http
	sudo ufw allow 80/tcp
	sudo ufw allow https
	echo "\e[96m*-- Allow to access and connect from SSH, HTTP, HTTPS, 80/TCP --*"
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWAllowIP(){
	echo -e "\e[96mHow to give input, here is an example: 192.168.1.104" 
	echo -n -e "\e[96mPlease enter IP address to allow connection :  " 		#\e[96m - Light cyan
 	read usrinput 

	sudo ufw allow from '$usrinput'
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWAllowPortRange(){
	echo -e "\e[96mExample: 1000:2000/tcp OR 3000:4000/udp." 
	echo -n -e "\e[96mPlease enter Port range to allow connection :  " 		#\e[96m - Light cyan
 	read usrinput 

	sudo ufw allow '$usrinput'
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWDisplayRules(){
	sudo ufw status numbered
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWDeleteRules(){
	sudo ufw status numbered
	echo -n -e "\e[96mPlease enter the number to delete rules from above:  "	#\e[96m - Light cyan
 	read usrinput
	
	sudo ufw delete $usrinput
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

FWReset(){
	sudo ufw reset
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}
# -- Functions (end) ---------

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	
	
	echo -e "\e[30;48;5;178m                        [M E N U]                        \e[0m"
  	echo -e "\e[30;48;5;178m\e[1m                   CONFIGURE FIREWALL                    \e[0m" 
	echo -e "\e[30;48;5;178m                                                         \e[0m"  	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line

  	echo -e "\e[30;48;5;178m\e[1mCHOOSE FROM THE BELOW OPTIONS:                           \e[0m" 
	echo -e "\e[30;48;5;178m                                                         \e[0m"
	echo -e "\e[30;48;5;178m\e[1mSetup:                                                   \e[0m"
	echo -e "\e[30;48;5;178m [1] Firewall Status check.                              \e[0m" 
  	echo -e "\e[30;48;5;178m [2] Install Firewall.                                   \e[0m"
	echo -e "\e[30;48;5;178m [3] Enable Firewall.                                    \e[0m"
	echo -e "\e[30;48;5;178m [4] Disable Firewall.                                   \e[0m"
	echo -e "\e[30;48;5;178m [5] Enable Firewall Log.                                \e[0m"
	echo -e "\e[30;48;5;178m                                                         \e[0m"
	echo -e "\e[30;48;5;178m\e[1mConfiguration:                                           \e[0m"
	echo -e "\e[30;48;5;178m [6] Show all application profile.                       \e[0m"
	echo -e "\e[30;48;5;178m [7] Enable basic connections for Firewall.              \e[0m"
	echo -e "\e[30;48;5;178m [8] Allow IP address to access connection.              \e[0m"
	echo -e "\e[30;48;5;178m [9] Allow Port range to access connection.              \e[0m"
	echo -e "\e[30;48;5;178m                                                         \e[0m"
	echo -e "\e[30;48;5;178m\e[1mRules:                                                   \e[0m"
	echo -e "\e[30;48;5;178m [10] Display Firewall Rules.                            \e[0m"
	echo -e "\e[30;48;5;178m [11] Delete Firewall Rules.                             \e[0m"
	echo -e "\e[30;48;5;178m [12] Reset Firewall.                                    \e[0m"
	echo -e "\e[30;48;5;178m [13] Exit or Quit.                                      \e[0m"
	echo -e "\e[30;48;5;178m                                                         \e[0m"	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	

	echo -n -e "\e[96mPlease select number and press <ENTER> key :  " 
 	read usrinput  # Create variable to retains the answer
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line 	
	case "$usrinput" in
   		1) FWStatuscheck ;;	
   		2) FWInstallation ;;	
		3) FWEnable ;;
		4) FWDisable ;;	
		5) FWLogon ;;
		6) FWAppList ;;
		7) FWEnableConnections ;;
		8) FWAllowIP ;;
		9) FWAllowPortRange ;;
		10) FWDisplayRules ;;
		11) FWDeleteRules ;;
		12) FWReset ;;
		13) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

