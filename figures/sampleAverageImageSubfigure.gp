#!/usr/bin/gnuplot

# GNUPLOT script
# A sample average CH* chemiluminescence image
# LSB/Experiments/Chemiluminescence/2009-08-26

set terminal epslatex color
set output 'sampleAverageImage.tex'

set size 1, 0.75
set size ratio -1
unset xtics
unset ytics
unset colorbox
set palette rgbformulae 21,22,23
plot 'sampleAverageImage.dat' matrix with image notitle

