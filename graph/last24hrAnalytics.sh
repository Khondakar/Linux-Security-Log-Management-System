#!/bin/bash
# Note: Analytics based on all Error reports
# Author:Khondakar

# ------- Categories ----------------------------------------------------------------------
# 0: Emergency. The system is unusable.
# 1: Alert. A condition has been flagged that should be corrected immediately.
# 2: Critical. This covers crashes, coredumps, and significant failures in primary applications.
# 3: Error. An error has been reported, but it is not considered severe.
# 4: Warning. Brings a condition to your attention that, if ignored, may become an error.
# 5: Notice. Used to report events that are unusual, but not errors.
# 6: Information. Regular operational messages. These do not require action.
# 7: Debug. Messages put into applications to make it easier for them to debug them.
# ------- ** ------------------------------------------------------------------------------

# Get the counts for each category and save in a variable
emergencyCount=$(sudo journalctl --since "24 hours ago" -p 0 | wc -l)
alertCount=$(sudo journalctl --since "24 hours ago" -p 1 | wc -l)
criticalCount=$(sudo journalctl --since "24 hours ago" -p 2 | wc -l)
errorCount=$(sudo journalctl --since "24 hours ago" -p 3 | wc -l)
warningCount=$(sudo journalctl --since "24 hours ago" -p 4 | wc -l)
noticeCount=$(sudo journalctl --since "24 hours ago" -p 5 | wc -l)

# Display data with counts:
echo -e "\e[96m## All Important Reports - from last 24 hours ## "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "1) Total count of Emergency issue = $emergencyCount"
echo "2) Total count of Alert = $alertCount"
echo "3) Total count of Critical issue = $criticalCount"
echo "4) Total count of Error = $errorCount"
echo "5) Total count of Warning = $warningCount"
echo "6) Total count of Notification = $noticeCount"
echo -e "\e[30;48;5;240m                                                         \e[0m" # Grey Line

# Write all data in file
echo "1 Emergency $emergencyCount" > ./graph/24hrdata.txt
echo "2 Alert $alertCount" >> ./graph/24hrdata.txt
echo "3 Critical $criticalCount" >> ./graph/24hrdata.txt
echo "4 Error $errorCount" >> ./graph/24hrdata.txt
echo "5 Warning $warningCount" >> ./graph/24hrdata.txt
echo "6 Notice $noticeCount" >> ./graph/24hrdata.txt

# Run the gnuplot using the setting of plotting a graphy
gnuplot ./graph/graphPloting24hr.plt

# Display the graph saved as PNG file generate with data
eog CriticalReport24hr.png

