#!/bin/bash

echo "Running installation script (wait 10s for the SQL Server to come up)..."
sleep 10s

#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -d master -i install.sql
echo
echo "Done installing database."
echo "Server is ready."
sleep infinity