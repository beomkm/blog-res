#!/bin/bash
for f in $(find -name '*.png'); do
	ext=$(file $f | awk '{print $2}' | tr '[A-Z]' '[a-z]')
	echo replace extension of $f with $ext
	rename .png .$ext $f
done
