#!/bin/bash

export PROJECTS_DIR=/home/eldron/Projects/*

for directory in $PROJECTS_DIR
do
    cd $directory
    is_repo=$(git status | grep -i "branch" | wc -l)
    if [ $is_repo != 0 ];
    then
        git status && git pull
    fi
done
