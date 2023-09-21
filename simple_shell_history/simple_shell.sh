#!/bin/bash

while true; do
	printf "$ "
	read -r command

	if [[ -z "$command" ]]; then
		break
	fi

	# Execute the command with its full path
	if [[ -x "$command" ]]; then
		"$command"
	else
	   echo "Command not found: $command"
	fi

done
