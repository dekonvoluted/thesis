#!/usr/bin/gnuplot

# GNUPLOT script
# Mean axial velocity across the combustor at 15 mm

set terminal epslatex color
set output "temperatureLDVTransversePlot.tex"

set xrange [-60:60]
set yrange [-0.2:1.2]
set xlabel '\(Y\) or \(Z\), mm'
set ylabel '\(U/U_0\)' offset 2
set grid

plot \
'ldvCN.dat' index 1:1 using 2:( $7 / 30 ):( $10 / ( 30 * sqrt( $4 ) ) ) title 'CN Y Traverse' with yerrorbars pointtype 7 linetype 1 linewidth 3 linecolor 3, \
'' index 2:2 using 3:( $7 / 30 ):( $10 / ( 30 * sqrt( $4 ) ) ) title 'Z Traverse' with yerrorbars pointtype 6 linetype 1 linewidth 3 linecolor 3, \
'ldvHN.dat' index 1:1 using 2:( $7 / 75 ):( $10 / ( 75 * sqrt( $4 ) ) ) title 'HN Y Traverse' with yerrorbars pointtype 7 linetype 1 linewidth 3 linecolor 2, \
'' index 2:2 using 3:( $7 / 75 ):( $10 / ( 75 * sqrt( $4 ) ) ) title 'Z Traverse' with yerrorbars pointtype 6 linetype 1 linewidth 3 linecolor 2

