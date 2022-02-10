#! /bin/bash

dir="."
x=0
z_vec=(1000 2000 3000)
radius=200
dimension="ccwg:void"

for z in ${z_vec[*]}
do
	echo " "
	echo "Processing z = $z:"
	
	ls $dir | grep -i ".mcfunction" | while read entry # handles whitespaces better than the for loop: "for ffile in $(ls $dir | grep -i $author)"
	do
		echo "  Converting file: $dir/$entry"
		./$dir/change_selectors/change_selectors $dimension $x $z $radius $entry > /dev/null
	done
	
	echo " "
done


