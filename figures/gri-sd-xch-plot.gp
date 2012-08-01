#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output "gri-sd-xch-plot.tex"

set size 0.6
set xrange [49.9:50.4]
set xlabel '\(X\), mm'
set ylabel '\(X_\ce{CH}\), ppm' offset 2

plot \
'00-300-01-100.dat' using "X(mm)":( 1e6 * column( "X_CH_" ) ) title '300 K' with lines linetype 1 linewidth 3 linecolor 3, \
'01-300-01-100.dat' using "X(mm)":( 1e6 * column( "X_CH_" ) ) notitle with lines linetype 2 linewidth 3 linecolor 3, \
'00-500-01-100.dat' using "X(mm)":( 1e6 * column( "X_CH_" ) ) title '500 K' with lines linetype 1 linewidth 3 linecolor rgbcolor "#008000", \
'01-500-01-100.dat' using "X(mm)":( 1e6 * column( "X_CH_" ) ) notitle with lines linetype 2 linewidth 3 linecolor rgbcolor "#008000", \
'00-700-01-100.dat' using "X(mm)":( 1e6 * column( "X_CH_" ) ) title '700 K' with lines linetype 1 linewidth 3 linecolor 1, \
'01-700-01-100.dat' using "X(mm)":( 1e6 * column( "X_CH_" ) ) notitle with lines linetype 2 linewidth 3 linecolor 1


