#!/bin/bash

echo "Compiling set"
../roadie/roadie.exe set.json
echo "Compiling NML"
#../nml/nmlc.exe -c timberwolfs_trains.nml
../nml/nmlc.exe timberwolfs_trains.nml


echo "Building TAR"
mkdir -p timberwolfs_trains
mv *.grf timberwolfs_trains
cp grf_readme/* timberwolfs_trains
tar -c timberwolfs_trains > timberwolfs_trains.tar
