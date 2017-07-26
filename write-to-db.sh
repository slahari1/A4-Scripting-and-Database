#!/bin/bash
# Set variables
# Set MySQL credentials
MYSQLUSER=root
MYSQLPASS=root

# Set database and table names
MYDATABASE=survey
MYTABLE=tblSurveyQuestions

# Place data in the MySQL secure directory
sudo cp ./temp.csv/var/lib/mysql-files/
echo "Data copied to secure directory."

# Create database
mysql -u "$MYSQLUSER" -p "$MYSQLPASS" -e "CREATE DATABASE $MYDATABASE"
echo "Creating database"

# Create table
mysql -u "$MYSQLUSER" -p "$MYSQLPASS" -e "CREATE TABLE $MYTABLE (ID VARCHAR(255), Date TIMESTAMP, FavMusicGenre VARCHAR(255), FavSong VARCHAR(255), FavArtist VARCHAR(255), FavStreamSer VARCHAR(255), PurchaseMusic1-5 INT; ALTER TABLE $MYTABLE ADD PRIMARY KEY (ID);" $MYDATABASE
echo "Creating table"

# Write data from temp.csv into database table
mysql -u "$MYSQLUSER" -p "$MYSQLPASS" -e "LOAD DATA INFILE '/var/lib/mysql-files/temp.csv' INTO TABLE $MYTABLE FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"';" $MYDATABASE
echo "Data written to $MYTABLE in database $MYDATABASE."

# Dump current version of database into export file
mysqldump -u "$MYSQLUSER" -p "$MYSQLPASS" $MYDATABASE > `date --iso-8601`-$MYDATABASE.sql
echo "Survey data dumped to file `date --iso-8601`-$MYDATABASE.sql"

# remove /var/lib/mysql-files/temp.csv
#sudo rm /var/lib/mysql-files/temp.csv

