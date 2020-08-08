#!/bin/bash

# Create directories
mkdir -p intermediate
mkdir -p intermediate/hills

# Do cargo and animation compositing
echo "Compositing sprites"
../cargopositor/cargopositor.exe -o intermediate -v voxels -t positor/first/*

# Copy static files
echo "Copying static files"

cp voxels/static/mu/* intermediate
cp voxels/static/carriage/* intermediate
cp voxels/static/loco/* intermediate
cp voxels/static/tender/* intermediate
cp voxels/static/wagon/* intermediate

# Do sprite creation
echo "Compositing hill sprites"
../cargopositor/cargopositor.exe -o intermediate/hills -v intermediate -t positor/second/*

echo "Rendering regular sprites"

for i in `ls intermediate`; do 
    fn=`echo 2x/${i}_8bpp.png | sed -e s/.vox//`

    if [ ! -e $fn ]; then 
        echo "$i [new]"
	    ../gorender/renderobject.exe -8 -i intermediate/$i -o $i -s 2,1 -u
    fi
done

echo "Rendering section sprites"

for i in `ls intermediate`; do 
    fn=`echo 2x/${i}_sections_8bpp.png | sed -e s/.vox//`

    if [ ! -e $fn ]; then 
        f=`echo $i | sed -e s/.vox//`
        echo "$f [new]"
        ../gorender/renderobject.exe -8 -m files/manifest_sections.json  -i intermediate/$i -o ${f}_sections -s 2,1 -u
    fi
done


echo "Rendering hill sprites"

for i in `ls intermediate/hills`; do 
    fn=`echo 2x/${i}_8bpp.png | sed -e s/.vox//`

    if [ ! -e $fn ]; then 
        echo "$i [new]"
	    ../gorender/renderobject.exe -8 -i intermediate/hills/$i -m files/manifest_hill.json -o $i -s 2,1 -u
    fi
done

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
