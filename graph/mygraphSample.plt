set terminal pdf
set output "All .pdf"
set title "24hrs Ago - Emergency, Alert, Critical, Error, Warning and Notice Report"
set xlabel "Number of Errors"
set ylabel "Category"
plot "mydata.txt" using 1:2 with impulse title "Speed km/hr" lw 2,"mydata.txt" using 1:3 with points title "Age" lw 2
