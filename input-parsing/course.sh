#!/bin/bash
if [ -z "$1" ]; then
    echo "Input YAML file needed"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Given file doesn't exists"
    exit 1
fi
