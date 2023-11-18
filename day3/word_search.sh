#!/bin/bash

# The first argument is the word to search for
word=$1

# The second argument is the file to search for
file=$2

# Use grep to search for the word in the file
grep -n "$word" "$file"
