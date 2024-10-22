# event-cleanup

SQL and Bash scripts to permanently remove Event Log data from the database on self-hosted servers

# Usage

1. Place the .sh and .sql files in your `./bwdata/mssql/backups` directory, so they are mounted into the bitwarden-mssql container. 
2. Modify the .sql file as-needed to customize your database name and the desired retention period for Event Logs in the database.
3. Schedule a cron at the host OS level to execute the script at your desired frequency: `docker exec -it bitwarden-mssql /etc/bitwarden/mssql/backups/clear-events.sh`
