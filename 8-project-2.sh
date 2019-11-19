#! /bin/bash

# In this project, we iterate through all the files and FOLDERS in a given folder, 
# search for lines containing sport keyword and copy those lines to separate file

mkdir ./samples/hot-folder-2

# Iterate through all directories in samples folder
for i in $(find ./samples -type d)
do
	# Hot-folder is where we save results. Don't scan that folder
	if [ $i != "./samples/hot-folder-2" ]; then
		echo "CURRENT FOLDER NAME IS : $i "
		# Iterate through each file of folder
		for myfile in $i/* ;
		do
			# Make sure we are checking only files
			if [ -f "$myfile" ]; then
				echo "the file inside is: $myfile"
				# If its a file, search for spo hot word in the file. i makes case insensitive
				# Capture result of grep command in variable named check
		 		check=$(grep -ni "spo" "$myfile")

		 		# Check if variable is empty or contains value
		 		if [ -z "$check" ]; then
		 			echo "Empty Search Result !!"
		 		else
		 			echo "HOT Keyword FOUND !!"
		 			file_name=$(basename $myfile)
		 			cp "$myfile" ./samples/hot-folder-2
		 			echo " " >> ./samples/hot-folder-2/"$file_name"
		 			echo "**********" >> ./samples/hot-folder-2/"$file_name"
		 			echo "$check" >> ./samples/hot-folder-2/"$file_name"
		 		fi
		 	fi
		done
		echo "_____________________________"
		echo " "
	fi
done

