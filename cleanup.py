import os
import sys

with open("mesh_log.txt","r") as f:
    obj_name = f.readlines()[-1]

obj_name = obj_name[:-1]
ex_name = obj_name[:-4] + "_.obj"
ex_name_mat = obj_name[:-4] + "_.mtl"
"""
os.remove(obj_name)
os.remove(ex_name)
os.remove(ex_name_mat)
"""

try:
    os.remove(obj_name)
    os.remove(ex_name)
    os.remove(ex_name_mat)
except:
    pass

dif_path = " ".join(obj_name.split("\\")[-1].split("_"))[:-5]
try:
    os.remove(f"TEXTurePaper\\experiments\\{dif_path}\\mesh\\albedo.png")
except:
    pass

try:
    os.rename(f"TEXTurePaper\\experiments\\{dif_path}\\mesh\\albedo_rlt.png","albedo.png")
except:
    pass

print("Cleanup Done!")
