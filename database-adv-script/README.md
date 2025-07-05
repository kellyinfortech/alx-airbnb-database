# SQL Joins Queries — Airbnb Clone Database (Advanced)

This module is part of the **ALX Airbnb Database Advanced Project**, focusing on mastering complex SQL join queries. It contains scripts that demonstrate the use of `INNER JOIN`, `LEFT JOIN`, and simulated `FULL OUTER JOIN` in a relational Airbnb-like schema.

## 📁 Directory
`database-adv-script/`

## 📄 Files
- `joins_queries.sql`: SQL scripts that retrieve and combine data using various types of joins.
- `README.md`: This documentation file describing the queries and usage.

## 🧠 Objective
Write and test SQL queries to:
- Retrieve booking information alongside user details (`INNER JOIN`)
- Retrieve property listings with or without reviews (`LEFT JOIN`)
- Combine all users and bookings regardless of linkage (`FULL OUTER JOIN`)

## 📝 SQL Queries Description

### 1. INNER JOIN
Retrieves all **bookings** with their corresponding **users**.
```sql
SELECT ...
FROM bookings
INNER JOIN users ON ...
