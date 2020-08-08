#!/bin/bash
#Author: Khondakar
#Date: 30/June/2020
#Note: Administrative & Security Log


trap '' 2  # No control + c allowed

#Function
showSecurityLog() {
	sudo more /var/log/auth.log	# We've put together - dmesg and kern.log 	
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}
 
showAdminLog() {
	sudo cat /var/log/dmesg /var/log/kern.log > result.txt 	# We've put together - dmesg and kern.log 	
	cat result.txt | more
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}

usingSudo(){
	sudo grep -a --color=always "sudo:" /var/log/auth.log | more
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}


installUpdatePackg(){
	sudo more /var/log/dpkg.log
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}


showMailLog(){
	sudo more /var/log/mail.log
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}


usrLastLog(){
	sudo lastlog | more
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}


failedLogin(){
	sudo faillog | more
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}


usrLast(){
	sudo last | more
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}


usrActivity(){
	sudo w -i | more
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}


usrBadLogin(){
	sudo last -f /var/log/btmp | more
	echo -e "\e[92m----------------- End of Search Result -----------------------"
}

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

	echo -e "\e[30;48;5;250m                       [M E N U]                         \e[0m"
  	echo -e "\e[30;48;5;250m\e[1m                ADMIN & SECURITY LOGS                    \e[0m" 
	echo -e "\e[30;48;5;250m                                                         \e[0m"  	
	
	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line
 
  	echo -e "\e[30;48;5;250m\e[1mCHOOSE FROM THE BELOW OPTIONS:                           \e[0m" 
	echo -e "\e[30;48;5;250m                                                         \e[0m"
	echo -e "\e[30;48;5;250m[1] Show all Security logs.                              \e[0m" 
	echo -e "\e[30;48;5;250m[2] Show all Admin logs.                                 \e[0m" 
  	echo -e "\e[30;48;5;250m[3] Show who's using 'sudo' command.                     \e[0m"
	echo -e "\e[30;48;5;250m[4] Show recently installed & updated packages.          \e[0m"
	echo -e "\e[30;48;5;250m[5] Show Mail Server Logs.                               \e[0m"
	echo -e "\e[30;48;5;250m[6] Show User's Login History.                           \e[0m"
	echo -e "\e[30;48;5;250m[7] Show Failed Logins.                                  \e[0m"
	echo -e "\e[30;48;5;250m[8] Show User's last logged into the system.             \e[0m"
	echo -e "\e[30;48;5;250m[9] Show what Users are doing on the system.             \e[0m"	
	echo -e "\e[30;48;5;250m[10] Show all bad login attempts.                        \e[0m"
	echo -e "\e[30;48;5;250m[11] Exit or Quit.                                       \e[0m"
	echo -e "\e[30;48;5;250m                                                         \e[0m"	
	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

	echo -n "Please select number and press <ENTER> key : " 
 	read usrinput  # Create variable to retains the answer
  	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line
 	case "$usrinput" in
		1) showSecurityLog ;;	# Calling Function  		
		2) showAdminLog ;;	
   		3) usingSudo ;;	
		4) installUpdatePackg ;;	
		5) showMailLog ;;
		6) usrLastLog ;; 
		7) failedLogin ;;
		8) usrLast ;;	
		9) usrActivity ;;
		10) usrBadLogin ;;
		11) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

