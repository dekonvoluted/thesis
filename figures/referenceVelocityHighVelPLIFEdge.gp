#!/usr/bin/gnuplot

# GNUPLOT script
# Plot the detected edge

set terminal epslatex color
set output 'referenceVelocityHighVelPLIFEdge.tex'

set size ratio -1
set size 0.6
set yrange [] reverse
unset xtics
unset ytics

plot 'referenceVelocityHighVelPLIFEdge.dat' matrix with image notitle

