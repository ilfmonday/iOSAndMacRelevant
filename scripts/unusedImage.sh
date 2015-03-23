#!/bin/sh
PROJ=`find . -name '*.xib' -o -name '*.[mh]' -o -name '*.storyboard' -o -name '*.mm'`

for png in `find . -name '*.png'`
do
	name=`basename -s .jpg "$png" | xargs basename -s .png | xargs basename -s \@2x | xargs basename -s \@3x`
	#name=`basename -s .png "$png" | xargs basename -s "@2x" | xargs basename -s "@3x"`

	#for sourceFile in "$PROJ"
	#do
	#	if ! grep -qhs "$name" "$sourceFile";then
	#		echo "$sourceFile"
	#		echo "$png" 
	#	fi
	#done
	if ! grep -qhs $name $PROJ; then
	     echo $png
	     #rm -f $png
	fi
done
