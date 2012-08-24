#!/usr/bin/gnuplot

# GNUPLOT script
# 

set terminal epslatex color
set output "01-060-plot.tex"

#set yrange [0:1]
set y2range [0:]
set xlabel '\(p\), atm'
set ylabel '\(X_{CH}\), ppm' offset 2
set y2label '\(\delta_{CH}\), mm'
set logscale y
set y2tics
set grid

plot \
'01-060.dat' index 0:0 using ($2/101325):($7*1e6) axis x1y1 title '\(X_{CH}\)' with points pointtype 7 pointsize 2 linewidth 3 linecolor 3, \
'' index 0:0 using ($2/101325):($6*1e3) axis x1y2 title '\(\delta_{CH}\)' with points pointtype 6 pointsize 2 linewidth 3 linecolor 3
