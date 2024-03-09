# PyStart

A short and simple bash script that initiates a base python directory structure

###  Running the script

Navigate to the desired directory, run the script with the directory. You'll then be prompted for a project name:

```
=-=-= PYSTART =-=-=
Project Name: 

```

PyStart will then take a few seconds to create the directory structure:

```
creating pystart tree ...
```

The tree is structured as follows:

```
| - [Your Project Name]
| ----- [Your Project Name]
| --------- __init__.py
| --------- yourProject.py
| ----- LICENSE.txt
| ----- README.md
| ----- setup.py
```

PyStart will pre-populate the setup file for you. This will include the standard options:

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



