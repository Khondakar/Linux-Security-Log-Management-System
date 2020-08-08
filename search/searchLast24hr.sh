#!/bin/bash
#Note: Search - Last 24 hours ago
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [7] SEARCH LOGS - LAST 24 HOURS     ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search : "
read inputword

# Display the search result all time based on word search
sudo journalctl --since "24 hours ago" | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportLast24hours.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportLast24hours.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
