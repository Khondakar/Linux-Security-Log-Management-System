#!/bin/bash
#Author: Khondakar
#Date: 30/June/2020
#Note: Files Compression and Backup Process

# Make directory
sudo mkdir /home/khondakar/workSpace/LMS/backupfolder 
chmod +x ./workSpace/LMS/backupfolder

# clear screen
clear 

  	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

	echo -e "\e[30;48;5;11m                      [M E N U - 1]                      \e[0m"
  	echo -e "\e[30;48;5;11m\e[1m                   COMPRESSION & BACKUP                  \e[0m" 
	echo -e "\e[30;48;5;11m                                                         \e[0m"  	
	
	echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

# -----------------------------------------------------------------  	
#Specify folders whose backup is to be taken in variables
#f1="/home/nishkarshraj/Desktop/Automation-using-Shell-Scripts"
#f2="/home/nishkarshraj/Desktop/Computer-Graphics"
#f3="/home/nishkarshraj/Desktop/HelloWorld"

#tar = Tape Archive tool for compression
#Creating same backup tar file for all specified folders
#tar -cvf /backupfolder/backup.tar $f1 $f2 $f3
#------------------------------------------------------------------

# Show folders
sudo ls -l

echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line

# User Input
echo -n -e "\e[97mWhich folder you want to backup (/home/khondakar/workSpace/LMS/search): "	
read foldername

# Compress the folder with foldername + date and take backup
# Date format: DD_MM_YYYY_HH_MM_AM
backupfilename="backup_`date +%d`_`date +%m`_`date +%Y`_`date +%I`_`date +%M`_`date +%p`.tar";

# Create compressed file using tar and move to backup folder
sudo tar cvf /home/khondakar/workSpace/LMS/backupfolder/$backupfilename $foldername

# Confirmation msg
echo -e "\e[30;48;5;238m                                                         \e[0m" # Grey Line
echo -e "\e[30;48;5;11m                      Backup Completed                   \e[0m"


# Move to Backup folder
cd /home/khondakar/workSpace/LMS/backupfolder

# List the content
echo -n -e "\e[93mBackup File name : "
sudo ls

# List the disk usage
echo -n -e "\e[93mFile size : "
sudo du -sh

echo -e "\e[30;48;5;11m                                                         \e[0m" # Grey Line




