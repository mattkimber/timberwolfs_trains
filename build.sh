#!/bin/bash



for i in `ls voxels`; do 
    #fn=`echo 4x/${i}_32bpp.png | sed -e s/.vox//`

    #if [ -e $fn ]; then 
    #    echo "$i [cached]"
    #else
        echo "$i [new]"
	    ../gorender/renderobject.exe -i voxels/$i -o $i -s 2,1 -u
    #fi
done

echo "Compiling set"
../roadie/roadie.exe set.json
echo "Compiling NML"
../nml/nmlc.exe timberwolfs_trains.nml