#!/bin/bash

while true; do
	printf "\$"
	read -r command

	if [[ -z "$command" ]]; then
		break
	fi

	echo "You entered: $command"

done
