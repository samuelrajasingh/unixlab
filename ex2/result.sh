clear
echo -----------------------------------
echo '\tStudent Mark List'
echo -----------------------------------
echo Enter the Student name
read name
echo Enter the Register number
read rno
echo Enter the Internal Marks
read im
echo Enter External Marks
read em
ci=$(( 60 * im / 120 + (1000 * im / 120 % 10 >= 5 ? 1 : 0) ))
ce=$(( 40 * em / 100 + (1000 * em / 100 % 10 >= 5 ? 1 : 0) ))
tot=$(expr $ci + $ce)
if [ $em -ge 38 ] && [ $tot -ge 45 ]
then
	echo "Result	: PASS"
else
	echo "Result    : FAIL"
fi

