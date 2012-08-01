#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output "gri-sd-delxf-plot.tex"

set size 0.6
set xrange [0.4:2]
set xlabel '\(\phi\)'
set ylabel '\(\delta_f\), mm' offset 2
set key left

plot \
'00.dat' index 0:0 using 3:( 1e3 * $6 ) title '300 K' with linespoints pointtype 7 linetype 1 linewidth 1 linecolor 3, \
'01.dat' index 0:0 using 3:( 1e3 * $6 ) notitle with linespoints pointtype 6 linetype 2 linewidth 1 linecolor 3, \
'00.dat' index 5:5 using 3:( 1e3 * $6 ) title '500 K' with linespoints pointtype 7 linetype 1 linewidth 1 linecolor rgbcolor "#008000", \
'01.dat' index 5:5 using 3:( 1e3 * $6 ) notitle with linespoints pointtype 6 linetype 2 linewidth 1 linecolor rgbcolor "#008000", \
'00.dat' index 10:10 using 3:( 1e3 * $6 ) title '700 K' with linespoints pointtype 7 linetype 1 linewidth 1 linecolor 1, \
'01.dat' index 10:10 using 3:( 1e3 * $6 ) notitle with linespoints pointtype 6 linetype 2 linewidth 1 linecolor 1

