#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "c1c3-t-plot.tex"

set xrange [0.4:2]
set xlabel '\(\phi\)'
set ylabel '\(T_f\), K' offset 2
set grid

plot \
'01.dat' index 0:0 using 3:4 title '\ce{CH4}' with lines linetype 1 linewidth 3 linecolor 3, \
'02.dat' index 0:0 using 3:4 title '\ce{C2H6}' with lines linetype 1 linewidth 3 linecolor 2, \
'03.dat' index 0:0 using 3:4 title '\ce{C3H8}' with lines linetype 1 linewidth 3 linecolor 1

