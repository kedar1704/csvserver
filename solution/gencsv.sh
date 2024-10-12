#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: ./gencsv.sh <start_index> <end_index>"
    exit 1
fi

start_index=$1
end_index=$2

> inputFile


for ((i=$start_index; i<=$end_index; i++))
do
    random_number=$((RANDOM % 500))
    echo "$i, $random_number" >> inputFile
done

echo "File 'inputFile' generated successfully."

