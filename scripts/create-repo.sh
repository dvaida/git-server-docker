#!/bin/sh

REPO_NAME="$1"

projects="build release deploy test"

mkdir -p /$REPOS_ROOT/$REPO_NAME

for i in $projects
do
   : 
   # do whatever on $i
   mkdir $i
   cd $i
   git init --share
   cd ..
   git clone --bare $i $i.git
   mv $i.git /$REPOS_ROOT/$REPO_NAME
   rm -Rf $i
done
