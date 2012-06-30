#!/usr/bin/gnuplot

# GNUPLOT script
# A sample Abel deconvolution of the mean CH* chemiluminescence image
# LSB/Experiments/Chemiluminescence/2009-08-26

set terminal epslatex color
set output 'sampleAbelImage.tex'

set size 1, 0.5
set size ratio -1
unset xtics
unset ytics
unset colorbox
set cbrange [0:3.5]
set palette rgbformulae 21,22,23
plot 'sampleAbelImage.dat' matrix with image notitle

