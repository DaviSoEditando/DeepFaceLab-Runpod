#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" ampconverter \
    --model-dir "$DFL_WORKSPACE\model"
