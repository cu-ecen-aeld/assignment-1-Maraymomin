#! /bin/bash


if [ ! $# -eq 2 ]; then
	echo "expected two arguments but "$#" was recieved"
	exit 1
fi


writerfile=$1
writerstr=$2

mkdir -p "$(dirname "$1")" || echo "Could not create directory" || exit 1
echo "$2" > "$1" || echo "Could not write "$2" into "$1"" || exit 1
