bash

#!/bin/bash

# Function to count files
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Introduction
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

# Get actual number of files
file_count=$(get_file_count)

# Start guessing loop
while true; do
    read -p "Enter your guess: " guess
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
    elif [[ $guess -lt $file_count ]]; then
        echo "Too low! Try again."
    elif [[ $guess -gt $file_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed right!"
        break
    fi
done
