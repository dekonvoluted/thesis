#!/usr/bin/gnuplot

# GNUPLOT script
# PLIF spectrum vs LIFBASE calculation
# CH PLIF/Experiments/2012-06-02

set terminal epslatex color
set output 'chPLIFSpectrumPlot.tex'

set xlabel '\(\lambda\), nm'
set ylabel 'Signal, arb. units (normalized)'
set xrange [375:450]
set yrange [0:130]

set arrow from 385, 105 to 387, 95
set label "R-bandhead" at 385, 110 center

plot \
'chPLIFAbsorption-LIFBASE.mod' using ($1/10):3 title 'Absorption (LIFBASE)' with lines linewidth 3 linetype 1 linecolor 1, \
'chPLIFEmission-LIFBASE.mod' using ($1/10):3 title 'Emission (LIFBASE)' with lines linewidth 3 linetype 1 linecolor 3, \
'chPLIFSpectrum.dat' using ($1+0.25):(100*$2/12683) index 1:1 title 'Emission (Experiment)' with lines linewidth 3 linetype 1 linecolor 2, \
'chPLIFTransmission.dat' using 1:($2*100) title 'Filter Transmittance' with lines smooth csplines linetype 2 linewidth 3 linecolor 0

