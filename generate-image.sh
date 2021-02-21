#! /bin/bash

echo "#####Generating image for : $1 #####"
docker exec -i py-diagram-as-code python ./src/$1