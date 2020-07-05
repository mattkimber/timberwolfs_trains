#!/bin/bash

# Do cargo and animation compositing
../cargopositor/cargopositor.exe -o intermediate -v voxels -t positor/*

# Copy static files
cp voxels/static/mu/* intermediate
cp voxels/static/carriage/* intermediate
cp voxels/static/loco/* intermediate
cp voxels/static/tender/* intermediate
cp voxels/static/wagon/* intermediate

for i in `ls intermediate`; do 
    fn=`echo 2x/${i}_32bpp.png | sed -e s/.vox//`

    if [ -e $fn ]; then 
        echo "$i [cached]"
    else
        echo "$i [new]"
	    ../gorender/renderobject.exe -i intermediate/$i -o $i -s 2,1 -u
    fi
done

echo "Compiling set"
../roadie/roadie.exe set.json
echo "Compiling NML"
#../nml/nmlc.exe -c timberwolfs_trains.nml
../nml/nmlc.exe timberwolfs_trains.nml
