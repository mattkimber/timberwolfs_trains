#!/bin/bash

echo "Compiling set"
../roadie/roadie.exe set_community.json
echo "Compiling NML"
../nml/nmlc.exe -c timberwolfs_community_addon.nml

echo "Building TAR"
mkdir -p timberwolfs_community_addon
mv *.grf timberwolfs_community_addon
cp grf_readme/community/* timberwolfs_community_addon
tar -c timberwolfs_community_addon > timberwolfs_community_addon.tar
