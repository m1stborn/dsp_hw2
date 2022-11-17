#!/bin/bash

#if [[ "$sure" =~ ^[Yy]$ ]]; then
dir=(decode exp train viterbi feat)
set -x
rm -rf "${dir[@]}"
rm -f log/*

#else
#    echo "Abort."
#fi
