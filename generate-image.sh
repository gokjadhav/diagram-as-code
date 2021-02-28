#! /bin/bash

echo "#####Generating image for : $1 #####"
docker exec -i py-diagram python ./src/$1