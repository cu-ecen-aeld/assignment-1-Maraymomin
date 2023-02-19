#!/bin/bash

#find a specific file in a given path
#Two command line arguments

filesdir=${1}
searchstr=${2}

if [ "${searchsrt}" == " " ] || [ "${filesdir}" == " " ];then
	echo 'Enter the command two lines.'
	exit 1
fi
if [ ! -d ${filesdir} ]; then
	echo " ${filesdir} is not a directory on the filesystem."
	exit 1
fi

X=$(find ${fiedsdir} -type f | wc -l)
Y=$(grep -r ${searchstr} ${filesdir} | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"
