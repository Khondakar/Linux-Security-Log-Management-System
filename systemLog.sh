#!/bin/bash
#Author: Khondakar
#Date: 30/June/2020
#Note: System Log -> /var/log/syslog -> Ubuntu
#		     /var/log/messages -> Kali Linux 	


clear

echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
echo -e "\e[30;48;5;82m\e[1m            [2] SYSTEM LOG                               \e[0m"
#echo -e "\e[30;48;5;82m                                                         \e[0m"
echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line

#Display Syslog file
sudo cat /var/log/syslog /var/log/messages | more

# Display the result column wise with highlighted searching key word
#column -t result.txt | more

echo -e "\e[92m----------------- End of Search Result -----------------------"

exit
