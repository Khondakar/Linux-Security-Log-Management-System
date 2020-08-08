#!/bin/bash
#Note: Search - Previous Year
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [11] SEARCH LOGS - PREVIOUS YEAR     ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search : "
read inputword

# Display the search result all time based on word search
sudo journalctl --since "1 year ago" | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportPreviousYear.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportPreviousYear.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
