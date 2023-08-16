from pathlib import Path
import os

cwd = Path.cwd()

path_name_len = len(str(cwd))

for path in cwd.glob("**/*"):
    if path.is_file() and path.stat().st_size > 100000:
        os.system(f"git lfs track {str(path)[path_name_len+1:]}")