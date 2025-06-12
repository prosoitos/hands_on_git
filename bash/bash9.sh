for file in *; do
	echo "${file// /_}"
	mv "$file" "${file// /_}"
done
