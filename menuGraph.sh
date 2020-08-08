#!/bin/bash
#Author: Khondakar
#Date: 08/Aug/2020
#Note: Menu for Analytics and plot graphs

# ------- Categories ----------------------------------------------------------------------
# 0: Emergency. The system is unusable.
# 1: Alert. A condition has been flagged that should be corrected immediately.
# 2: Critical. This covers crashes, coredumps, and significant failures in primary applications.
# 3: Error. An error has been reported, but it is not considered severe.
# 4: Warning. Brings a condition to your attention that, if ignored, may become an error.
# 5: Notice. Used to report events that are unusual, but not errors.
# 6: Information. Regular operational messages. These do not require action.
# 7: Debug. Messages put into applications to make it easier for them to debug them.
# ------- ** ------------------------------------------------------------------------------

trap '' 2  # No control + c allowed

#Function:
categories(){
echo -e "\e[30;48;5;214m\e[1mNOTE:                                                    \e[0m"
echo -e "\e[30;48;5;214m 0: Emergency issue.                                     \e[0m"
echo -e "\e[30;48;5;214m 1: Alert.                                               \e[0m"
echo -e "\e[30;48;5;214m 2: Critical issue.                                      \e[0m"
echo -e "\e[30;48;5;214m 3: Error.                                               \e[0m"
echo -e "\e[30;48;5;214m 4: Warning.                                             \e[0m"
echo -e "\e[30;48;5;214m 5: Notice.                                              \e[0m"
echo -e "\e[30;48;5;214m 6: Information.                                         \e[0m"
echo -e "\e[30;48;5;214m 7: Debug.                                               \e[0m"
echo -e "\e[30;48;5;214m                                                         \e[0m"
}

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	
	
	echo -e "\e[30;48;5;214m                       [M E N U]                         \e[0m"
  	echo -e "\e[30;48;5;214m\e[1m                   IMPORTANT ANALYTICS                   \e[0m" 
	echo -e "\e[30;48;5;214m                                                         \e[0m"  	
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
	categories         # Call the function
  	echo -e "\e[30;48;5;214m\e[1mCHOOSE FROM THE BELOW OPTIONS:                           \e[0m" 
	echo -e "\e[30;48;5;214m                                                         \e[0m"
	
	echo -e "\e[30;48;5;214m[1] Last 24 Hours.                                       \e[0m" 
  	echo -e "\e[30;48;5;214m[2] Last 1 Week.                                         \e[0m"
	echo -e "\e[30;48;5;214m[3] Last 1 Month.                                        \e[0m"
	echo -e "\e[30;48;5;214m[4] Exit or Quit.                                        \e[0m"
	echo -e "\e[30;48;5;214m                                                         \e[0m"	

	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line	

	echo -n "Please select number and press <ENTER> key :  " 
 	read usrinput  # Create variable to retains the answer
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line 	
	case "$usrinput" in
   		1) sudo chmod +x ./graph/last24hrAnalytics.sh
		   ./graph/last24hrAnalytics.sh ;;	
   		2) sudo chmod +x ./graph/last1WeekAnalytics.sh
		   ./graph/last1WeekAnalytics.sh ;;	
		3) sudo chmod +x ./graph/last1MonthAnalytics.sh
		   ./graph/last1MonthAnalytics.sh ;;	
		4) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

