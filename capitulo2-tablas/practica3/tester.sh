#!/bin/bash

# Define the relative paths to the SQLite database and the SQL scripts
dbPath="$(dirname "$0")/test.db"
sqlScriptPath="$(dirname "$0")/up.sql"
mainSqlScriptPath="$(dirname "$0")/main.sql"

# Check if the SQLite database file already exists
if [ -f "$dbPath" ]; then
    rm "$dbPath"
fi

# Create a new SQLite database
sqlite3 "$dbPath" ".databases"

# Read the SQL script
sqlScript=$(<"$sqlScriptPath")

# Execute the SQL script to create tables and insert data
sqlite3 "$dbPath" "$sqlScript"

echo "Database created successfully at $dbPath"

# Read the main SQL script
mainSqlScript=$(<"$mainSqlScriptPath")

# Execute the main SQL script with headers and capture the output
output=$(sqlite3 "$dbPath" -header "$mainSqlScript")

# Print the output of the query
echo "$output"
