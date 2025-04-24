# Library Management System

A simple relational database system to manage books, authors, members, and loans for a small library.

## Features

- Track books, authors, and members
- Record book loans and returns
- Run meaningful queries (e.g., borrowed books, overdue loans)
- Daily database backup script
- Read-only user with `SELECT` permissions for auditing

## Setup

1. Import the database structure:
   ```bash
   mariadb -u root library < create_tables.sql
   ```

2. Insert sample data:
   ```bash
   mariadb -u root library < insert_sample_data.sql
   ```

3. Run queries in `queries.sql` for testing.

4. Use `backup_library.sh` to create timestamped backups.

5. Use `cron_setup.txt` to schedule automated daily backups.

## Files

- `create_tables.sql`: Table definitions
- `insert_sample_data.sql`: Test data
- `queries.sql`: Useful SQL queries (`JOIN`s, counts, filters)
- `backup_library.sh`: Bash backup script
- `Library_ERD_Diagram.png`: ERD of the database
- `Library_DB_Project_Report.pdf`: Final summary report

## Author

Stephen Toomey  
Full Stack Developer & Future DBA
