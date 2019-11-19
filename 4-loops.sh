#! /bin/bash

echo "________ FOR-LOOP-START_______"

echo "________Varient1________"
for i in {1,2,3,4}
do 
	echo "hello $i"
done

echo "________Varient2________"
for i in {10..15}
do 
	echo "hello $i"
done

echo "________Varient3________"
for i in {10000,"dog",-5,"Hello",-98}
do 
	echo "hello $i"
done

echo "________Varient4________"
for i in {10000,"dog",-5,"danger",-98}
do 
	echo "hello $i"
	if [ $i == "danger" ]; then
		echo "*** DANGER !! STOPPING LOOP ***"
		break
	fi
done

echo "________Varient5________"
# This lists all files in current path
for i in ./*
do
	echo "name of file is: $i"
done

echo "________ FOR-LOOP-END_______"

echo "________ WHILE-LOOP-START_______"

number=1
while [ $number -le 15 ];
do
	echo "number is $number"
	number=$(( number + 4 ))
done

echo "________ WHILE-LOOP-END_______"

echo "________SLEEP________"
for i in {11..13}
do 
	echo "hello $i"
	sleep 0.5
done