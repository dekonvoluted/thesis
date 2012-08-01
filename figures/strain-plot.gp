#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "strain-plot.tex"

set xrange [400:2500]
set yrange [0:15]
set xlabel '\(\kappa\), s\(^{-1}\)'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set key bottom

plot \
'strain00.dat' using (-$1):( $2 / 1e9 ) title '\(\phi = 0.7\)' with lines linetype 1 linewidth 3 linecolor 3, \
'strain01.dat' using (-$1):( $2 / 1e9 ) title '\(\phi = 0.9\)' with lines linetype 1 linewidth 3 linecolor 1

