#!/bin/bash

# SURVEY QUESTIONS

# W?
echo "What is your favorite genre of music?"
read 

# ?
echo "What is your favorite book genre?"
read FAVBKGENRE

# ? 
echo "What is your favorite book?"
read FAVBOOK

# What is your favorite movie genre?
echo "What is your favorite movie genre?"
read FAVMOVGENRE

# What is your favorite movie? 
echo "What is your favorite movie?"
read FAVMOVIE

# what language of movie/book do you prefer?
echo "what language of movie/book do you prefer?"
read PREFLANG

# Get current time/date
TIMESTAMP=`date --iso-8601=seconds`

# Create unique identifier
ID=$(cat /dev/urandom | tr -dc "a-zA-Z0-9!@#$%^&*()_+?><~\`;'" | fold -w 10 | head -n 1)

# Write data into CSV file --temp.csv
echo "$TIMESTAMP,$ID,$FULLNAME,$FAVBKGENRE,$FAVBOOK,$FAVMOVGENRE,$FAVMOVIE,$PREFLANG" >> ./temp.csv

# Read out the data in the CSV file
cat temp.csv

# connect this bash script with database bash script
bash ./write-to-db.sh

# Back up data
cat ./temp.csv >> data-backup.csv

# Remove temp file
rm temp.csv