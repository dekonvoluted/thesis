#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output "chPLIFSignalExperimentPlot.tex"

set xrange [0.4:2]
set yrange [0:1.2]
set xlabel '\(\phi\)'
set ylabel 'Signal, a.u.' offset 2
set grid

plot \
'chPLIFSignalExperiment.dat' using ( $1 + 0.05 ):( $2 / 1.639e3 ) title 'Experiment' with points pointtype 7 linewidth 3 linecolor 1, \
'00.dat' index 0:0 using 3:( $15 / 3.62e10 ) title 'GRI' with lines linetype 2 linewidth 3 linecolor 2, \
'01.dat' index 0:0 using 3:( $15 / 2.03e10 ) title 'SD' with lines linetype 2 linewidth 3 linecolor 3


