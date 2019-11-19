# shell-scripting
Basics of shell scripting with working samples 

## 3 Rules of Command
- A command can act alone (date - returns date)
- A command can act on something (echo "hello" - returns hello, say "Hello There" - Says Hello There)
- A command can have options which let the command perform its action in a different way (date -u (returns date in UTC format))

## Command Syntax
```command (-option) (something)```

**Examples** <br />
- ```killall Skype``` - Kills process
- ```cal 01 2010``` - Returns calender of Jan 2010

## Basic Commands
- ```whoami``` : Returns your username of computer
- ```pwd``` : Present working directory. Returns your current directory path
- ```ls``` : List. Returns list of all files and folders. 
- ```ls -a``` : Returns list of all files and folders including all the hidden files
- ```ls -l``` : Long List. Returns details of all files and folders. This includes name of file, time last editted, size, group to which file is assigned, owner, permission
- ```ls Desktop``` - Lists all the files in Desktop directory
- ```ls -la Desktop``` - Returns long list of all the files and folder in Desktop including all the hidden files
- ```file <filename>``` - Gives more information about the file. 
- ```cd Desktop``` - Change directory. Takes you inside that directory. 
- ```open <filename>``` - Opens file in default tool.
- ```open <path>``` - Opens the path in file explorer. Use xdg-open incase you are using Ubuntu. 
- ```open .``` - Opens current directory in file explorer 
- ```ls ```. - Returns list of files/folders in current directory 
- ```touch <file1.extension> <file2.extension>``` - Creates a new file/files. You can mention the extension and shell creates file with same extension. 
- ```mkdir <directory1> <directory2>``` - Make directory. Creates new directory 
- ```mv <source-path/file1> <destination-path>``` - Moves file1 from source-path to destination-path
- ```mv <source-path/file1> .``` - Moves file1 from source-path to current directory 
- ```cp <source-path/file1> <destination-path>``` - Copies file1 from source-path to destination-path. 
- ```cp <source-path/file1> <destination-path/file2>``` - Copies contents of file1 from source-path to file2 in destination-path
- ```rm <path/file1>``` - Removes file1 from the mentioned path 
- ```*``` - Denotes anything/everything. For ex, file *.txt gives details of files that have .txt extension. rm * removes all files. open *.xls opens all xls files. 
- ```.``` - Denotes current working directory. 
- ```-R``` - Do something recursively. For ex, cp -R <source-path> <dest-path> recursively copies everything in source-path to dest-path. ```cp -R <path>``` recursively removes all files in path. ls -R . list all the files/folder in current directory
- ```less``` - less is a command that displays file contents or command output one page at a time in your terminal
- ```tail <lines> <file.extension>``` - Displays last few lines of the file. tail -100 a.txt shows last 100 lines of the file.
- ```which <command-name>``` - Tells us the location of program file for given command 
- ```man pwd``` - Manual of instructions on commands etc.
- ```$?``` - returns exit status.  

## Permission breakdown when you use ls -l
```d rwx rw- r--```<br />
```- rw- r-- r--```<br />
```d``` : tells its a directory<br />
```-``` : tells us its a file<br />
first ```rwx``` tells us that owner has permission to read, write and execute the files in the folder<br />
Second ```rw-``` tells us that group has permission to read and write, but CANNOT execute the files in the folder<br />
Third ```r--``` tells us that everyone else (who is not a owner or group) can only read the file. He cannot write or execute the files<br />

## Advanced Commands
- ```>``` (Redirect command) - It lets you redirect output of command inside a file. For ex, echo "Hello" > file.txt overwrites Hello inside file.txt file. 
- ```>>``` (Append command) - It lets you append output of command to the contents of the file. echo "world" >> file.txt append world to Hello text inside file.txt file. ls -al >> file.txt copies all the files in current directory to file.txt. 
- ```|``` (Pipe command) - Takes output from one command and gives as input to another command. 
- find <path> <option> <filename> - Returns path of the file that matches the filename in given path. For ex. find . -name dummy.txt gives path of dummy.txt folder.
- ```grep <search_text> <filename>``` - Greps returns lines that match the search text inside the file. grep is case sensitive, hence always use with grep -i which makes it case insensitive. You can also use it with | command. ls | grep -i t lists all files that contain t in them. ls | grep -v t returns all the files that dont contain t in them. 

### AWK Command
- ```awk``` - awk command is useful for printing data that is in table format. awk '{print }' dummy.txt prints data in below format. 

```
NAME 		COUNTRY 	AGE 	POINTS
Frank 	usa			  31		7938279
Tom 		usa			  32		4553535
Tim 		India		  30		544355
Mast 		usa			  27		345535
Mill 		Syria		  30		4353535
```

- ```awk '{print $1}' dummy.txt``` - Prints just the first column of the table 
- ```awk '{print $1,$2}' dummy.txt``` - Prints 1st and second columns
- ```awk '{print $NF}' dummy.txt``` - Prints last column 
- ```awk '{print $(NF-1)}' dummy.txt``` - Prints second last column 
- ```awk 'NR==2 {print $0}' dummy.txt``` - Prints second row of the table. NR stands for number of rows. 
- ```awk 'NR==2 {print $2}' dummy.txt``` - Prints second row, second column of the table. 
- ```awk 'NR==2,NR==5 {print $0}' dummy.txt``` - Prints second to fifth line of the table
- ```awk 'NR==2;NR==5 {print $0}' dummy.txt``` - Prints just the second and fifth line of the table
- ```awk 'NR==2,NR==5 {print $1,$4}' dummy.txt``` - Prints row 2 to 5 for columns 1 and 4

Now, lets assume data is in below format - 
```
NAME;COUNTRY;AGE;POINTS
Frank;usa;31;7938279
Tom;usa;32;4553535
Tim;India;30;544355
Mast;usa;27;345535
Mill;Syria;30;4353535
```
- ```awk -F ";" '{print $1}' dummy.txt``` - Returns first column of the table. This allows awk to split table using the mentioned seperator and return results accordingly 
- ```awk '/usa/ {print $0}' dummy.txt``` - Returns all the rows that contain usa string. 
- ```awk '/usa|India/ {print $0}' dummy.txt``` - Returns all the rows that contain usa or India string. 
- ```awk '$2~/i/ {print $0}' dummy.txt``` - Returns all rows that contain i in the second column. 
- ```awk '$2~/i/ {print $2,$4}' dummy.txt``` - Returns all rows that contain i in the second column, but returns only 2nd and 4th column. 
- ```awk '{print length($1)}' dummy.txt``` - Returns length of charectors of first column. 
- ```awk '{print $1,length($1)}' dummy.txt``` - Returns column 1 along with length of charectors of first column. 

### Sudo Command
- ```sudo``` - lets you act as root user who is a super user. It helps you override any permission. 
- ```sudo bash``` - Switches the user of shell of terminal to root user. To exit as root user, type exit and you will return as normal user. 
- ```sudo chown <new_owner> <file/folder>``` - Change ownership. This helps change ownership of file to new_owner. 
- ```sudo chgrp <new_group> <file/folder>``` - Change group. This helps change group owner of file to new_group. 
- ```sudo chmod u=wrx <file/folder>``` - Change Mode. Gives read, write, execute permission to owner. 
- ```sudo chmod g=wr <file/folder>``` - Gives read and write permission to group. 
- ```sudo chmod o=r <file/folder>``` - Gives other the permission to just read. 
- ```sudo chmod +x <file/folder>``` - Add executable permission to owner, group and others. 
- ```sudo chmod -x <file/folder>``` - Remove executable permission to owner, group and others. 
- ```sudo chown -R <new_owner> <file/folder>``` - Changes ownership of the folder and files/folder inside it recursively. 

## Variables
```myvar=6767``` - creates a variable with given value. Make sure there are no spaces before or after =. 
```echo "$myvar", echo $myvar, echo ${myvar}``` - returns value of variable 6767
```unset myvar``` - Remove value from the variable

```
mycommand = ls
$mycommand
``` 
list all the files. Shell will automatically interprit and substitute ls for mycommannd. <br />

Below are some of system variables which can be useful - <br />
```echo $USER``` - Returns username<br />
```echo $HOME``` - Gives home path<br />
```echo $PATH``` - Gives list of directories that system looks for to execute files. <br />

## Expansion Operator ($)
```
s=anil
echo $s
``` 
- prints anil

```$(command)``` - Command Substitution. Helps capture output of the command 
For ex, ```d=$(ls)``` - This captures the result of ls command and puts it into d variable.
```echo $d``` - This will list all the files/folders in current path. 

## Login Script
Whenever terminal is opened, system will run login script where it sets all important aspect that you use in your shell like variables, home folder, path etc. Login Script can be either ```.profile``` or ```.bashrc``` or ```.bash_profile``` or ```.login```. In mac its ```.bash_profile```

You can set variable inside .bash_profile and use it when needed in terminal. For ex - 
```s="/Users/anilsuryaprakash/Documents/workspace"```
```source .bash_profile``` - Reloads .bash_profile file again into terminal. 
Now, whenever you type ```cd $s```, it will directly take you to workspace folder

##  Read
```read``` is very helpful for capturing user input into variables. 
```read myvalue``` - Allows you to type a value that will be set to myvalue variable
```read -p "Type Your Age" age``` - Shows Type Your Age and anything entered will be captures into age variable
```read -s "Type Your Password" password``` - You will be unable to see whats being entered 

## Shell Scripting
- Terminal usually allows just one command at the time
- Shell scripts allows you to combine and run multiple commands together
- Shell scipting also allows you to use if-else statements and loops

## Arithmetic Expression 
```echo " $((2+3)) "``` - (()) is for arithmetic expression. You can add, sub, multiply etc. 
 

