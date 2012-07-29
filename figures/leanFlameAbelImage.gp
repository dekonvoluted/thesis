#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'leanFlameAbelImage.tex'

set size ratio -1
set size 0.6
unset xtics
unset ytics
set cbrange[0:0.5]
unset colorbox
set palette rgbformulae 21,22,23

plot 'leanFlameAbelImage.dat' matrix with image notitle

