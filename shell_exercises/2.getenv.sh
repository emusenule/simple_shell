#!/bin/bash

while true; do
	printf "$ "
	read -r command

	if [[ -z "$command" ]]; then
		break
	fi

	eval "$command"
done
