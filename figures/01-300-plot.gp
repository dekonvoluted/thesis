#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "01-300-plot.tex"

set xrange [0.4:2]
set yrange [:]
set xlabel '\(\phi\)'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2

set arrow from 0.75, 0 to 0.75, 24 linetype 2 linecolor 0 nohead

plot \
'01.dat' index 0:0 using 3:( $15 / 1e9 ) title '1 atm' with lines linetype 1 linewidth 3 linecolor 3, \
'chPLIFSignalExperiment.dat' using ( $1 + 0.05 ):( $2 * 20.3 / 1.639e3 ) title 'Experiment' with points pointtype 7 linewidth 3 linecolor 3, \
'01.dat' index 1:1 using 3:( $15 / 1e9 ) title '3 atm' with lines linetype 1 linewidth 3 linecolor 5, \
'' index 2:2 using 3:( $15 / 1e9 ) title '6 atm' with lines linetype 1 linewidth 3 linecolor 2, \
'' index 3:3 using 3:( $15 / 1e9 ) title '9 atm' with lines linetype 1 linewidth 3 linecolor 4, \
'' index 4:4 using 3:( $15 / 1e9 ) title '12 atm' with lines linetype 1 linewidth 3 linecolor 1, \
1 notitle with lines linetype 2 linecolor 0

