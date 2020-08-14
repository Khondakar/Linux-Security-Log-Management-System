#!/bin/bash
#Note: Search - by week
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [8] SEARCH LOGS - LAST 7 DAYS    ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search : "
read inputword

# Display the search result all time based on word search
sudo journalctl --since "1 week ago" | grep "$inputword" > ~/workSpace/LMS/Reports/ReportLast7Days.txt

# Display the result column wise with highlighted searching key word
column -t ~/workSpace/LMS/Reports/ReportLast7Days.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"
