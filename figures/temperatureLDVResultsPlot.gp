#!/usr/bin/gnuplot

# GNUPLOT script
# Mean & rms velocities along centerline

set terminal epslatex color
set output "temperatureLDVResultsPlot.tex"

set xrange [0:160]
set yrange [-1:1]
set xlabel '\(X-X_0\), mm'
set ylabel '\(U/U_0\)' offset 2
set grid

plot \
'ldvCN.dat' index 0:0 using ( $1 + 66.006 ):( $7 / 30 ) title 'CN \(U\)' with lines linetype 1 linewidth 3 linecolor 3, \
'' index 0:0 using ( $1 + 66.006 ):( $10 / 30 ) title '\(u\)' with lines linetype 2 linewidth 3 linecolor 3, \
'ldvHN.dat' index 0:0 using ( $1 + 30.855 ):( $7 / 75 ) title 'HN \(U\)' with lines linetype 1 linewidth 3 linecolor 2, \
'' index 0:0 using ( $1 + 30.855 ):( $10 / 75 ) title '\(u\)' with lines linetype 2 linewidth 3 linecolor 2, \
'ldvHR.dat' index 0:0 using ( $1 + 17.102 ):( $7 / 30 ) title 'HR \(U\)' with lines linetype 1 linewidth 3 linecolor 1, \
'' index 0:0 using ( $1 + 17.102 ):( $10 / 30 ) title '\(u\)' with lines linetype 2 linewidth 3 linecolor 1

