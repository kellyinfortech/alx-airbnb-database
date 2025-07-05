# Airbnb Database Normalization Report

## Objective
Apply normalization principles to ensure the Airbnb database is in **Third Normal Form (3NF)**, minimizing redundancy and improving data integrity.

---

## Normalization Overview

Normalization is the process of organizing database attributes and tables to reduce redundancy and improve data integrity. The three main forms are:

- **1NF (First Normal Form):** Eliminate repeating groups; each field contains atomic (indivisible) values.
- **2NF (Second Normal Form):** Achieve 1NF and remove partial dependencies (all non-key attributes depend on the whole primary key).
- **3NF (Third Normal Form):** Achieve 2NF and remove transitive dependencies (non-key attributes should not depend on other non-key attributes).

---

## Entities Reviewed

### ✅ User
- **1NF:** All attributes are atomic.
- **2NF:** Single-column primary key (`user_id`). All attributes depend entirely on it.
- **3NF:** No transitive dependencies.

### ✅ Property
- **1NF:** Atomic attributes.
- **2NF:** All attributes depend on `property_id`.
- **3NF:** No transitive dependencies. Host details are referenced via `host_id` (FK to User).

### ✅ Booking
- **1NF:** Atomic fields.
- **2NF:** Composite FK (user_id, property_id), but primary key is `booking_id`. All other fields depend only on `booking_id`.
- **3NF:** No transitive dependencies.

### ✅ Payment
- **1NF:** Atomic fields.
- **2NF:** All non-key fields depend on `payment_id`.
- **3NF:** Payment method stored as ENUM; no derived or transitive fields.

### ✅ Review
- **1NF:** Atomic values.
- **2NF:** `review_id` as primary key; all fields dependent on it.
- **3NF:** No non-key dependencies on other non-key fields.

### ✅ Message
- **1NF:** Atomic fields.
- **2NF:** All fields depend on `message_id`.
- **3NF:** `sender_id` and `recipient_id` reference users appropriately; no transitive dependencies.

---

## Conclusion

✅ **All tables are in Third Normal Form (3NF)**.  
No redundancies or transitive dependencies exist in the current schema.

The design supports efficient querying and ensures high data integrity across all operations.

