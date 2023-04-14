-- Jupyter
prepend_path("PATH", "/projappl/project_2001659/yetukuri/ZeroCostDL4Mic_splinedist/bin")
depends_on("gcc/9.4.0","cudnn/8.1.0.77-11.2","cuda/11.1.1")
prepend_path('PATH',"/appl/bin:/appl/spack/v018/install-tree/gcc-9.4.0/cuda-11.1.1-lfaa3j/bin")


setenv("_COURSE_BASE_NAME", "SplineDist")
setenv("_COURSE_NOTEBOOK", "ZeroCostDL4Mic/Colab_notebooks/Beta notebooks/SplineDist_2D_ZeroCostDL4Mic.ipynb")
setenv("_COURSE_GIT_REPO", "https://github.com/HenriquesLab/ZeroCostDL4Mic.git")
setenv("_COURSE_GIT_REF", "")
setenv("_COURSE_NOTEBOOK_TYPE", "notebook")

-- Extra course material
setenv("_COURSE_SRC", "")
