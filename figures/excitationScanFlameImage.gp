#!/usr/bin/gnuplot

# GNUPLOT script

set terminal epslatex color
set output 'excitationScanFlameImage.tex'

set size ratio -1
set xrange [180:390]
set yrange [250:512] reverse
unset xtics
unset ytics
set cbrange[7:]
unset colorbox

set object rectangle from 240, 310 to 280, 400 fillstyle empty border rgb "green" front
set object rectangle from 295, 310 to 335, 400 fillstyle empty border rgb "green" front

set arrow from 245, 355 to 260, 355 nohead linecolor rgb "cyan" front
set arrow from 300, 355 to 315, 355 nohead linecolor rgb "cyan" front

set object circle at 252, 355 size 1.5 fillstyle solid fillcolor rgb "cyan" front
set object circle at 307, 355 size 1.5 fillstyle solid fillcolor rgb "cyan" front

plot 'excitationScanFlameImage.dat' matrix with image notitle

