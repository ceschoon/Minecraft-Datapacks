#! /bin/bash

if [ $# -gt 1 ]
then
	palette_id=$1
	prefix=$2
	
	mkdir -p palette$palette_id
	
	ls | grep $prefix | while read ffile
	do
		mv $ffile palette$palette_id/${ffile#"$prefix"}
	done
fi

echo "Do not forget to update the build function!"
