#!/usr/bin/gnuplot

# GNUPLOT Script
# Flame Angle vs pressure

set terminal epslatex color
set output 'pressureAnglePlot.tex'
set xrange [0:15]
set yrange [0:60]
set xlabel '\(p\), atm'
set ylabel '\(\theta_f\), degrees' offset 2
set grid

plot \
'flameMetrics.dat' index 0:0 using 1:12 title '\(S_{37^\circ}\)' with linespoints pointtype 5 pointsize 2 linetype 2 linewidth 3 linecolor 3, \
'' index 0:0 using 1:12:(5) notitle with yerrorbars pointtype 5 pointsize 2 linetype 1 linewidth 3 linecolor 3, \
'' index 3:3 using 1:12 title '\(S_{45^\circ}\)' with linespoints pointtype 7 pointsize 2 linetype 2 linewidth 3 linecolor 1, \
'' index 3:3 using 1:12:(5) notitle with yerrorbars pointtype 5 pointsize 2 linetype 1 linewidth 3 linecolor 1

