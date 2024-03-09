# PyStart

A short and simple bash script that initiates a base python directory structure

###  Running the script

Navigate to the desired directory and run the script. You'll then be prompted for a project name:

```
=-=-= PYSTART =-=-=
Project Name: 
```

PyStart will then take a few seconds to create the directory structure:

```
creating PyStart tree ...
```

The tree is structured as it would for libraries as follows:

```
| - [Your Project Name]
| ----- [Your Project Name]
| --------- __init__.py
| --------- yourProject.py
| ----- LICENSE.txt
| ----- README.md
| ----- setup.py
```

> [!WARNING]
> If there is an existing directory, PyStart will prompt you if you wish to overwrite it. Doing so will DELETE the existing directory. USE CAUTION

```
'myPyProject' is an existing directory. Would you like to ovewrite it? [Y|N]: y
Are you sure you wish to ovewrite directory? All files and subdirectories contained within will be lost [Y|N]: Y
``` 

PyStart will begin the process. Created the files and subdirectories as required.

```
Empty readme file "README.md" generated at /home/user/pyprojects/myPyProject
Boiler "setup.py" generated at /home/user/pyprojects/myPyProject
Empty license file "LICENSE" generated at /home/user/pyprojects/myPyProject
Directory "MyPyProject" generated at /home/user/pyprojects/myPyProject
Empty initialisation file "__init__.py" generated at /home/user/pyprojects/myPyProject/myPyProject
Empty Python file "myPyProject.py" generated at /home/user/pyprojects/myPyProject/myPyProject
PyStart tree created at /home/user/pyprojects
```

PyStart will have pre-populated the setup file for you. This will include the standard boiler:

```
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
```


