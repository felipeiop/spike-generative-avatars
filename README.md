# spike-generative-avatars

Prompt based Generative Avatars

From text input to game engine, the main idea is to have a 3D Character with a Rig working in Unreal Engine, this project has been tested only in Windows (that's why of the main .bat file), the structure of this repo is made by different submodules and conda environments.
By running the main "run_gen_avtr.bat" a collection of scripts and python environments will activate and execute.

Some environments and frameworks will require some specific models and libraries, besides the "requirements.txt" pip packages, but they will be automatically downloaded.
Keep in mind some models (weights) will be downloaded or generated and can take a lot of disk space.
A Hugging face auth accout is needed.
Autodesk Maya's python API is needed for the geometry operations

How the main "run_gen_avtr.bat" works:

Step 1
-The script will activate an environment with pytorch and will use OpenAI's shap-e submodule:
  -This will read your prompt and generate a 3D mesh for your avatar

Step 2
-the MAYA python API will be launched, a session of standalone Maya will load and it will load the 3D mesh from the previous step
  -This will load the .obj file and do some checks, like removing floating islands, fixing bad topology, setting the proper orientation, etc.

Step 3
-TEXTure paper framework.
  This is another AI system to project textures into the mesh, since the result from shap-e is basically just the geometry, this step will create the texture
  and UVs for the character by using the same original prompt

Step 4
To be added:


