#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_ROOT/main.py" exportdfm \
    --model-dir "$DFL_WORKSPACE/model" \
    --model AMP

    