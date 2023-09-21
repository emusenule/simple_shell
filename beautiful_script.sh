#!/bin/sh

#Thisi is a beautiful script that passes Betty checks

#Functions to display a welcome message
display_welcome() {
	echo "Welcome to my beautiful script!"
}

# Function to perform some caculations
perform_calculations() {
	local num1=10
	local num2=5
	local result=$((num1 + num2))
	echo "The result is: $result"
}

# Main function
main() {
	display_welcome
	perform_calculations
}

# Call the main function
main "$@"
