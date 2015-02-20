#!/bin/bash


rm FIGINFO.txt
touch FIGINFO.txt

for gg in `ls *.pdf`
do
echo $gg
extension="${gg##*.}"
filename="${gg%.*}"

dimx=`convert ${gg} -print "%w\n" /dev/null`
dimy=`convert ${gg} -print "%h\n" /dev/null`



echo "]{${gg}} " >> FIGINFO.txt
echo ",natwidth=${dimx},natheight=${dimy}]{${gg}} " >> FIGINFO.txt



done;


