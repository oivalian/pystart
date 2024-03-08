#!/bin/bash

# prompts the user for name of project
echo \n=-=-= PYSTART =-=-=\n
read -p "Project name: " project
echo creating pystart tree ...
sleep 2

# This creates the project directory
mkdir "$project"
cd "$project" || return

# creates the files and directories
touch README.md
touch setup.py
touch LICENSE.txt
mkdir "$project"
cd "$project" || return
touch __init__.py
touch "$project".py
cd ../../
echo pystart tree created at $PWD

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
