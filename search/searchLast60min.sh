#!/bin/bash
#Note: Search - Last 60 minutes
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [5] SEARCH LOGS - LAST 60 MINUTES AGO     ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search : "
read inputword

# Display the search result all time based on word search
sudo journalctl --since "60 min ago" | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportLast60Mins.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportLast60Mins.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
