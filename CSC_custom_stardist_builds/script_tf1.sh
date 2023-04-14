# remove all installations from home: rm -fr ~/.local/*
module load purge
module load tykky
# mkdir /projappl/project_xxx/user_name
mkdir /projappl/project_xxx/user_name/ZeroCostDL4Mic_convert
conda-containerize new --prefix  /projappl/project_xxx/user_name/ZeroCostDL4Mic_convert  stardist_python3_7.yml
export PATH="/projappl/project_xxx/user_name/ZeroCostDL4Mic_convert/bin:$PATH"
conda-containerize update /projappl/project_xxx/user_name/ZeroCostDL4Mic_convert/  --post-install requirements_tf1_conversion.txt
