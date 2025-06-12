#!/bin/bash
   
for file in *; do
       if [[ -f "$file" ]]; then
           new_file="${file// /!}"
	   if [[ $file != $new_file ]]; then
           	mv "$file" "$new_file"
	   fi
       fi
done
