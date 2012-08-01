#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "01-500-plot.tex"

set xrange [0.4:2]
set logscale y
set xlabel '\(\phi\)'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set grid
set key bottom

plot \
'01.dat' index 5:5 using 3:( $15 / 1e9 ) title '1 atm' with lines linetype 1 linewidth 3 linecolor 3, \
'' index 6:6 using 3:( $15 / 1e9 ) title '3 atm' with lines linetype 1 linewidth 3 linecolor 5, \
'' index 7:7 using 3:( $15 / 1e9 ) title '6 atm' with lines linetype 1 linewidth 3 linecolor 2, \
'' index 8:8 using 3:( $15 / 1e9 ) title '9 atm' with lines linetype 1 linewidth 3 linecolor 4, \
'' index 9:9 using 3:( $15 / 1e9 ) title '12 atm' with lines linetype 1 linewidth 3 linecolor 1

