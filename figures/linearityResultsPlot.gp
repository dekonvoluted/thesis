#!/usr/bin/gnuplot

# GNUPLOT script
# Linearity check

set terminal epslatex color
set output 'linearityResultsPlot.tex'

set xlabel 'Intensity, J/cm\(^2\)'
set ylabel 'LIF signal, a.u.' offset 2
set xrange [0:]
set yrange [0:]
set grid

set fit quiet

f(x) = f0 + f1 * x

# Fit only some of the points
fit f(x) 'linearityResults.dat' using 1:3 index 0:0 via f0, f1

plot \
'linearityResults.dat' using 1:3 notitle with points pointtype 5 linecolor rgbcolor "#008000", \
'' using 1:3 index 1:1 notitle with points pointtype 5 linecolor 1, \
f(x) with lines notitle linetype 2 linewidth 5 linecolor rgbcolor "#008000"

