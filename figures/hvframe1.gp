#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'hvframe1.tex'

set size ratio -1
set size 0.6
set yrange [] reverse
unset xtics
unset ytics
set cbrange[200:700]

plot 'hvframe1.dat' matrix with image notitle

