#!/usr/bin/gnuplot

# GNUPLOT script
# Plot the RKR potential curves for CH energy levels
# 2005-richmond, Fig. 1

set terminal epslatex color
set output 'chRKRPlot.tex'

set xlabel '\(R_e\), \AA'
set ylabel 'Potential, \(\times 10^3\) cm\(^{-1}\)' offset 2
set xrange [0.5:2]
set yrange [-5:45]

set arrow from 1.019, 1.430041 to 1.244, 1.430041 nohead linecolor 1
set arrow from 0.957, 4.156379 to 1.353, 4.156379 nohead linecolor 1
set arrow from 0.922, 6.779835 to 1.446, 6.779835 nohead linecolor 1

set arrow from 1.004, 24.578189 to 1.226, 24.578189 nohead linecolor 2
set arrow from 0.946, 27.304527 to 1.345, 27.304527 nohead linecolor 2
set arrow from 0.909, 29.876543 to 1.444, 29.876543 nohead linecolor 2

set arrow from 1.071, 27.098765 to 1.317, 27.098765 nohead linecolor 3
set arrow from 1.022, 28.950617 to 1.554, 28.950617 nohead linecolor 3

set label '\(X^2\Pi\)' at 1.85, 15
set label '0' at 0.96, 1
set label '1' at 0.91, 4
set label '2' at 0.86, 7

set label '\(A^2\Delta\)' at 1.85, 40
set label '0' at 0.95, 24
set label '1' at 0.90, 27
set label '2' at 0.85, 30

set label '\(B^2\Sigma^-\)' at 1.85, 27
set label '0' at 1.35, 25
set label '1' at 1.55, 27

plot \
'RKR.dat' index 0:0 notitle with lines smooth csplines linecolor 1 linetype 1 linewidth 3, \
'' index 1:1 notitle with lines smooth csplines linecolor 2 linetype 1 linewidth 3, \
'' index 2:2 notitle with lines smooth csplines linecolor 3 linetype 1 linewidth 3

