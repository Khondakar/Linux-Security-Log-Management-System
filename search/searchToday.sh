#!/bin/bash
#Note: Search by Today's date
#Author:Khondakar

clear

echo -e "\\e[30;48;5;82m***  [2] SEARCH LOGS - TODAY     ***\e[0m"

# User input:
echo -n -e "Enter the Word you want to Search for Today : "
read inputword

# Display search results
sudo journalctl --since today | grep "$inputword" > /home/khondakar/workSpace/LMS/Reports/ReportTillToday.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportTillToday.txt | grep --color=always "$inputword" | more

echo "*----------------- End of Search Result! -----------------------*"

exit
