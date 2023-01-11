#!/bin/bash -x

read -p "Enter the number: " n

factor=0
for(( i=1; i<$n; i++ ))
do
	if (( $(($n%$i))==0 ))
	then
		factor=$(( $factor + $i ))
	fi
done

if (( $factor==$n ))
then
	echo "$n is a perfect number"
else
	echo "$n is not a perfect number"
fi
