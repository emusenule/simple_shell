#!/bin/bash

split_string() {
	local input="$1"
	local delimiter="$2"

	# Set the internal field separator (IFS) to the delimiter
	IFS="$delimiter"

	# Reset the input string into an array using the delimiter
	read -r -a words <<< "$input"

	#Reset the IFS to its default value
	IFS=" "

	#Return the array of words
	echo "${words[@]}"
}

# Example usage
sentence="This is a sample string"
delimiter=" "
words_array=($(split_string "$sentence" "$delimiter"))

#Print each word in the array
for word in "${words_array[@]}"; do
	echo "$word"
done
