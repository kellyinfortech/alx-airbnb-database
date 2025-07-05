# Airbnb Database Advanced: Complex Joins

## Task 0: Write Complex Queries with Joins

This script demonstrates usage of `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN` in SQL to extract meaningful relationships between users, bookings, properties, and reviews in the Airbnb schema.

### 📄 File: joins_queries.sql

#### 1. INNER JOIN
Retrieves all bookings and the corresponding user details.

#### 2. LEFT JOIN
Retrieves all properties and their reviews, including properties that have not been reviewed.

#### 3. FULL OUTER JOIN
Retrieves all users and bookings, even when no direct relationship exists between them.

> Note: Since MySQL lacks native FULL OUTER JOIN support, we use `UNION` between LEFT and RIGHT joins to simulate it.

---

## Run the SQL
Make sure your schema includes `users`, `bookings`, `properties`, and `reviews` tables with appropriate foreign key relationships.

```bash
mysql -u root -p < joins_queries.sql
