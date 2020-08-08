#!/bin/bash
#Date: 30/Jun/2020
#Author: Khondakar
#Note: Set permission for ICMP request to allow/block PING from IPv4 & IPv6.

trap '' 2  # No control + c allowed

# Function
permissionON(){
	echo 1 | sudo tee /proc/sys/net/ipv4/icmp_echo_ignore_all	#Allow to PING
	echo -e "\e[31mICMP permission for IPv4 is ON now."
	echo -e "\e[30;48;5;240m                                                                       \e[0m" # Grey Line
}

permissionOFF(){
	echo 0 | sudo tee /proc/sys/net/ipv4/icmp_echo_ignore_all	#Block to PING
	echo -e "\e[31mICMP permission for IPv4 is OFF now."
	echo -e "\e[30;48;5;240m                                                                       \e[0m" # Grey Line
}

while true
do
	clear
	echo -e "\e[30;48;5;240m                                                                       \e[0m" # Grey Line
	echo -e "\e[30;48;5;184m\e[1m          SET PERMISSION FOR ICMP REQUEST TO IPv4 & IPv6               \e[0m"
	echo -e "\e[30;48;5;184m                                                                       \e[0m" # Yellow Line	
	echo -e "\e[30;48;5;240m                                                                       \e[0m" # Grey Line
  	echo -e "\e[30;48;5;184m\e[1mCHOOSE FROM THE BELOW OPTIONS:                                         \e[0m" 
	echo -e "\e[30;48;5;184mNote:This is temporary setup,restart will change back the permission   \e[0m"
	echo -e "\e[30;48;5;184m                                                                       \e[0m"
	echo -e "\e[30;48;5;184m[1] Allow access to IPv4 for PING.                                     \e[0m" 
  	echo -e "\e[30;48;5;184m[2] Block access to IPv4 for PING.                                     \e[0m"
	echo -e "\e[30;48;5;184m[3] Exit or Quit.                                                      \e[0m"
	echo -e "\e[30;48;5;184m                                                                       \e[0m"	

	echo -e "\e[30;48;5;240m                                                                       \e[0m" # Grey Line	

	echo -n -e "\e[96mPlease select number and press <ENTER> key :  " 
 	read usrinput  # Create variable to retains the answer
	echo -e "\e[30;48;5;240m                                                                       \e[0m" # Grey Line 	
	case "$usrinput" in
   		1) permissionON ;;	
   		2) permissionOFF ;;	
		3) exit ;;		
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done
