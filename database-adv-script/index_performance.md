# Index Optimization for ALX Airbnb Database

## 🧠 Objective

Improve query performance by identifying and creating indexes on frequently used columns across the `User`, `Booking`, and `Property` tables.

---

## 🔍 High-Usage Columns Identified

Based on typical SQL queries involving filtering (`WHERE`), sorting (`ORDER BY`), and joining (`JOIN`), the following columns are high-usage:

- `users.email` – Used in authentication and filtering users.
- `bookings.user_id` – Used in JOINs with users table.
- `bookings.property_id` – Used in JOINs with properties table.
- `bookings.created_at` – Used in filtering and ordering by booking dates.
- `properties.city` – Frequently used for filtering listings by location.

---

## 🏗️ SQL Index Creation Commands

The following index creation commands have been added to the `database_index.sql` file:

```sql
-- Index on users.email for fast lookups
CREATE INDEX idx_users_email ON users(email);

-- Index on bookings.user_id to improve JOINs with users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id to improve JOINs with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on bookings.created_at to speed up date-based filtering
CREATE INDEX idx_bookings_created_at ON bookings(created_at);

-- Index on properties.city for city-based property filtering
CREATE INDEX idx_properties_city ON properties(city);
