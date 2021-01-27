#!/usr/bin/env bash
# S = size of the 3D array
# random values are in the range 0-99
S=$1
echo $S > randpoints.csv
for i in $(eval echo {1..$S}) 
do
	x=$(echo "100*$RANDOM/32768"|bc)
	y=$(echo "100*$RANDOM/32768"|bc)
	z=$(echo "100*$RANDOM/32768"|bc)
	printf "%f,%f,%f\n" $x $y $z 
done >> randpoints.csv
