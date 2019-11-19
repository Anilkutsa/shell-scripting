#! /bin/bash

# In this project, we iterate through files in a given folder, 
# search for lines containing sport keyword and copy those lines to separate file

rm ./samples/hot-folder
mkdir ./samples/hot-folder

for myfile in ./samples/*;
# Iterate through each file
do 
	if [ -f "$myfile" ]; then

		# Show the file name
		echo "${myfile##*/}"

		# If its a file, search for spo hot word in the file. i makes case insensitive
		# Capture result of grep command in variable named check
	 	check=$(grep -ni "spo" "$myfile")

	 	# Check if variable is empty or contains value
	 	if [ -z "$check" ]; then
	 		echo "Empty Search Result !!"
	 	else
	 		echo "HOT Keyword FOUND !!"
	 		cp "$myfile" ./samples/hot-folder
	 		echo " " >> ./samples/hot-folder/"${myfile##*/}"
	 		echo "**********" >> ./samples/hot-folder/"${myfile##*/}"
	 		echo "$check" >> ./samples/hot-folder/"${myfile##*/}"
	 	fi
	else
		echo "$myfile is NOT a file"
	fi
	echo "_____________________________"
done