-- Initial query to retrieve bookings with related user, property, and payment details
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount AS payment_amount
FROM 
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE 
    u.email IS NOT NULL AND b.created_at >= '2024-01-01';

-- Optimized version using the same logic but assumes indexes exist
-- Indexes: users.email, bookings.created_at, bookings.user_id, bookings.property_id, payments.booking_id

EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount AS payment_amount
FROM 
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE 
    u.email IS NOT NULL AND b.created_at >= '2024-01-01';
