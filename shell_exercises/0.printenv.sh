#!/bin/bash

while true; do
	printf "$ "
	read -r command

	if [[ -z "$command" ]]; then
		break

	fi

	if [[ "$command" == "printenv" ]]; then
	   env
	else
		eval $command
	fi
done
