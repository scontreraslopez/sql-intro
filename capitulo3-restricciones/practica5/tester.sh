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

echo "Database created successfully at $dbPath"

# No need for main.sql
# No need for up.sql

