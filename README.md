# Library Management System

![badge](https://img.shields.io/badge/SQL-Relational%20Database-blue)
![badge](https://img.shields.io/badge/MariaDB-Termux-lightgrey)
![badge](https://img.shields.io/badge/Project-Complete-brightgreen)

A simple, fully functional relational database system to manage books, authors, members, and loans for a small library.

> Built entirely in **MariaDB (Termux)** with real-world use cases, automation, permissions, and backup scripting.


## 📚 Features

- Track books, authors, and members
- Record book loans and returns
- Query books currently borrowed
- Count member borrowing activity
- Create read-only user for auditing
- Daily automatic SQL backup script
- Ready for backend/full-stack extension


## 🧱 Database Structure

| Table     | Description                     |
|-----------|---------------------------------|
| `authors` | Stores author details           |
| `books`   | Linked to authors               |
| `members` | Library users                   |
| `loans`   | Tracks borrow/return activity   |

ERD Diagram included: `Library_ERD_Diagram.png`


## ⚙️ Setup Instructions

### Import Tables:
```bash
mariadb -u root library < create_tables.sql

Insert Sample Data:

mariadb -u root library < insert_sample_data.sql

Test with Queries:

See queries.sql for JOINs and reports.



🔒 Security

A read-only user auditor@localhost is created for safe viewing access only:

CREATE USER 'auditor'@'localhost' IDENTIFIED BY 'securepass';
GRANT SELECT ON library.* TO 'auditor'@'localhost';



♻️ Automation

backup_library.sh creates a timestamped .sql backup

cron_setup.txt runs the backup daily at 1AM




📁 Files Included

create_tables.sql — Full DB schema

insert_sample_data.sql — Sample data

queries.sql — Sample SELECT + JOIN statements

backup_library.sh — Backup script

cron_setup.txt — Daily cron schedule

Library_DB_Project_Report.pdf — Summary report

Library_ERD_Diagram.png — Entity-Relationship Diagram




🧑‍💻 Author

Stephen Toomey
Full Stack Developer & Future DBA
GitHub | LinkedIn



> Proudly built with Termux, passion, and clean SQL.

