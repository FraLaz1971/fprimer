#!/usr/bin/env bash
# S = size of the 3D array
# random values are in the range 0-99
if [[ $# -eq 1 ]]
then
	if [[ "$1" -ge 1000 ]]; then echo "too many points" >&2;exit 1;fi
	S=$1
	echo $S > randpoints.csv
	for i in $(eval echo {1..$S})
	do
		x=$(echo "(100*$RANDOM)/32768"|bc -l)
		y=$(echo "(100*$RANDOM)/32768"|bc -l)
		z=$(echo "(100*$RANDOM)/32768"|bc -l)
		printf "%g,%g,%g\n" $x $y $z 
	done >> randpoints.csv
else
	echo "usage: $0 <n-points[1,1000)>" >&2
fi
