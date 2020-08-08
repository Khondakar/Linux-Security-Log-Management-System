#!/bin/bash
#Note: Search - Previous Month
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [10] SEARCH LOGS - PREVIOUS MONTH     ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search : "
read inputword

# Display the search result all time based on word search
sudo journalctl --since "1 month ago" | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportPreviousMonth.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportPreviousMonth.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
