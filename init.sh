#!/usr/bin/env bash

sources=$(ls -1 | grep -v init | grep -vi license | awk '{ print $NF }')
scripts=$(ls -1 bin/)

dryrun=$1
basedir=$(pwd)

for name in $sources
do
	src=$basedir/$name
	dst=$HOME/.$name

	if [[ -d $src ]]
	then
		continue
	fi

	echo "linking $src"

	if [[ $dryrun == "" ]]
	then
		if [[ -f $dst ]]
		then
			echo "overwriting $dst"
			rm $dst
		fi

		echo "$src => $dst"
		ln -s $src $dst
	fi
done

for script in $scripts
do
	src=$basedir/bin/$script
	dst=$HOME/bin/$script

	echo "linking $src"

	if [[ $dryrun == "" ]]
	then
		if [[ -f $dst ]]
		then
			echo "overwriting $dst"
			rm $dst
		fi

		echo "$src => $dst"
		ln -s $src $dst
	fi
done

