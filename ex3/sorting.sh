#!/bin/bash

echo "Enter number of elements: "

read n

echo "Enter array elements: "

for (( i=0 ; i<n ; i++))

do

read a[$i]

done


echo "Array after sorting: "

printf '%s\n' "${a[@]}" | sort -n
