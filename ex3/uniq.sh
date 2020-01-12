clear
echo "Enter no of elements "
read n
echo "Enter array1 elements "
for((i=0;i<n;i++))
do
read a[$i]
done
echo "Enter array2 elements"
for((i=0;i<n;i++))
do
read b[$i]
done

echo "Unique elements in the array :"
eval c=($(printf "%q\n" "${a[@]}" | sort -u))
eval c+=($(printf "%q\n" "${b[@]}" | sort -u))
#c >> $( printf "%s\n" "${a[@]}" | sort -u )
#c >> $( printf "%s\n" "${b[@]}" | sort -u )
echo ${c[@]}
