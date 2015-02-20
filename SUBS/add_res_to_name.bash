#!/bin/bash

pattern="include"
cd SUBS
for gg in `ls *.tex `
do
echo $gg
done;

exit
subst=that
while IFS='' read -r line; do
    if [[ $line = *"$pattern"* ]]; then
     #   echo "changing line: $line" 1>&2
   	echo "changing line: $line" 
      # echo "${line//$pattern/$subst}"
    fi  
done < $gg > $gg.temp


#subst=that
#while IFS='' read -r line; do
    #if [[ $line = *"$pattern"* ]]; then
        #echo "changing line: $line" 1>&2
        #echo "${line//$pattern/$subst}"
    #else
        #echo "$line"
    #fi  
#done < input > output

#sed -i "/south=/ c\south=$south;" "$matlab_script_i"
#Regex.Matches(yourstring,@"[R]").Count;

	#rm $dir/ttemp*
	#g=$(($g + 1))
	#echo $g/$num_files
	#NW=$f	
	#NE=${f//psi/vort}	
	#SW=${f//psi/Ekin}
	#SE=${f//psi/enstro}	
	#ttempa=$dir/ttempa.png
	#echo "$ttempa"
		#ttempb=$dir/ttempb.png
	#echo "$ttempb"
	#convert +append $NW $NE $ttempa
	#convert +append $SW $SE $ttempb
	#outf=$(printf all_%05d.png ${g})
	#echo "$outf"
	#rm $dir/$outf	
	#convert -append $ttempa $ttempb $dir/$outf	
done;
#convert latovermu.pdf -print "Size: %wx%h\n" /dev/null

