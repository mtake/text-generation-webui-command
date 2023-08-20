#!/usr/bin/env bash

if [[ -n "$CONDA_EXE" ]]; then
    CONDA_DIR="$(dirname "$(dirname "$CONDA_EXE")")"
else
    CONDA_DIR=~/miniconda3
fi
. "$CONDA_DIR/etc/profile.d/conda.sh"
conda activate textgen

#conda install pytorch::pytorch torchvision torchaudio -c pytorch
conda install pytorch-nightly::pytorch torchvision torchaudio -c pytorch-nightly

git clone git@github.com:ggerganov/llama.cpp.git
(cd llama.cpp; git pull; make clean; make; pip install -r requirements.txt)

git clone git@github.com:oobabooga/text-generation-webui.git
(cd text-generation-webui; git pull; pip install -r requirements.txt)

# (Optional) for https://huggingface.co/mmnga/line-corp-japanese-large-lm-3.6b-instruction-sft-ggml etc.
#git clone git@github.com:ggerganov/ggml.git
#(cd ggml; git pull; mkdir build && cd build; cmake ..; make -j)
