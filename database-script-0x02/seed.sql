-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
  ('u1', 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '1234567890', 'guest', CURRENT_TIMESTAMP),
  ('u2', 'Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '0987654321', 'host', CURRENT_TIMESTAMP),
  ('u3', 'Charlie', 'Admin', 'admin@example.com', 'hashedpassword3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Insert Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at) VALUES
  ('p1', 'u2', 'Cozy Apartment', 'A nice and cozy apartment in the city center.', 'Nairobi, Kenya', 50.00, CURRENT_TIMESTAMP),
  ('p2', 'u2', 'Beach House', 'Beautiful beach house with ocean view.', 'Mombasa, Kenya', 120.00, CURRENT_TIMESTAMP);

-- Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
  ('b1', 'p1', 'u1', '2025-07-10', '2025-07-15', 250.00, 'confirmed', CURRENT_TIMESTAMP),
  ('b2', 'p2', 'u1', '2025-08-01', '2025-08-05', 480.00, 'pending', CURRENT_TIMESTAMP);

-- Insert Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
  ('pay1', 'b1', 250.00, CURRENT_TIMESTAMP, 'credit_card'),
  ('pay2', 'b2', 480.00, CURRENT_TIMESTAMP, 'paypal');

-- Insert Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
  ('r1', 'p1', 'u1', 5, 'Excellent stay! Very clean and close to everything.', CURRENT_TIMESTAMP),
  ('r2', 'p2', 'u1', 4, 'Great view, but a bit noisy at night.', CURRENT_TIMESTAMP);

-- Insert Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
  ('m1', 'u1', 'u2', 'Hi, is the beach house available in August?', CURRENT_TIMESTAMP),
  ('m2', 'u2', 'u1', 'Yes, it is. You can go ahead and book!', CURRENT_TIMESTAMP);
