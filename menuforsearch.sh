#!/bin/bash
#Author: Khondakar
#Date: 13/June/2020
#Note: Menu for Search and generate Reports.

# 0: Emergency. The system is unusable.
# 1: Alert. A condition has been flagged that should be corrected immediately.
# 2: Critical. This covers crashes, coredumps, and significant failures in primary applications.
# 3: Error. An error has been reported, but it is not considered severe.
# 4: Warning. Brings a condition to your attention that, if ignored, may become an error.
# 5: Notice. Used to report events that are unusual, but not errors.
# 6: Information. Regular operational messages. These do not require action.
# 7: Debug. Messages put into applications to make it easier for them to debug them.

trap '' 2  # No control + c allowed

#Function
error24hr(){
	sudo journalctl --since "24 hours ago" -p 0..5 > /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning24HourAgo.txt #Emergency, Alert, Critical, Error and Warning logs
	
	# Display the result column wise with highlighted searching key word
	column -t /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning24HourAgo.txt | more	
	echo -e "\e[31m--------------------- ## Report generated. ## ---------------------"
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}


errorLastHour(){
	sudo journalctl --since "1 hour ago" -p 0..5 > /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning1HourAgo.txt	#Emergency, Alert, Critical, Error and Warning logs
	
	# Display the result column wise with highlighted searching key word
	column -t /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning1HourAgo.txt | more
	echo -e "\e[31m--------------------- ## Report generated. ## ---------------------"	
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}


errorLast4Hour(){
	sudo journalctl --since "4 hour ago" -p 0..5 > /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning4HourAgo.txt	#Emergency, Alert, Critical, Error and Warning logs
	
	# Display the result column wise with highlighted searching key word
	column -t /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning4HourAgo.txt | more
	echo -e "\e[31m--------------------- ## Report generated. ## ---------------------"	
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}


errorLast15mins(){
	sudo journalctl --since "15 min ago" -p 0..5 > /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning15MinsAgo.txt	#Emergency, Alert, Critical, Error and Warning logs
	
	# Display the result column wise with highlighted searching key word
	column -t /home/khondakar/workSpace/LMS/Reports/ReportsEmergencyAlertCriticalErrorWarning15MinsAgo.txt | more
	echo -e "\e[31m--------------------- ## Report generated. ## ---------------------"
	echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
}

while true
do
  	clear # clear screen for each loop of menu
  	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

	echo -e "\e[30;48;5;112m                         [M E N U]                       \e[0m"
  	echo -e "\e[30;48;5;112m\e[1m                   SEARCHING & REPORTING                 \e[0m" 
	echo -e "\e[30;48;5;112m                                                         \e[0m"  	
	
	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

  	echo -e "\e[30;48;5;112m\e[1mCHOOSE FROM THE BELOW OPTIONS:                           \e[0m" 
	echo -e "\e[30;48;5;112m                                                         \e[0m"
	echo -e "\e[30;48;5;112m\e[1mGeneral Search & Reports:                                \e[0m"	
	echo -e "\e[30;48;5;112m [1] Search - all time.                                  \e[0m" 
  	echo -e "\e[30;48;5;112m [2] Today.                                              \e[0m"
	echo -e "\e[30;48;5;112m [3] Yesterday.                                          \e[0m"
	echo -e "\e[30;48;5;112m [4] Last 15 minutes.                                    \e[0m"
	echo -e "\e[30;48;5;112m [5] Last 60 minutes.                                    \e[0m"
	echo -e "\e[30;48;5;112m [6] Last 4 hours.                                       \e[0m"
	echo -e "\e[30;48;5;112m [7] Last 24 hours.                                      \e[0m"
	echo -e "\e[30;48;5;112m [8] Last 7 days.                                        \e[0m"	
	echo -e "\e[30;48;5;112m [9] Last 30 days.                                       \e[0m"
	echo -e "\e[30;48;5;112m [10] Previous month.                                    \e[0m"	
	echo -e "\e[30;48;5;112m [11] Previous year.                                     \e[0m"
	echo -e "\e[30;48;5;112m                                                         \e[0m"
	echo -e "\e[30;48;5;112m\e[1mCritical Error Report:                                   \e[0m"
	echo -e "\e[30;48;5;112m [12] Errors in the last 15 mins.                        \e[0m" 
  	echo -e "\e[30;48;5;112m [13] Errors in the last hour.                           \e[0m"
	echo -e "\e[30;48;5;112m [14] Errors in the last 4 hours.                        \e[0m"	
	echo -e "\e[30;48;5;112m [15] Errors in the last 24 hours.                       \e[0m"
	echo -e "\e[30;48;5;112m [16] Exit or Quit.                                      \e[0m"
	echo -e "\e[30;48;5;112m                                                         \e[0m"	
	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

	echo -n "Please select number and press <ENTER> key : " 
 	read usrinput  # Create variable to retains the answer
  	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line
 	case "$usrinput" in
   		1) sudo chmod +x ./search/searchAllTime.sh #Run this as super user
		   ./search/searchAllTime.sh ;;	
   		2) sudo chmod +x ./search/searchToday.sh
		   ./search/searchToday.sh ;;	
		3) sudo chmod +x ./search/searchByYesterday.sh
		   ./search/searchByYesterday.sh ;;	
		4) sudo chmod +x ./search/searchLast15min.sh
		   ./search/searchLast15min.sh ;; 
		5) sudo chmod +x ./search/searchLast60min.sh
		   ./search/searchLast60min.sh ;; 
		6) sudo chmod +x ./search/searchLast4hr.sh
   		   ./search/searchLast4hr.sh ;;
		7) sudo chmod +x ./search/searchLast24hr.sh
   		   ./search/searchLast24hr.sh ;;	
		8) sudo chmod +x ./search/searchByWeek.sh
   		   ./search/searchByWeek.sh ;;
		9) sudo chmod +x ./search/searchLast30Days.sh
   		   ./search/searchLast30Days.sh ;;
		10) sudo chmod +x ./search/searchPreviousMonth.sh
   		   ./search/searchPreviousMonth.sh ;;
		11) sudo chmod +x ./search/searchPreviousYear.sh
   		   ./search/searchPreviousYear.sh ;;
		12) errorLast15mins ;;
		13) errorLastHour ;;
		14) errorLast4Hour ;;
		15) error24hr ;;
		16) exit ;;		# Exit from the Main Menu
  	esac
  	echo -e "\e[31mPress the <ENTER> key to continue.."
  	read input # This cause a pause so we can read the output
  		   # of the selection before the loop clear the screen
done

