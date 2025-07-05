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
    RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM
    bookings
GROUP BY
    property_id
ORDER BY
    property_rank;
