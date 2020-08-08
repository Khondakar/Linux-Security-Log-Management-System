#!/bin/bash
#Date: 30/Jun/2020
#Author: Khondakar
#Note: Memory Management Information

clear

echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line
echo -e "\e[30;48;5;220m\e[1m                     MEMORY MANAGEMENT INFO                       \e[0m"
echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line

free -m | awk 'NR==2{printf "Memory Usage : %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'

df -h | awk '$NF=="/"{printf "Disk Usage   : %d/%dGB (%s)\n", $3,$2,$5}'

top -bn1 | grep load | awk '{printf "CPU Load     : %.2f\n", $(NF-2)}'

echo -e "\e[30;48;5;238m                                                                  \e[0m" # Grey Line
