#!/bin/bash

if [[ "$OSTYPE" == "msys" ]]; then
    winpty docker build -t cs155-proj2-image .
else
    docker build -t cs155-proj2-image .
fi
