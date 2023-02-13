#!/bin/sh -l
set -e

MR_LINTER_DEBUG=""
if [ "$INPUT_DEBUG" = "true" ]; then
    MR_LINTER_DEBUG="--debug"
fi

MR_LINTER_METRICS=""
if [ "$INPUT_METRICS" = "true" ]; then
    MR_LINTER_METRICS="--metrics"
fi

MR_LINTER_CONFIG=""
if [ ! -z "$INPUT_CONFIG" ]; then
    MR_LINTER_CONFIG="--config=$INPUT_CONFIG"
fi

mr-linter --version
mr-linter lint $MR_LINTER_DEBUG $MR_LINTER_METRICS $MR_LINTER_CONFIG
