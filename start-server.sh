
if [[ -n "$CONDA_EXE" ]]; then
    CONDA_DIR="$(dirname "$(dirname "$CONDA_EXE")")"
else
    CONDA_DIR=~/miniconda3
fi
. "$CONDA_DIR/etc/profile.d/conda.sh"
conda activate textgen

(cd text-generation-webui; python server.py)
