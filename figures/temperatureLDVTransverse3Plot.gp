#!/usr/bin/gnuplot

# GNUPLOT script
# Mean axial velocity across the combustor at 75 mm

set terminal epslatex color
set output "temperatureLDVTransverse3Plot.tex"

set xrange [-60:60]
set yrange [-0.4:1.2]
set xlabel '\(Y\) or \(Z\), mm'
set ylabel '\(U/U_0\)' offset 2
set grid

plot \
'ldvCN.dat' index 5:5 using 2:( $7 / 30 ):( $10 / ( 30 * sqrt( $4 ) ) ) title 'CN Y Traverse' with yerrorbars pointtype 7 linetype 1 linewidth 3 linecolor 3, \
'' index 5:5 using 2:($10/30) notitle with lines linetype 2 linewidth 3 linecolor 3, \
'' index 6:6 using 3:( $7 / 30 ):( $10 / ( 30 * sqrt( $4 ) ) ) title 'Z Traverse' with yerrorbars pointtype 6 linetype 1 linewidth 3 linecolor 3, \
'' index 6:6 using 3:($10/30) notitle with lines linetype 2 linewidth 3 linecolor 3, \
'ldvHN.dat' index 5:5 using 2:( $7 / 75 ):( $10 / ( 75 * sqrt( $4 ) ) ) title 'HN Y Traverse' with yerrorbars pointtype 7 linetype 1 linewidth 3 linecolor 2, \
'' index 5:5 using 2:($10/30) notitle with lines linetype 2 linewidth 3 linecolor 2, \
'' index 6:6 using 3:( $7 / 75 ):( $10 / ( 75 * sqrt( $4 ) ) ) title 'Z Traverse' with yerrorbars pointtype 6 linetype 1 linewidth 3 linecolor 2, \
'' index 6:6 using 3:($10/30) notitle with lines linetype 2 linewidth 3 linecolor 2

