#!/bin/bash
#Note: Search by Date and Time
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [1] SEARCH LOGS - Search All Date     ***\e[0m"

# User input:
echo -e "\e[30;48;5;196m\e[1m\e[5mTIPS:\e[0m\e[25m Enter the Date format like this example: YYYY-MM-DD HH:MM:SS"

echo -n -e "Enter the Start Date : " 
read startdate

echo -n -e "Enter the End Date : "
read enddate

echo -n -e "Enter the Word you want to Search : "
read inputword

# Save the search result in a file
sudo journalctl --since "$startdate" --until "$enddate" | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportBaseOnDateTimeSearch.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportBaseOnDateTimeSearch.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
