#! /bin/bash


echo -e "Enter the value of Basic Salary: \c"

read basic_sal

if [ $basic_sal -ge 0 ]

then

  basic=$(expr 1.0*"$basic_sal" | bc)

  temp=$(expr "$basic"+"$dp" | bc)

  if [ $basic_sal -le 1500 ]
  then
	da=$(expr 0.90*"$temp" | bc)

	hra=$(expr 0.1*"$temp" | bc)
  else
	da=$(expr 0.98*"$temp" | bc)
	hra=500

  fi

  salary=$(expr "$basic"+"$da"+"$hra" | bc)


  echo "Your Basic Salary	:  	$basic "

  echo "Your DA			:	$da"

  echo "Your HRA		:	$hra"

  echo "                    	    ------------"

  echo "Your Net Salary is  Rs. 	$salary "

else

  echo "Please enter a valid Basic Salary "

fi 
