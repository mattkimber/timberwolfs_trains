#!/bin/bash

echo "Compiling set"
../roadie/roadie.exe set.json
echo "Compiling NML"
#../nml/nmlc.exe -c timberwolfs_trains.nml
../nml/nmlc.exe timberwolfs_trains.nml