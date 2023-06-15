#!/usr/bin/env bash

USER=$(whoami)
if [ -f "/home/$USER/miniconda3/etc/profile.d/conda.sh" ]; then
	. "/home/$USER/miniconda3/etc/profile.d/conda.sh"
else
	export PATH="/home/$USER/miniconda3/bin:$PATH"
fi

conda activate deepfacelab

export OPENBLAS_NUM_THREADS=1
export GOTO_NUM_THREADS=1
export OMP_NUM_THREADS=1

#Set LD LIB PATH to use CUDA libs from conda dir
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib
cd ..
export DFL_PYTHON="python3.7"
export DFL_WORKSPACE="workspace/"

if [ ! -d "$DFL_WORKSPACE" ]; then
    mkdir "$DFL_WORKSPACE"
    mkdir "$DFL_WORKSPACE/data_src"
    mkdir "$DFL_WORKSPACE/data_src/aligned"
    mkdir "$DFL_WORKSPACE/data_src/aligned_debug"
    mkdir "$DFL_WORKSPACE/data_dst"
    mkdir "$DFL_WORKSPACE/data_dst/aligned"
    mkdir "$DFL_WORKSPACE/data_dst/aligned_debug"
    mkdir "$DFL_WORKSPACE/model"
fi

export DFL_ROOT="./"
export DFL_SRC="./DeepFaceLab"
