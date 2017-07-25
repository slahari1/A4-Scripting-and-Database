#!/bin/bash
# Set variables
# Set MySQL credentials
MYSQLUSER=root
MYSQLPASS=root

# Set database and table names
MYDATABASE=entertainmentsurvey
MYTABLE=tblSurveyQuestions

# Place data in the MySQL secure directory
sudo cp ./temp.csv/var/lib/mysql-files/
echo "Data copied to secure directory."

# Create database
mysql -u "$MYSQLUSER" -p "$MYSQLPASS" -e "CREATE DATABASE $MYDATABASE"
echo "Creating database"

# Create table
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE TABLE $MYTABLE (ID VARCHAR(255), Date TIMESTAMP,
