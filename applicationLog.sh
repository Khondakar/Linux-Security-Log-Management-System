#!/bin/bash
#Author: Khondakar
#Date: 13/June/2020
#Note: Application Log (Apache 2 web server/Samba Server/CUPS Printing Sys log)

clear

echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line
echo -e "\\e[30;48;5;82m\e[1m            [1] APPLICATION LOG                          \e[0m"
echo -e "\\e[30;48;5;82m    Apache 2 web server/Samba Server/CUPS                \e[0m"
echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line


# Display the search result all time based on word search
sudo cat /var/log/apache2/access.log /var/log/apache2/error.log /var/log/cups/access_log /var/log/cups/error_log > result.txt
#sudo cat /var/log/apache2/access.log >> result.txt

# Display the result column wise with highlighted searching key word
column -t result.txt | more

echo -e "\e[92m*----------------- End of Search Result! -----------------------*"

exit
