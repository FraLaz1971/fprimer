#!/usr/bin/env bash
# S = size of the 3D array
# random values are in the range 0-99
S=$1
echo $S > randpoints.csv
for i in $(eval echo {1..$S}) 
do
	x=$(echo "100*$RANDOM/32768"|bc -l)
	y=$(echo "100*$RANDOM/32768"|bc -l)
	z=$(echo "100*$RANDOM/32768"|bc -l)
	printf "%2.6f, %2.6f, %2.6f\n" $x $y $z 
done >> randpoints.csv