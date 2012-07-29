# GNUPLOT script
# Plot histogram of number of edge pixels

set terminal epslatex color
set output 'highSwirlPLIFHistogram.tex'

set size 0.5
set xlabel 'Edge pixels'
set ylabel 'Frequency' offset 2

n = 100       # Number of bins
max = 1000    # Maximum value
min = 0       # Minimum value

width = ( max - min ) / n
hist( x, width ) = width * floor( x / width ) + width / 2.0

set xrange [min:max]
set boxwidth width * 0.9
set style fill solid

plot 'highSwirlPLIFHistogram.dat' using ( hist( $1, width ) ):(1.0) notitle smooth frequency with boxes

