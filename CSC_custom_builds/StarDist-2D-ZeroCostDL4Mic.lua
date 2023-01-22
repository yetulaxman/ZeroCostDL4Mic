-- Jupyter
prepend_path("PATH", "/projappl/project_xxx/user_name/ZeroCostDL4Mic/bin")
depends_on("gcc/9.4.0","cudnn/7.6.5.32-10.2","cuda/10.1.243")
prepend_path('PATH',"/appl/bin:/appl/spack/v018/install-tree/gcc-9.4.0/cuda-10.1.243-c7m3zk/bin")


setenv("_COURSE_BASE_NAME", "StartDist")
setenv("_COURSE_NOTEBOOK", "ZeroCostDL4Mic/Colab_notebooks/StarDist_2D_ZeroCostDL4Mic_CSC_Puhti.ipynb")
setenv("_COURSE_GIT_REPO", "https://github.com/yetulaxman/ZeroCostDL4Mic.git")
setenv("_COURSE_GIT_REF", "")
setenv("_COURSE_NOTEBOOK_TYPE", "notebook")

-- Extra course material
setenv("_COURSE_SRC", "")
