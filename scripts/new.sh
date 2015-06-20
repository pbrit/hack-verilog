#!/bin/bash 

set -e 

name_underscore=$(echo $1 | gsed -r 's/([a-z0-9]+)([A-Z][a-z]+)/\1_\l\2/g' | gsed -r 's/^[A-Z]/\l\0/g')
name=$1

mkdir $name

cat scripts/Makefile.tpl | gsed -r "s/%name%/$name/g" | gsed -r "s/%name_underscore%/$name_underscore/g" > $name/Makefile
