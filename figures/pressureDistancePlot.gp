#!/usr/bin/gnuplot

# GNUPLOT Script
# Flame Distance vs pressure

set terminal epslatex color
set output 'pressureDistancePlot.tex'
set xrange [0:15]
set yrange [0:30]
set xlabel '\(p\), atm'
set ylabel '\(X_f\), mm' offset 2
set grid
set key left

plot \
'flameMetrics.dat' index 0:0 using 1:11 title '\(S_{37^\circ}\)' with linespoints pointtype 5 pointsize 2 linetype 2 linewidth 3 linecolor 3, \
'' index 3:3 using 1:11 title '\(S_{45^\circ}\)' with linespoints pointtype 7 pointsize 2 linetype 2 linewidth 3 linecolor 1

