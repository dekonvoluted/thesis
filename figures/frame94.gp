#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'frame94.tex'

set size ratio -1
set size 0.6
set yrange [] reverse
unset xtics
unset ytics
set cbrange[0:]
unset colorbox
set palette rgbformulae 21,22,23

plot 'frame94.dat' matrix with image notitle

