#! /bin/bash

myfunction(){
	var1="GlobalVariable"
	local var2="LocalVariable"
	echo "Variables inside function is ${var1} and ${var2}"
}
myfunction

echo "Variables outside function is ${var1} and ${var2}"