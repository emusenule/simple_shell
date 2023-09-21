#!/bin/bash

num_children=5

for ((i = 0; i < num_children; i++)); do
	echo "Creating child $i"
	(ls -l /tmp)
	echo "Child $i exited with status $?"
done
