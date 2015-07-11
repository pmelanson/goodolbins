#!/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: $0 pattern"
    exit 1
fi

egrep -ir "$1" ./
