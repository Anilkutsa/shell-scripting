#! /bin/bash

echo "_______simple function________"
hello(){
	echo "Today is $(date). Have a great day"
}
hello

echo "_______function with arguments________"
hello2(){
	echo "Hello $1"
	echo "Hello also to $2"
}
hello2 "Anil" "Sowmya"

echo "_______function with returning value________"
hello3(){
	return 35
}
hello3
echo "Returned value is $?"