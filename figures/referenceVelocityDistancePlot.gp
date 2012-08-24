#!/usr/bin/gnuplot

# GNUPLOT Script
# Flame Distance vs reference velocity

set terminal epslatex color
set output 'referenceVelocityDistancePlot.tex'
set xrange [0:100]
set yrange [0:30]
set xlabel '\(U_0\), m/s'
set ylabel '\(X_f\), mm' offset 2
set grid

plot \
'flameMetrics.dat' index 1:1 using 7:11 title '\(S_{37^\circ}\), 6 atm' with linespoints pointtype 5 pointsize 2 linetype 2 linewidth 3 linecolor 3, \
'' index 1:1 using 7:11:(3) notitle with yerrorbars pointtype 5 pointsize 2 linetype 1 linewidth 3 linecolor 3, \
'' index 2:2 using 7:11 title '\(S_{45^\circ}\), 3 atm' with linespoints pointtype 7 pointsize 2 linetype 2 linewidth 3 linecolor 1, \
'' index 2:2 using 7:11:(3) notitle with yerrorbars pointtype 7 pointsize 2 linetype 1 linewidth 3 linecolor 1

