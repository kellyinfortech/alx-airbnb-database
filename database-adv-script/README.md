# Advanced SQL Scripts - ALX Airbnb Database

This directory contains SQL scripts for practicing advanced querying techniques on a simulated Airbnb database.

---

## 📄 Files Included

- `joins_queries.sql` – Complex queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `subqueries.sql` – Correlated and non-correlated subqueries for deep data analysis.

---

## 📌 Tasks Covered

### 0. Write Complex Queries with Joins

**Objective:** Retrieve meaningful results from multiple related tables using various types of joins.

- ✅ INNER JOIN: Get all bookings and their corresponding users.
- ✅ LEFT JOIN: Get all properties and their reviews, including those without any reviews.
- ✅ FULL OUTER JOIN: Get all users and bookings, even if unmatched.

### 1. Practice Subqueries

**Objective:** Use subqueries to perform advanced filtering and analysis.

- ✅ Non-correlated subquery: Find all properties with an average rating greater than 4.0.
- ✅ Correlated subquery: Find users who have made more than 3 bookings.

---

## 🛠️ Usage

To run the queries, connect to your PostgreSQL or MySQL database and run the scripts directly:

```bash
mysql -u your_username -p your_database < joins_queries.sql
mysql -u your_username -p your_database < subqueries.sql
