#!/usr/bin/gnuplot

# GNUPLOT script
# CH B-X Absorption

set terminal epslatex color
set output 'chB-XAbsorptionPlot.tex'

set xlabel '\(\nu\), cm\(^{-1}\)'
set yrange [0:120]
unset ytics

# R1
set arrow from 25800, 105 to 25821.28, 105 nohead
set label '4' at 25805.42, 110 center
set arrow from 25805.42, 105 to 25805.42, 103 nohead
set label '5' at 25814.47, 110 center
set arrow from 25814.47, 105 to 25814.47, 103 nohead
set label '6' at 25819.80, 110 center
set arrow from 25819.80, 105 to 25819.80, 103 nohead
set label '7' at 25821.28, 110 center
set arrow from 25821.28, 105 to 25821.28, 103 nohead
set label '8' at 25818.72, 110 center
set arrow from 25818.72, 105 to 25818.72, 103 nohead
set label '9' at 25811.93, 110 center
set arrow from 25811.93, 105 to 25811.93, 103 nohead
set label '\(R_1(10)\)' at 25800, 110
set arrow from 25800.64, 105 to 25800.64, 103 nohead

# R2
set arrow from 25800, 90 to 25823.32, 90 nohead
set label '4' at 25808.75, 95 center
set arrow from 25808.75, 90 to 25808.75, 88 nohead
set label '5' at 25817.20, 95 center
set arrow from 25817.20, 90 to 25817.20, 88 nohead
set label '6' at 25822.13, 95 center
set arrow from 25822.13, 90 to 25822.13, 88 nohead
set label '7' at 25823.32, 95 center
set arrow from 25823.32, 90 to 25823.32, 88 nohead
set label '8' at 25820.55, 95 center
set arrow from 25820.55, 90 to 25820.55, 88 nohead
set label '9' at 25813.59, 95 center
set arrow from 25813.59, 90 to 25813.59, 88 nohead
set label '\(R_2(10)\)' at 25802.17, 95 center
set arrow from 25802.17, 90 to 25802.17, 88 nohead

plot \
'chB-XAbsorption.mod' using 1:3 notitle with lines linetype 1 linecolor 1 linewidth 3

