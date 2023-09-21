#!/bin/bash

# Function to change or add an environment variable
_setenv() {
	name="$1"
	value="$2"
	overwrite="$3"

	if [ -z "$name" ] || [ -z "$value" ]; then
		return 1
	fi

	# Check if the environment variable already exists
	for entry in $(env); do
		var_name="${entry%%=*}"
		if [ "$var_name" = "$name" ]; then
		   if [ "$overwrite" -eq 1 ]; then
			   # Overwrite existing value
			   export "$name"="$value"
			   return 0

		   else
			# Variable exists and overwrite is not allowed
			return 0
		   fi
		fi
	done

	# Varible doesn't exist, create a new entry
	export "$name"="$value"
	return 0
}

# Usage examples
_setenv "MY_VARIABLE" "my_value" 1
_setenv "ANOTHEFR_VARIABLE" "another_value" 0
