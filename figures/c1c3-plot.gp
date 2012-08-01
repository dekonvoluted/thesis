#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "c1c3-plot.tex"

set xrange [0.4:2]
set logscale y
set xlabel '\(\phi\)'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set grid

plot \
'01.dat' index 0:0 using 3:( $15 / 1e9 ) title '\ce{CH4}' with lines linetype 1 linewidth 3 linecolor 3, \
'02.dat' index 0:0 using 3:( $15 / 1e9 ) title '\ce{C2H6}' with lines linetype 1 linewidth 3 linecolor 2, \
'03.dat' index 0:0 using 3:( $15 / 1e9 ) title '\ce{C3H8}' with lines linetype 1 linewidth 3 linecolor 1
