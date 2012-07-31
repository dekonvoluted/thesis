#!/usr/bin/gnuplot

# GNUPLOT script
# PLIF spectrum vs LIFBASE calculation
# CH PLIF/Experiments/2012-06-02

set terminal epslatex color
set output 'chPLIFSpectrumPlot.tex'

set xlabel '\(\lambda\), nm'
set ylabel 'Signal, arb. units'
set xrange [410:450]
set yrange [0:130]

plot \
'chPLIFEmission-LIFBASE.mod' using ($1/10):3 title 'Simulation' with lines linewidth 3 linetype 1 linecolor 1, \
'chPLIFSpectrum.dat' using ($1+0.25):(100*$2/12683) index 1:1 title 'Experiment' with lines linewidth 3 linetype 1 linecolor 3

