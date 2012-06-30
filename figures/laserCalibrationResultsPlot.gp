#!/usr/bin/gnuplot

# GNUPLOT script
# The results of calibration of the laser wavelength
# CH PLIF/Experiments/2010-06-14

set terminal epslatex color
set output 'laserCalibrationResultsPlot.tex'

set xlabel '\(x\), in'
set ylabel '\(\lambda\), nm' offset 2
set yrange [385:388]
set xrange [0.60:0.626]
set key left

f(x) = f0 + f1*x
fit f(x) 'laserCalibrationResults.dat' using 1:2 via f0, f1

plot \
'laserCalibrationResults.dat' using "X(in)":"λf/2" index 0:0 title "Experiment" with points pointtype 1 pointsize 2 linecolor 3 linewidth 3, \
'' index 1:1 title "(repeat)" with points pointtype 2 pointsize 2 linecolor 3 linewidth 3, \
f(x) title "Linear fit" with lines linetype 1 linecolor 1 linewidth 3
