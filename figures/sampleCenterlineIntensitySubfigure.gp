#!/usr/bin/gnuplot

# GNUPLOT script
# Profile of the centerline intensity of a mean CH* chemiluminescence image
# LSB/Experiments/Chemiluminescence/2009-08-26

set terminal epslatex color
set output 'sampleCenterlineIntensity.tex'

set size 1, 0.75
set xlabel "Pixels"
unset ytics
set xrange [0:541]
set parametric
set trange [0:500]


set label '\(X_f\)' at 100,400
set arrow from 94, 350 to 128, 350 heads

plot \
"sampleCenterlineIntensity.dat" notitle with lines smooth bezier linetype 1 linecolor 1 linewidth 3, \
93,t notitle with lines linetype 2 linecolor 3 linewidth 3, \
128,t notitle with lines linetype 2 linecolor 3 linewidth 3


