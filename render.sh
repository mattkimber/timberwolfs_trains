#!/bin/bash

echo "Rendering section sprites"

for i in `ls intermediate`; do 
    fn=`echo 2x/${i}_sections_32bpp.png | sed -e s/.vox//`

    if [ ! -e $fn ]; then 
        echo $i
        f=`echo $i | sed -e s/.vox//`
        echo "$f [new]"
	    echo ../gorender/renderobject.exe -m files/manifest_sections.json  -i intermediate/$i -o ${f}_sections -s 2,1 -u
        ../gorender/renderobject.exe -m files/manifest_sections.json  -i intermediate/$i -o ${f}_sections -s 2,1 -u
    fi
done