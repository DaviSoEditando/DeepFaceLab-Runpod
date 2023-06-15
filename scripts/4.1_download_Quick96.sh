#!/usr/bin/env bash
source env.sh

wget https://github.com/nagadit/DeepFaceLab_Linux/releases/download/1.0/pretrain_Quick96.zip
unzip -q pretrain_Quick96.zip -d "$DFL_SRC"
rm pretrain_Quick96.zip