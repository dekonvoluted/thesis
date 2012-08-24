#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "temperature-correlation-plot.tex"

# xrange [0.4:2]
#et yrange [:]
set logscale y
set xlabel '\(T_f\), K'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set grid
set key bottom

set label "Lean" at 2210, 2
set label "Rich" at 2010, 30

plot \
'01.dat' index 0:0 using 4:( $15 / 1e9 ) title 'Unstrained, 300 K' with points pointtype 9 pointsize 2 linecolor 3, \
'' index 5:5 using 4:( $15 / 1e9 ) title 'Unstrained, 500 K' with points pointtype 11 pointsize 2 linecolor rgbcolor "#008000", \
'' index 10:10 using 4:( $15 / 1e9 ) title 'Unstrained, 700 K' with points pointtype 13 pointsize 2 linecolor 1, \
'strain00.dat' using 3:( $2 / 1e9 ) title 'Strained, 300 K, \(\phi\) = 0.7' with points pointtype 1 pointsize 2 linecolor 3, \
'strain01.dat' using 3:( $2 / 1e9 ) title 'Strained, 300 K, \(\phi\) = 0.9' with points pointtype 2 pointsize 2 linecolor 3

