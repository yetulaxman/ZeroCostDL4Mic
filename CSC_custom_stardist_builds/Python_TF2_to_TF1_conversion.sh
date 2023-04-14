> cd /scratch/project_xxx/user_name/.../Stardist (e.g., under which there is "stardist_model" folder where TF2 model is saved )
# rename TF-model zip file before you do TF2 to TF1 conversion
> mv stardist_model/TF_SavedModel.zip stardist_model/TF_SavedModel_tf2.zip
# Load TF1 python environment
export PATH="/projappl/project_2001659/yetukuri/ZeroCostDL4Mic_convert/bin:$PATH"
> python
from stardist.models import StarDist2D
model = StarDist2D(None, name='stardist_model', basedir='.')
model.export_TF()
