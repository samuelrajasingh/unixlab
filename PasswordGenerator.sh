#!/bin/bash
#Simple Password Generator 

# Reg NO URK17CS290

#I am using openssl to  generate random strings and encode it with  -base64 
#If you dont provide length the default length will be 48
# This is a simple password generator
#You can set an alias of your choice for simplicity
echo "Please enter the length of the password with the command"
echo "Password length will be 48 by default"
echo "you will get 5 different passwords"
echo "---------------------------------"
for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$@
done
echo "---------------------------------"
