#!/bin/bash
#Note: Search User Inputted Key Word in the Logs
#Author:Khondakar

clear

# User input:
echo -e "\e[30;48;5;196m\e[1m\e[5m TIPS: \e[0m\e[25m \e[96mSearch words like - [Error, denied, failed, Fail, unregistered, Unauthenticated]"
echo -n -e "\e[97mWhat Do You Want To Search:"	# -n will take user input not in new line
read input

# Save the search result in a file
#egrep "$input" /var/log/auth.log > result.txt

#sudo journalctl --since "2020-06-22" --until "2020-06-22 23:00" | grep "$input"

sudo journalctl | grep "$input" > /home/khondakar/workSpace/LMS/Reports/ReportForSearchResult.txt

# sudo egrep -r "$input" /var/log > result.txt

# Display the result column wise with highlighted searching key word
column -t /home/khondakar/workSpace/LMS/Reports/ReportForSearchResult.txt | sudo grep --color=always "$input" | more		


echo -e "---------* End of Search Result! *-----------"
