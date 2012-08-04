#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'lvframe0.tex'

set size ratio -1
set size 0.6
set yrange [] reverse
unset xtics
unset ytics
set cbrange[100:600]

plot 'lvframe0.dat' matrix with image notitle

