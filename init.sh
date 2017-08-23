#!/usr/bin/env bash

sources=$(ls -1 | grep -v init | awk '{ print $NF }')

dryrun=$1
basedir=$(pwd)

for name in $sources
do
	src=$basedir/$name
	dst=$HOME/.$name
	echo "linking $path"

	if [[ $dryrun == "" ]]
	then
		echo "$src => $dst"
		ln -s $src $dst
	fi
done

