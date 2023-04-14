# remove all installations from home: rm -fr ~/.local/*
module load purge
module load tykky

mkdir /projappl/project_2001659/yetukuri/ZeroCostDL4Mic_splinedist
conda-containerize new --prefix  /projappl/project_2001659/yetukuri/ZeroCostDL4Mic_splinedist  splinedist.yml
export PATH="/projappl/project_2001659/yetukuri/ZeroCostDL4Mic_splinedist/bin:$PATH"
conda-containerize update /projappl/project_2001659/yetukuri/ZeroCostDL4Mic_splinedist/  --post-install requirement_final.txt
