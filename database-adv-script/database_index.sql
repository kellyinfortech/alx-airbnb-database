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
