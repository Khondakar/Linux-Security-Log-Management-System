#!/bin/bash
#Note: Search - all time. Use 'AND' to search multiple queries.
#Date: 07/07/2020
#Author:Khondakar

# Clear screen
clear

# Menu desing
echo -e "\e[30;48;5;238m                                                             \e[0m" # Grey Line
#echo -e "\e[30;48;5;82m                                                             \e[0m"
echo -e "\e[30;48;5;82m\e[1m                   SEARCH FROM LOGS                          \e[0m" 
#echo -e "\e[30;48;5;82m                                                         \e[0m"  	
echo -e "\e[30;48;5;82m              [1] SEARCH LOGS - ALL TIME                     \e[0m"
echo -e "\e[30;48;5;238m                                                             \e[0m" # Grey Lin
echo -e "\e[96mTips: Search any word or use 'AND' operator to join words."
echo -e "Try like below:"
echo -e "a) Fail"
echo -e "b) Error AND username"
echo -e "c) authentication failure AND testusr1"	
echo -e "\e[30;48;5;238m                                                             \e[0m" # Grey Lin

# User input:
echo -n -e "What would you like to search from logs: "
read usrinput

#userinput="authentication failure AND testusr1"
# Capture strings from User inputs, remove AND word from the txt
inputword1=$(echo ${usrinput%*AND*})   # authentication failure
inputword2=$(echo ${usrinput#*AND})    # testuser1

# Search using two patterns 
#sudo journalctl | grep -E 'authentication failure.*testusr1' | more

sudo journalctl | grep -E "$inputword1" | grep -E "$inputword2" > /home/khondakar/workSpace/LMS/Reports/ReportSearchResultAllTime.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportSearchResultAllTime.txt | more

echo "*----------------- End of Search Result -----------------------*"

# Find and delete existing 'result.txt' file
#if [ -f "/home/khondakar/workSpace/LMS/result.txt" ]
#then
# sudo rm /home/khondakar/workSpace/LMS/result.txt
#fi


exit
