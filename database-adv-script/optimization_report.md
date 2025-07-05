# Query Optimization Report - ALX Airbnb Database

## 🎯 Objective

Optimize a query retrieving bookings, user details, property details, and payment info for better performance.

---

## 🧪 Initial Query Analysis

The initial query joined the `bookings`, `users`, `properties`, and `payments` tables using standard JOINs to return comprehensive booking data.

```sql
SELECT
    b.id AS booking_id,
    b.created_at AS booking_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;
