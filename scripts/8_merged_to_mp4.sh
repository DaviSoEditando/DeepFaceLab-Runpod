#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" videoed video-from-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst/merged" \
    --output-file "$DFL_WORKSPACE/result.mp4" \
    --reference-file "$DFL_WORKSPACE/data_dst.*" \
    --include-audio

$DFL_PYTHON "$DFL_SRC/main.py" videoed video-from-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst/merged_mask" \
    --output-file "$DFL_WORKSPACE/result_mask.mp4" \
    --reference-file "$DFL_WORKSPACE/data_dst.*" \
    --lossless

