#! /bin/bash

#To run this file use ./intro.sh on command line
#If you don't get permissions use this command: chmod +x <file-name> to give executable permissions to user

echo "Hello! This is the intro script. Please run this everytime you want to access the shell resources :)"

echo "These are the set of files currently in the resources"
echo
echo "$(ls tutorials | sort)"
echo

folder=$(ls -d */)

echo "${folder}"

while [ 1 -le 2 ];
do
	read -p "Please enter the name of the file you want to view: " file_name

	if [ -e "${folder}${file_name}" ]; then
		vi "${folder}${file_name}"
		exit
	else
		echo "Please enter a valid file"
	fi
done
