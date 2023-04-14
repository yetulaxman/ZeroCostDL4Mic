

### Installing necessary python packages to *projappl* directory using *tykky*

Tykky wraps installations inside singularity container for improved performance metrics including faster startup times, reduced IO load, and  fewer number of files on large parallel filesystems. Please refer to CSC documentation on [tykky](https://docs.csc.fi/computing/containers/tykky/) for more detailed information.

For the installation of computational environment required for ZeroCostDL4Mic model, we use the tykky in the following way (make sure to edit with correct CSC project name/username as needed):

```bash
# login to Puhti super computer  
mkdir /scartch/project_xxxx/user_name && cd /scartch/project_xxxx/user_name
git clone https://github.com/yetulaxman/ZeroCostDL4Mic.git
cd ZeroCostDL4Mic/CSC_custom_splinedist_builds/
chmod +x script_splinedist.sh
# install TF2 compute environment needed for splinedist-2D-ZeroCostDL4Mic model
./script_splinedist.sh
```

### Creating a notebook environment with installed modules

The configuration files for setting up notebooks environments (modules) should be created in the directory: /projappl/project_xxxx/www_puhti_modules/. 

The two files needed for setting up ZeroCostDL4Mic modules are:
   - a <<course_name>>.lua file that defines the module that sets up the Python environment. 
   - a <<course_name>>-resources.yml that defines the default resources used for Jupyter.
  
Copy those two files (i.e., SplineDist-2D-ZeroCostDL4Mic-resources.yml and SplineDist-2D-ZeroCostDL4Mic.lua ) in this git repository to appropriate place in projappl folder and then edit the correct project name/username:

```bash

mkdir /projappl/project_xxxx/www_puhti_modules && cp SplineDist-2D-ZeroCostDL4Mic-resources.yml 	SplineDist-2D-ZeroCostDL4Mic.lua  /projappl/project_xxxx/www_puhti_modules

```

### Accessing notebook via Puhti web interface

1. Login to [Puhti web interface](https://www.puhti.csc.fi/public/login.html)
2. Login with CSC or course credentials (Users should have accepted Puhti service in [myCSC](https://my.csc.fi/welcome) page under a course ( or own) project before using this service). 
3. Once login is successfull, select "Interactive Sessions" on the top menu bar and then click "Jupyter for courses". You should be able to to "StarDist-2D-ZeroCostDL4Mic" environment under your project. Enter all other necessary parameters.
4. Upon successful launching a job, you can click on "connect to Jupyter" to see SplineDist-2D-ZeroCostDL4Mic notebook.

