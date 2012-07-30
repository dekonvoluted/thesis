#!/usr/bin/gnuplot

# GNUPLOT script
# Compare experimentally measured excitation scan with simulation from LIFBASE

set terminal epslatex color
set output 'excitationScanResultsPlot.tex'

set xlabel '\(\lambda\), nm'
set ylabel '\(\mu_{sig}\)' offset 2
set xrange [387:387.35]
set yrange [0:105]
set key bottom
set grid

plot \
'B0106.mod' using ($1/10):3 title 'Simulation' with lines smooth csplines linecolor 1 linewidth 3, \
'excitationScanResults.dat' using ( $1 - 0.01 ):( ( $2 - 52.2813 ) * ( 100 - 17.5 ) / ( 99.8006 - 52.2813 ) + 17.5 ) title 'Window' with points pointtype 4 linecolor rgbcolor "#008000" linewidth 2, \
'' using ( $1 - 0.01 ):( ( $3 - 196.512 ) * ( 100 - 17.5 ) / ( 1064.3 - 196.512 ) + 17.5 ) title 'Line' with points pointtype 6 linecolor 3 linewidth 2, \
'' using ( $1 - 0.01 ):( ( $4 - 13.1483 ) * ( 100 - 17.5 ) / ( 100.003 - 13.1483 ) + 17.5 ) title 'Midpoint' with points pointtype 8 linecolor 4 linewidth 2

