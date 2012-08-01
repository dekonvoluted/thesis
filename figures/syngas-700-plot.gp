#!/usr/bin/gnuplot

# GNUPLOT script
# Results at 300 K

set terminal epslatex color
set output "syngas-700-plot.tex"

set xrange [0.4:2]
set logscale y
set xlabel '\(\phi\)'
set ylabel 'Signal \(\times 10^9\), a.u.' offset 2
set grid
set key bottom

plot \
'11.dat' index 10:10 using 3:( $15 / 1e9 ) title '100\%\ce{H2}' with lines linetype 1 linewidth 3 linecolor 1, \
'15.dat' index 10:10 using 3:( $15 / 1e9 ) title '95\%\ce{H2}+5\%CO' with lines linetype 1 linewidth 3 linecolor 4, \
'19.dat' index 10:10 using 3:( $15 / 1e9 ) title '80\%\ce{H2}+20\%CO' with lines linetype 1 linewidth 3 linecolor 2, \
'23.dat' index 10:10 using 3:( $15 / 1e9 ) title '50\%\ce{H2}+50\%CO' with lines linetype 1 linewidth 3 linecolor 5, \
'27.dat' index 10:10 using 3:( $15 / 1e9 ) title '20\%\ce{H2}+80\%CO' with lines linetype 1 linewidth 3 linecolor 3, \
'31.dat' index 10:10 using 3:( $15 / 1e9 ) title '5\%\ce{H2}+95\%CO' with lines linetype 1 linewidth 3 linecolor 7, \
'35.dat' index 10:10 using 3:( $15 / 1e9 ) title '100\%CO' with lines linetype 1 linewidth 3 linecolor 9

