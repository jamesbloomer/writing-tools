#!/usr/bin/bash

# Tag a file by using soft links

FILE=$1

echo ${FILE}

for tag in ${*:2}
do
    echo "$tag"
    mkdir -p "${tag}"
    ln -s ${FILE} "${tag}"
done

