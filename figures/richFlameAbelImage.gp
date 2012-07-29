#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'richFlameAbelImage.tex'

set size ratio -1
set size 0.6
unset xtics
unset ytics
set cbrange[0:1]
unset colorbox
set palette rgbformulae 21,22,23

plot 'richFlameAbelImage.dat' matrix with image notitle

