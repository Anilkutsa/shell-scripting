#! /bin/bash

echo "Hello World - My first bash script"
read -p "Please input your name " name
echo "Welcome ${name}_someAppendedValue"

echo "Tell us the file path you to open - "
read filepath
open $filepath

echo "Now lets rename a file"
touch samples/1.txt samples/2.txt
ls -l >> samples/1.txt
read -p "Enter prefix for the file " pref
mv samples/1.txt samples/${pref}1.txt
echo "Done. File has been given prefix."

echo "Now lets create a script"
read -p "Enter the name of the script " script_name
touch samples/${script_name}.sh
echo "#! /bin/bash " >> samples/${script_name}.sh
echo "#Sample scipt has been created" >> samples/${script_name}.sh
chmod +x samples/${script_name}.sh
echo "Done"

#this is a comment for myself