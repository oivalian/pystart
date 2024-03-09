#!/bin/bash

# prompts the user for name of project
sleep 1
echo -e "=-=-=-=-= PYSTART =-=-=-=-="
read -p "Project name: " project


# if the directory exists, user has a choice of overwriting or terminating
if [ -d "$project" ]; then 
	read -p "'"$project"' is an existing directory. Would you like to ovewrite it? [Y|N]: " choice 
	choice=$(echo "$choice" | tr "[:upper:]" "[:lower:]") # translates choice to lower

	# Options for choice.
	if [ "$choice" = "y" ] || [ "$choice" = "yes" ]; then
		read -p "Are you sure you wish to ovewrite directory? All files and sub-directories contained within will be lost [Y|N]: " choice	
		choice=$(echo "$choice" | tr "[:upper:]" "[:lower:]") # translates choice to lower

		if [ "$choice" = "y" ] || [ "$choice" = "yes" ]; then
			rm -rf "$project" # force removes project directory 
			# This creates the project directory
			echo creating PyStart tree ...
			sleep 2	
			mkdir "$project"
			echo Directory "$project" created at $PWD 
			cd "$project" || return
			sleep 1
		else
			echo "terminating..."
			exit 1
		fi
	else
		echo "terminating..."		
		exit 1 # exits with a non-zero status code which will idicate an error
	fi

else

	# This creates the project directory
	echo creating PyStart tree ...
	sleep 2	
	mkdir "$project"
	echo Directory "$project" created at $PWD 
	cd "$project" || return
	sleep 1

fi

# creates the files and directories
touch README.md
echo Empty readme file "README.md" generated at $PWD
sleep 0.3
touch setup.py
echo Boiler "setup.py" generated at $PWD
sleep 0.3
touch LICENSE.txt
echo Empty license file "LICENSE.txt" generated at $PWD
sleep 1
mkdir "$project"
echo Directory "$project" generated at $PWD 
cd "$project" || return
sleep 1
touch __init__.py
echo Empty initialisation file "__init__.py" generated at $PWD
sleep 0.3
touch "$project".py
echo Empty Python file ""$project".py" generated at $PWD
sleep 0.3
cd ../../
sleep 1
echo PyStart tree created at $PWD

# adds default boiler to setup.py
cat <<EOF >../setup.py
from setuptools import setup, find_packages

VERSION = "1.0"
DESCRIPTION = "Your project description goes here"
AUTHOR = "Your name goes here"
AUTHOR_EMAIL = "youremail@email.com"
LICENSE = "License type"

setup(
	name = "$project"
	version = VERSION
	author = AUTHOR
	author_email = AUTHOR_EMAIL
	description = DESCRIPTION
	license = LICENSE
	packages = find_packages(),
	install_requires=[
		"package1 ...",
		"package2 ...",
	],
)
EOF
