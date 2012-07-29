#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'highSwirlPLIFImage.tex'

set size ratio -1
set size 0.6
set yrange [] reverse
unset xtics
unset ytics
set cbrange[200:700]
#set palette rgbformulae 21,22,23

plot 'highSwirlPLIFImage.dat' matrix with image notitle

