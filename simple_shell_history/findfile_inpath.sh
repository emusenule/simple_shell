#!/bin/bash

function find_file_in_path() {
	local filename="$1"
	IFS=":" read -ra directories <<< "$PATH"

	for dir in "${directories[@]}"; do
		file_path="${dir}/${filename}"
		if [-x "$file_path" ]; then
			echo "$$file_path"
			return
		  fi
	  done

echo "$filename not found in the current PATH"

}

while true; do
	printf "$ "
	read -r command

	if [[ -z "$command"  ]]; then
	 break
	fi
find_file_inpath "$command"

done
