@echo off

REM Activate first conda environment
call conda activate torch

REM Run first python 3D geom generation
python shap-e\main.py

REM Deactivate first envrironment
call conda deactivate

REM Run the maya API utils
"C:\Program Files\Autodesk\Maya2024\bin\mayapy" shap-e\maya_geom_fixes.py

REM Activate second conda environment
call conda activate paper

REM Run yaml config creator
python TEXTurePaper\scripts\create_config.py

REM cd inside TEXTurePaper
cd TEXTurePaper\

REM Run texture painter
python -m scripts.run_texture --config_path=configs\text_guided\an_astronaut_in_a_banana_suit.yaml

REM return to main root
cd ..
call conda deactivate

REM Activate third conda environment
call conda activate opencv

REM cd inside super res ESRGAN
cd super_resolution\ESRGAN\

REM Run super resolution framework 
python test.py

REM return to main root
cd ..\..
call conda deactivate

REM run cleanup script
python cleanup.py

echo ALL steps completed!!
