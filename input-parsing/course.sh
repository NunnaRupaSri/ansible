#!/bin/bash
if [ -z "$1" ]; then
    echo "Input YAML file needed"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Given file doesn't exists"
    exit 1
fi

YAML_FILE=$1

NUMBER_OF_STUDENTS=$(cat $1 |yq . | jq '.STUDENT_LIST | length')

i=0
while [ $NUMBER_OF_STUDENTS -gt 0 ]; do
    NAME=$(cat $YAML_FILE | yq . |jq ".STUDENT_LIST[$i].name")
    echo $NAME
    i=$(($i+1))
    NUMBER_OF_STUDENTS=$((NUMBER_OF_STUDENTS-1))
done