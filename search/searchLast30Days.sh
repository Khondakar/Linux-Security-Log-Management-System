#!/bin/bash
#Note: Search - Last 30 Days
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [9] SEARCH LOGS - LAST 30 DAYS     ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search : "
read inputword

# Display the search result all time based on word search
sudo journalctl --since "30 days ago" | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportLast30Days.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportLast30Days.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
