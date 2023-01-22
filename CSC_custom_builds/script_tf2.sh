# remove all installations from home: rm -fr ~/.local/*
module load purge
module load tykky
mkdir /projappl/project_xxx/user_name/ZeroCostDL4Mic
conda-containerize new --prefix  /projappl/project_xxx/user_name/ZeroCostDL4Mic  stardist3_8.yml
export PATH="/projappl/project_xxx/user_name/ZeroCostDL4Mic/bin:$PATH"
conda-containerize update /projappl/project_xxx/user_name/ZeroCostDL4Mic/  --post-install requirements_startdist.txt
