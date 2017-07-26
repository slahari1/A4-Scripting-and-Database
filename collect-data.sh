#!/bin/bash

# SURVEY QUESTIONS

# What is your favorite genre of music?
echo "What is your favorite genre of music?"
read FAVMUSIC

# Who is your favorite artist/band? 
echo "Who is your favorite artist/band?"
read FAVARTIST

# What is your favorite song?
echo "What is your favorite song?"
read FAVSONG

# What music streaming service do you use most often?
echo "What music streaming service do you use most often?"
read FAVSTREAMSER

# How often do you purchase music (physical/digital) on a scale of 1-5?
echo "How often do you purchase music (physical/digital) on a scale of 1-5?"
read MUSICPUR

# Get current time/date
TIMESTAMP=`date --iso-8601=seconds`

# Create unique identifier
ID=$(cat /dev/urandom | tr -dc "a-zA-Z0-9!@#$%^&*()_+?><~\`;'" | fold -w 10 | head -n 1)

# Write data into CSV file --temp.csv
echo "$ID,$TIMESTAMP,$FAVMUSIC,$FAVARTIST,$FAVSONG,$FAVSTREAMSER,$MUSICPUR" >> ./temp.csv

# Read out the data in the CSV file
cat temp.csv

# connect this bash script with database bash script
bash ./write-to-db.sh

# Back up data
cat ./temp.csv >> data-backup.csv

# Remove temp file
rm temp.csv