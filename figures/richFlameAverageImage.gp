#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'richFlameAverageImage.tex'

set size ratio -1
set size 0.6
set yrange [] reverse
unset xtics
unset ytics
unset colorbox
set palette rgbformulae 21,22,23

plot 'richFlameAverageImage.dat' matrix with image notitle

