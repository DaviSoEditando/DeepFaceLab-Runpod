#!/usr/bin/env bash

USER=$(whoami)
if [ -f "/home/$USER/miniconda3/etc/profile.d/conda.sh" ]; then
	. "/home/$USER/miniconda3/etc/profile.d/conda.sh"
else
	export PATH="/home/$USER/miniconda3/bin:$PATH"
fi

conda activate deepfacelab

conda install -c "nvidia/label/cuda-11.8.0" cuda-toolkit