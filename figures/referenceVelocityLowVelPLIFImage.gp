#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'referenceVelocityLowVelPLIFImage.tex'

set size ratio -1
set size 0.6
set yrange [] reverse
unset xtics
unset ytics
set cbrange[100:600]
#set palette rgbformulae 21,22,23

plot 'referenceVelocityLowVelPLIFImage.dat' matrix with image notitle

