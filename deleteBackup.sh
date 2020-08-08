#!/bin/bash
#Author: Khondakar
#Date: 30/June/2020
#Note: Delete Backup (.tar) files

# clear screen
clear 

  	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

	echo -e "\e[30;48;5;11m                                                         \e[0m"
  	echo -e "\e[30;48;5;11m\e[1m                   Deleting Backup Files                 \e[0m" 
	echo -e "\e[30;48;5;11m                                                         \e[0m"  	
	
	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line


# Find and delete files which are older than 5 days
# sudo find "/home/khondakar/workSpace/LMS/backupfolder" -type f -mtime +5 -exec rm {} \;
sudo find "/home/khondakar/workSpace/LMS/backupfolder" -type f -mtime -1 -exec rm {} \;

echo -e "\e[31m--- Delete completed for all backup (.tar) files ---"
