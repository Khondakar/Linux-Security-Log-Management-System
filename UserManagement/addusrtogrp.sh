#!/bin/bash
#Note: Add users to the groups.
#Author: Khondakar

sudo usermod -a -G grp1 Usr1
sudo usermod -a -G grp2 Usr2
sudo usermod -a -G grp3 Usr3

echo -e "\e[33m-------* Users Successfully assigned to the Groups *--------"
