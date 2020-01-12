# !/bin/bash


# Take user Input

# Input type of operation

echo "Enter Choice :"

echo "1. Addition"

echo "2. Subtraction"

echo "3. Multiplication"

echo "4. Division"

echo "5. SINE"
echo "6. COSINE"
echo "7. TANGENT"

read ch

if [ $ch -lt 5 ]
then
	echo "Enter Two numbers : "
	read a
	read b
else
	echo "Enter One number : "
	read a

fi

case $ch in
1)res=`echo $a + $b | bc`

;;

2)res=`echo $a - $b | bc`

;;

3)res=`echo $a \* $b | bc`

;;

#4)res=`echo "scale=2; $a / $b" | bc`
4)res= awk 'BEGIN{print "$a"/"$b" }'
;;

5)res=`echo "scale=5; s($a) " | bc -l`
#5)res= awk 'BEGIN{}'

;;

#6)res=`echo "scale=5; c($a) " |bc -l`

;;

#7)res=`echo "scale=5; s($a)/c($a)" | bc -l`

;;

esac

echo "Result : $res"

