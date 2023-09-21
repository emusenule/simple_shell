#!/bin/bash

# Structure for linked list node
struct_node() {
	directory=$1
	next=$2
}

# Function to build linked list of PATH directories
build_path_linked_list() {
	IFS=":" # Set the Internal Field Separate to ":" to split the PATH variable

	#Create the head node of the linked list
	struct_node "/" null
	head=$?
	current=$head

	# loop through each directory in the PATH
	for directory in $PATH; do
		#Create a new node for the directory
		struct_node "$directory" null
		node=$?

		# Set the next pointer of the current node to the new node
		eval "current.next=$node"

		#Move the current pointer to the new node
		current=$node
	done

	# Return the head node
	echo "$head"
}

# Function to print the linked list of PATH directories
print_path_linked_list() {
	current=$1

	# Travers the linked list and print each directory
	while [ "$current" != null ]; do
		eval "directory=\$current.directory"
		echo "$directory"

		eval "current=\$current.next"
	done
}

# Build the linked list of PATH directories
path_linked_list=$(build_path_linked_list)

# Print the linked list of PATH directories
print_path_linked_list "$path_linked_list"
