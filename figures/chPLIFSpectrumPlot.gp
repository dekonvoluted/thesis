#!/usr/bin/gnuplot

# GNUPLOT script
# PLIF spectrum vs LIFBASE calculation

set terminal epslatex color
set output 'chPLIFSpectrumPlot.tex'

set xlabel '\(\lambda\), nm'
set ylabel 'Signal'
set xrange [375:475]
set yrange [0:130]
unset ytics

set arrow from 385, 105 to 387, 95
set label "R-bandhead" at 385, 110 center

plot \
'chPLIFAbsorption-LIFBASE.mod' using ($1/10):3 title 'Absorption (Simulation)' with lines linewidth 3 linetype 1 linecolor 1, \
'chPLIFTransmission.dat' using 1:($2*100) title 'Filter \(\tau\)' with lines smooth csplines linetype 4 linewidth 3 linecolor rgbcolor "#008000", \
'chPLIFEmission-LIFBASE.mod' using ($1/10):3 title 'Emission (Simulation)' with lines linewidth 3 linetype 1 linecolor 3, \
'chPLIFSpectrum.dat' using 1:(100*$2/12683) index 1:1 title 'Emission (Experiment)' with lines linewidth 3 linetype 1 linecolor 0

