#!/bin/bash

# Create directories
mkdir -p intermediate
mkdir -p intermediate/hills

# Do cargo and animation compositing
echo "Compositing sprites"
../cargopositor/cargopositor.exe -o intermediate -v voxels -t positor/first/*

# Copy static files
echo "Copying static files"

cp -p voxels/static/mu/* intermediate
cp -p voxels/static/carriage/* intermediate
cp -p voxels/static/loco/* intermediate
cp -p voxels/static/tender/* intermediate
cp -p voxels/static/wagon/* intermediate
cp -p voxels/horse/* intermediate

# Do sprite creation
echo "Compositing hill sprites"
../cargopositor/cargopositor.exe -o intermediate/hills -v intermediate -t positor/second/*

echo ""
echo "Rendering regular sprites"

for i in `ls intermediate`; do 
    ../gorender/renderobject.exe -8 -i intermediate/$i -r -s 2,1 -u -p
done

echo ""
echo "Rendering section sprites"

for i in `ls intermediate`; do 
    ../gorender/renderobject.exe -8 -m files/manifest_sections.json -i intermediate/$i -p -r -x _sections -s 2,1 -u
done

echo ""
echo "Rendering hill sprites"

for i in `ls intermediate/hills`; do 
    ../gorender/renderobject.exe -8 -i intermediate/hills/$i -m files/manifest_hill.json -p -r -s 2,1 -u
done

echo ""
echo "Rendering purchase sprites"
../purchaser/purchaser.exe table.csv

echo "Compiling set"
../roadie/roadie.exe set.json
echo "Compiling NML"
../nml/nmlc.exe -c timberwolfs_trains.nml
#../nml/nmlc.exe timberwolfs_trains.nml

echo "Building TAR"
mkdir -p timberwolfs_trains
mv *.grf timberwolfs_trains
cp grf_readme/* timberwolfs_trains
tar -c timberwolfs_trains > timberwolfs_trains.tar
