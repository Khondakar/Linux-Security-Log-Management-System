#!/bin/bash
#Note: Search - from yesterday
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [3] SEARCH LOGS - FROM YESTERDAY     ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search : "
read inputword

# Display the search result all time based on word search
sudo journalctl --since yesterday --until today | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportFromYesterday.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportFromYesterday.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
