#!/bin/sh

# Execute the saved query
# Be sure you have checked the databaseName and expiration in the file
# Warning: this is a destructive action, and backups are triggered separately. Take care when scheduling this script

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${SA_PASSWORD} -i /etc/bitwarden/mssql/backups/clear-events.sql
echo $(date) >> /etc/bitwarden/mssql/backups/clear-events.log
