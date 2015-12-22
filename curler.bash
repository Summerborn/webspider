#!/bin/bash
# This is the first script, in which we will curl the www.bth.se webpage,
# and from there gather all the links. By using regex to find all the anchors
# in the html, and adding the links inside to the worklist (worklist.txt)

domain = $1
path = $2

curl $1 | sed -n 's/.*href="\([^"]*\).*/\1/p' | while read next
do
if echo $next | grep "bth.se\|^/.*/"
then echo "$1 $next" >>workinglist.txt 
fi
done


exit

