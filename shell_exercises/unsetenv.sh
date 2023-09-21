#!/bin/sh

# Function to delete an environment variable
_unsetenv() {
	name="$1"

	if [ -z "$name" ]; then
		return 1
	fi

	# Iterate over the environment variables
	for entry in $(env); do
		var_name="${entry%%=*}"
		if [ "$var_name"="$name" ];then
			# Delete the variable
			unset "$name"
			return 0
		fi
	done

	return 0
}

# Usage example
_unsetenv "MY_VARIABLE"
