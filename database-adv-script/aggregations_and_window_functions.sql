-- 1. Total number of bookings made by each user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id
ORDER BY
    total_bookings DESC;


-- 2. Rank properties based on the total number of bookings using RANK()
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_position
FROM
    bookings
GROUP BY
    property_id
ORDER BY
    rank_position;


-- 3. Rank properties using ROW_NUMBER() for the same purpose
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number_position
FROM
    bookings
GROUP BY
    property_id
ORDER BY
    row_number_position;
