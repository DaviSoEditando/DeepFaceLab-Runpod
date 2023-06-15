#!/usr/bin/env bash
source env.sh

wget https://github.com/nagadit/DeepFaceLab_Linux/releases/download/1.0/pretrain_CelebA.zip
unzip -q pretrain_CelebA.zip -d "$DFL_SRC"
rm pretrain_CelebA.zip