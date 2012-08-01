#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "c1c2c3-plot.tex"

set xrange [0.4:2]
set logscale y
set xlabel '\(\phi\)'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set grid
set key bottom

plot \
'01.dat' index 10:10 using 3:( $15 / 1e9 ) title '\ce{CH4}' with lines linetype 2 linewidth 3 linecolor 3, \
'04.dat' index 10:10 using 3:( $15 / 1e9 ) title '\ce{CH4}+5\%\ce{C2H6}' with lines linetype 2 linewidth 3 linecolor 2, \
'05.dat' index 10:10 using 3:( $15 / 1e9 ) title '\ce{CH4}+5\%\ce{C3H8}' with lines linetype 2 linewidth 3 linecolor 1
