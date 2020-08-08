# Author: Khondakar
# Date: 31/July/2020
# Tool: gnuplot
# Note: Write script to plot the graph

set terminal png
set output "CriticalReportMonthly.png"
set title "REPORT FROM LAST 1 MONTH"
set xlabel "Category"
set ylabel "Number of Errors"
# -------------------------------------------------------------------------------------------------------
# "mydata.txt" using 1:3 with points title "Age" lw 2
# plot "mydata.txt" using 1:3 with impulse title "1=Emrgncy|2=Alert|3=Critical|4=Error|5=Warning|6=Notice" lw 2,
# plot "mydata.txt" using 1:3 with lines title "1=Emrgncy, 2=Alert, 3=Critical, 4=Error, 5=Warning, 6=Notice" lw 2
# -------------------------------------------------------------------------------------------------------

plot "./graph/monthlydata.txt" using 1:3 with lines title "All Important Reports" lw 2,"./graph/monthlydata.txt" using 1:3 with points title "1=Emrgncy, 2=Alert, 3=Critical, 4=Error, 5=Warning, 6=Notice" lw 2
