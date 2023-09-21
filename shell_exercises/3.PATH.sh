#!/bin/bash

print_path_directories() {
	IFS=":" # Set the inetrnal field Separtor to ":" to split the PATH variable

	# Loop through each directory in the PATH
	for directory in $PATH; do
		echo "$directory"
	done
}

print_path_directories
