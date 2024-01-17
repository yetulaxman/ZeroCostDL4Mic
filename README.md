# ZeroCostDL4Mic: exploiting Google Colab to develop a free and open-source toolbox for Deep-Learning in microscopy

_**Tl;dr**_: this [**wiki page**][wikiPage] has everything you need to get started.

[![DOI](https://zenodo.org/badge/239971181.svg)](https://zenodo.org/badge/latestdoi/239971181)

## What is this?

ZeroCostDL4Mic is a collection of self-explanatory Jupyter Notebooks for [**Google Colab**][1] that features an **easy-to-use graphical user interface**. They are meant to quickly get you started on learning to use deep-learning for microscopy. Google Colab itself **provides the computations resources needed at no-cost**. **ZeroCostDL4Mic** is designed for researchers that have little or no coding expertise to quickly test, train and use popular Deep-Learning networks.

## Want to see a short video demonstration?

| Running a ZeroCostDL4Mic notebook | Example data in ZeroCostDL4Mic | Romain's talk @ Aurox conference | Talk @ SPAOM |
|:-:|:-:|:-:|:-:|
| [![](https://github.com/HenriquesLab/ZeroCostDL4Mic/blob/master/Wiki_files/ZeroCostDL4Mic_SuppVideo1_Running_a_notebook.jpg)](https://youtu.be/TrDuidvO85s) | [![](https://github.com/HenriquesLab/ZeroCostDL4Mic/blob/master/Wiki_files/ZeroCostDL4Mic_SuppVideo2_Analysis_of_example_data.jpg)](https://youtu.be/KauKEr0Kkkc) | [![](https://github.com/HenriquesLab/ZeroCostDL4Mic/blob/master/Wiki_files/ScreenShot_AuroxTalk_resized.jpg)](https://youtu.be/rCEbYOnNJp0) | [![](https://github.com/HenriquesLab/ZeroCostDL4Mic/blob/master/Wiki_files/ZDL4_SPAOM.jpg)](https://www.youtube.com/watch?v=ozffChqtgJw) |

## Who is it for?

Any researcher interested in microscopy, independent of their background training. **ZeroCostDL4Mi**c is designed for anyone with little or no coding expertise to quickly test, train and use popular Deep-Learning networks used to process microscopy data.

# Deploying custom notebooks at CSC

CSC hosts notebooks on Puhti supercomputing environment. A CSC user is expected to have a [user account at CSC](https://docs.csc.fi/accounts/how-to-create-new-user-account/) and be a member of a project that [has access to the Puhti service](https://docs.csc.fi/accounts/how-to-add-service-access-for-project/).  Participants can use either [Puhti web interface](www.puhti.csc.fi) or [SSH client](https://csc-training.github.io/csc-env-eff/hands-on/connecting/ssh-puhti.html) for logging into Puhti. The familiarity with the following main topics help you get started smoothly with hackathon:

- [A brief primer on using Puhti computing environment](#a-brief-primer-on-using-puhti-computing-environment)
- [Preparing a custom Jupyter notebook](#preparing-a-custom-jupyter-notebook)
- [Creating a course environment/module(s) on Puhti Web Interface](#creating-a-course-environment-module-on-puhti-web-interface)
- [Accessing notebook *via* Puhti web interface](#accessing-notebook-via-puhti-web-interface)
- [Useful CSC documentation](#useful-CSC-documentation)
- [Acknowledgements](#acknowledgements)
  
## A Brief Primer on Using Puhti Computing Environment
  - **Module system**: CSC uses module system to manage complex application stack in supercomputing environment. Applications installed as modules can easily be used in both interactive and batch jobs. The detailed instructions on using modularised applications can be found in [CSC documentation pages](https://docs.csc.fi/computing/modules/) as well as a [CSC course page](https://csc-training.github.io/csc-env-eff/hands-on/modules/modules-puhti.html)
  - **Disk areas**: CSC supercomputers have three main disk areas namely *home*, *projappl* and *scratch* which are visible to all compute and login nodes.  Each disk area has its own dedicated use and comes with quota limits on the size of disk pace and the number of files. Default quotas and their specific use can be found in [CSC user documentation](https://docs.csc.fi/computing/disk/)
  - **Custom installations**: You can install own software on CSC supercomputers if you cannot find it from the list of [pre-installed applications](https://docs.csc.fi/apps/) or using *module spider* command on Puhti terminal. Typically, one can download the source code of the software, compiles the code, and installs to a location where the user has write-access, e.g. the project's /projappl directory. More about installations can be found on [CSC documentation page](https://docs.csc.fi/computing/compiling-puhti/) and a [CSC course pages](https://csc-training.github.io/csc-env-eff/hands-on/installing/installing_hands-on_python.html). Puhti also supports [containerised installations](https://csc-training.github.io/csc-env-eff/hands-on/singularity/singularity-tutorial_part1.html)
  - **Puhti web interface**: You can use web interface for [Puhti](www.puhti.csc.fi) to access Puhti supercomputer. The web interface greatly eases the use of complex applications that have graphical user interfaces among other uses. Read more information about the web interface on [CSC documentation page](https://docs.csc.fi/computing/webinterface/)

## Preparing a Custom Jupyter Notebook

CSC provisions [popular python environements as ready-to-use notebooks](https://docs.csc.fi/computing/webinterface/jupyter/). You can however customise a python environement to meet your own needs and can be accessed through [Puhti web interface](https://www.puhti.csc.fi).  The customisation of notebook typically involves the following procedure:


### Installing Necessary Python Packages to *Projappl* Directory Using *tykky*

Conda installations should not be done directly on Puhti. [Tykky wrapper tool](https://docs.csc.fi/computing/containers/tykky/) instead be used to install python packages in setting up your compute environment. The wrapper tool installs applications inside of a singularity container and thus  facilitates better performance in terms of faster startup times, reduced IO load, and reduced number of files on parallel filesystems. 

The  example of tykky-based custom installation for three deep learning models namely, StarDist-2D-ZeroCostDL4Mic, SplineDist-2D-ZeroCostDL4Mic and EmbedSeg-2D-ZeroCostDL4Mic can be found in the individual folders.


### Creating a Course Environment Module on Puhti Web Interface

One has to create a course environments (modules) in the directory /projappl/project_xxxx/www_puhti_modules/ to be able to see a course module in Puhti web insterface ("under Jupyter for courses") . The www_puhti_modules directory can be created if it does not exist. Please note that module_name has to be unique accross the project members. 

The two files needed for setting up the course modules are:
   - a <<module_name>>.lua file that defines the module that sets up the Python environment. Only files containing the text Jupyter will be visible in the app.
   - a <<module_name>>-resources.yml that defines the default resources used for Jupyter.
  
For three Google colab notebooks, the above mentioned two files (i.e., .lua and .yaml files) are created  in the GitHub repository in their respective folders. So just copy them over to appropriate place under */projappl* folder.

Once you have set up modules as instructed above, a module named, notebook is visible in "Jupyter for courses" app in the Puhti web interface

## Accessing Notebook *via* Puhti Web Interface

1. Login to [Puhti web interface](https://www.puhti.csc.fi/public/login.html)
2. Login with your CSC account (or Haka/Virtu) (Users should have accepted Puhti service in [myCSC](https://my.csc.fi/welcome) page under a course ( or own) project before using this service). 

3. Once login is successfull, you can click "Interactive Sessions" on the top menu bar and then click "Jupyter for courses" (or directly from pinned apps on landing page). Once the app is launched, you can see the different fields to fill in before launching a job. For this course, select the "course Project" and Working directory corresponding  to course project. Then you will be able to see custom module under the "Course module" field. You can then launch Jupyter notebook whick will be launched in the interaction partition by default. You can also change the default settings by checking "Show custom resource settings". 

4. Upon successful launching a job, you can click on "connect to Jupyter" to see the course notebook corresponding to your custom installations

##  Useful CSC Documentation

- [Jupyter for course](https://docs.csc.fi/computing/webinterface/jupyter-for-courses/)
- [Tykky containerisation](https://docs.csc.fi/computing/containers/tykky/)
    
## Acknowledgements

This project initiated as a collaboration between the [**Jacquemet**][6] and [**Henriques**][5] laboratories, considerably expanding with the help of laboratories spread across the planet. There is a long list of contributors associated with the project acknowledged in our [**related paper**](https://www.nature.com/articles/s41467-021-22518-0) and the [**wiki page**][wikiPageContributors].

## How to cite this work

_Lucas von Chamier*,  Romain F. Laine*, Johanna Jukkala,  Christoph Spahn, Daniel Krentzel, Elias Nehme,  Martina Lerche, Sara Hernández-pérez,  Pieta Mattila,  Eleni Karinou,  Séamus Holden, Ahmet Can Solak,  Alexander Krull,  Tim-Oliver Buchholz,  Martin L Jones,  Loic Alain Royer,  Christophe Leterrier, Yoav Shechtman,  Florian Jug,  Mike Heilemann,  Guillaume Jacquemet,  Ricardo Henriques. 
**Democratising deep learning for microscopy with ZeroCostDL4Mic. Nature Communications, 2021.** 
DOI: [https://doi.org/10.1038/s41467-021-22518-0](https://www.nature.com/articles/s41467-021-22518-0)_

[![](https://github.com/HenriquesLab/ZeroCostDL4Mic/blob/master/Wiki_files/NatComms_paper.png)](https://www.nature.com/articles/s41467-021-22518-0)

  [1]: https://colab.research.google.com/notebooks/intro.ipynb
  [2]: https://twitter.com/guijacquemet
  [3]: https://twitter.com/LaineBioImaging
  [4]: https://twitter.com/HenriquesLab
  [5]: https://henriqueslab.github.io/
  [6]: https://cellmig.org/
  [7]: https://github.com/HenriquesLab/ZeroCostDL4Mic/blob/master/Wiki_files/ColabPaperFigure1_v4.png
  [8]: https://github.com/HenriquesLab/ZeroCostDL4Mic/blob/master/Wiki_files/VideoDemoScreenshot1.png
  [wikiPage]: https://github.com/HenriquesLab/DeepLearning_Collab/wiki
  [wikiPageContributors]: https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#contributors
