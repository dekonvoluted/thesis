#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "01-700-plot.tex"

set xrange [0.4:2]
set logscale y
set xlabel '\(\phi\)'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set grid
set key bottom

plot \
'01.dat' index 10:10 using 3:( $15 / 1e9 ) title '1 atm' with lines linetype 1 linewidth 3 linecolor 3, \
'' index 11:11 using 3:( $15 / 1e9 ) title '3 atm' with lines linetype 1 linewidth 3 linecolor 5, \
'' index 12:12 using 3:( $15 / 1e9 ) title '6 atm' with lines linetype 1 linewidth 3 linecolor 2, \
'' index 13:13 using 3:( $15 / 1e9 ) title '9 atm' with lines linetype 1 linewidth 3 linecolor 4, \
'' index 14:14 using 3:( $15 / 1e9 ) title '12 atm' with lines linetype 1 linewidth 3 linecolor 1

