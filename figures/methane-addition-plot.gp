#!/usr/bin/gnuplot

# GNUPLOT script
# Effect of methane addition

set terminal epslatex color
set output "methane-addition-plot.tex"

#set xrange [0.4:2]
set xlabel '\ce{CH4} \%'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set grid

plot \
'methane-addition.dat' using 1:($5/1e9) notitle with points pointtype 7 linecolor 1, \
'' using 1:($5/1e9) notitle with lines smooth bezier linetype 1 linewidth 3 linecolor 1

