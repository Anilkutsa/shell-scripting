#! /bin/bash

#exit - command stops the execution of the program

echo "_________IF/ELSE IF/ELSE CONDITION_________"
# 3 -eq 3 (3 == 3)
# 3 -ne 3 (3 != 3)
# 3 -gt 1 (3 > 1)
# 3 -lt 7 (3 < 7)
# 3 -ge 3 (3 >= 3)
# 3 -le 3 (3 <= 3)
# -o (OR condition)
# -a (AND condition)
# -z (Check if string is empty)

age=0
echo "age is $age"
if [ $age -eq 0 -o $age -lt 20 ]; then
	echo "You are a teenager"
elif [ $age -gt 20 -a  $age -lt 30 ]; then
	echo "You are an younger adult"
elif [ $age -gt 30 -a  $age -lt 50 ]; then
	echo "You are an adult"
	exit
else
	echo "God save you"
fi
echo "End of if condition"

echo "______COMPARING STRINGS________"
# String comparision is case sensitive

if [ "abcd" == "abcd" ]; then
	echo "EQUAL!"
fi
echo "End of string comparision"

echo "______CHECK FOR EMPTY STRINGS________"
read -p "Type Something: " str
# If input string has space in between, below statement will not execute. 
# Hence you can enclose $str in double quotes to avoid this error
if [ -z "$str" ]; then
	echo "Empty String"
else
	echo "String entered is $str"
fi
echo "Checking Empty String Complete"


echo "______CONDITION ON FILES________"
# Check if a file exists
myfile=1_script.sh

if [ -e $myfile ]; then
	echo "$myfile Exists !!"
fi

if [ ! -e $myfile ]; then
	echo "$myfile Does Not Exist !!"
fi

if [ -d $myfile ]; then
	echo "$myfile is directory !!"
fi

if [ ! -d $myfile ]; then
	echo "$myfile is not a directory !!"
fi

if [ -r $myfile ]; then
	echo "$myfile is readable !!"
else
	echo "$myfile is not readable !!"
fi

if [ -r $myfile ]; then
	echo "$myfile is writable !!"
else
	echo "$myfile is not writable !!"
fi

if [ -x $myfile ]; then
	echo "$myfile is execuatable !!"
else
	echo "$myfile is not execuatable !!"
fi

if [ -s $myfile ]; then
	echo "$myfile is Not Empty !!"
else
	echo "$myfile is Empty !!"
fi

echo "_________CASE(SWITCH) CONDITION_________"

echo " SIMPLE CASE CONDITION"

echo "Select an option"
echo "Type 1 to Do A"
echo "Type 2 to Do B"
echo "Type 3 to Do C"
echo "Type 4 to Do D"
read choice


# Case can take int like 1, or String "Hello"
case $choice in
	1)
		echo " You choose A "
		;;
	2)
		echo " You choose B "
		;;
	3)
		echo " You choose C "
		;;
	4)
		echo " You choose D "
		;;
	*) echo " None of the above "
esac

echo " COMPLEX CASE CONDITION"
echo "Type a numer or charector"
read car
case $car in
	[0-3] | [7-9])
		echo " You types a number either between 1 and 3 or 7 and 9 "
		;;
	2[0-9])
		echo " You types a number betwen 20 and 29 "
		;;
	[a-z])
		echo " You typed a small charector "
		;;
	[A-Z])
		echo " You typed a capital charector "
		;;
	*) echo " None of the above "
esac


