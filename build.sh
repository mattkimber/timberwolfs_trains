#!/bin/bash

# Create directories
mkdir -p intermediate
mkdir -p intermediate/hills

# Do cargo and animation compositing
echo "Compositing sprites"
../cargopositor/cargopositor.exe -o intermediate -v voxels -t positor/garratts/*
../cargopositor/cargopositor.exe -o intermediate -v voxels -t positor/first/*

# Copy static files
echo "Copying static files"

cp -p voxels/static/mu/* intermediate
cp -p voxels/static/carriage/* intermediate
cp -p voxels/static/loco/* intermediate
cp -p voxels/static/tender/* intermediate
cp -p voxels/static/wagon/*.vox intermediate
cp -p voxels/static/wagon/aged/*.vox intermediate
cp -p voxels/static/tube/* intermediate
cp -p voxels/horse/* intermediate

# Do sprite creation
echo "Compositing hill sprites"
../cargopositor/cargopositor.exe -o intermediate/hills -v intermediate -t positor/second/*

echo ""
echo "Rendering regular sprites"

ls intermediate/*.vox | xargs ../gorender/renderobject.exe -8 -r -s 2,1 -u -p 

echo ""
echo "Rendering section sprites"

ls intermediate/*.vox | xargs ../gorender/renderobject.exe -8 -m files/manifest_sections.json -p -r -x _sections -s 2,1 -u


echo ""
echo "Rendering hill sprites"

ls intermediate/hills/* .vox | xargs ../gorender/renderobject.exe -8 -m files/manifest_hill.json -p -r -s 2,1 -u 


echo ""
echo "Rendering purchase sprites"
../purchaser/purchaser.exe table.csv

echo "Compiling set"
../roadie/roadie.exe set.json
echo "Compiling NML"
../nml/nmlc.exe -c timberwolfs_trains.nml

echo "Building TAR"
mkdir -p timberwolfs_trains
mv *.grf timberwolfs_trains
cp grf_readme/regular/* timberwolfs_trains
tar -c timberwolfs_trains > timberwolfs_trains.tar
