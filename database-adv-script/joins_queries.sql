-- =============================================
-- INNER JOIN: Retrieve all bookings and the users who made those bookings
-- =============================================
SELECT 
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.name AS user_name,
    users.email AS user_email
FROM 
    bookings
INNER JOIN users ON bookings.user_id = users.id;


-- =============================================
-- LEFT JOIN: Retrieve all properties and their reviews
-- Includes properties that have no reviews
-- =============================================
SELECT 
    properties.id AS property_id,
    properties.title AS property_title,
    properties.description,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment,
    reviews.user_id AS reviewer_id
FROM 
    properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;



-- =============================================
-- FULL OUTER JOIN: Retrieve all users and bookings
-- Includes users without bookings and bookings not linked to users
-- MySQL workaround using UNION of LEFT and RIGHT JOINs
-- =============================================

-- Part 1: Users with or without bookings
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

-- Part 2: Bookings not linked to any user
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM 
    bookings
LEFT JOIN users ON bookings.user_id = users.id
WHERE users.id IS NULL;
