#!/bin/bash
#Note: Set Permission to the Users for accessing different folders and files
#Authour: Khondakar

# Usr1 can access all .TXT file but can't access (main) folder
sudo setfacl -m u:Usr1:rwx /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/file1.txt
sudo setfacl -m u:Usr1:rwx /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/file2.txt
sudo setfacl -m u:Usr1:rwx /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/file3.txt
sudo setfacl -m u:Usr1:--- /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/main

# Usr2 can't access any TXT files and (main) folder
sudo setfacl -m u:Usr2:--- /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/file1.txt
sudo setfacl -m u:Usr2:--- /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/file2.txt
sudo setfacl -m u:Usr2:--- /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/file3.txt
sudo setfacl -m u:Usr2:--- /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/main

# Usr3 can access all TXT files and (main) folder and inside main folder's TXT files
sudo setfacl -m u:Usr3:rwx /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/main/file1.txt
sudo setfacl -m u:Usr3:rwx /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/main/file2.txt
sudo setfacl -m u:Usr3:rwx /home/khondakar/workSpace/LMS/UserManagement/apps/crm/crmapp/main

echo -e "\e[33m--------* File Access Permission Set Successfully *----------"
