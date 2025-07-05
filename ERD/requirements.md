# 📘 Entity-Relationship Diagram (ERD) Specification

This document defines the entities, attributes, and relationships for the Airbnb clone database based on the provided specifications.

---

## 🧩 Entities and Attributes

### 1. **User**
- `user_id`: UUID, **Primary Key**, Indexed
- `first_name`: VARCHAR, NOT NULL
- `last_name`: VARCHAR, NOT NULL
- `email`: VARCHAR, **UNIQUE**, NOT NULL
- `password_hash`: VARCHAR, NOT NULL
- `phone_number`: VARCHAR, NULL
- `role`: ENUM (`guest`, `host`, `admin`), NOT NULL
- `created_at`: TIMESTAMP, DEFAULT `CURRENT_TIMESTAMP`

---

### 2. **Property**
- `property_id`: UUID, **Primary Key**, Indexed
- `host_id`: UUID, **Foreign Key** → User(`user_id`)
- `name`: VARCHAR, NOT NULL
- `description`: TEXT, NOT NULL
- `location`: VARCHAR, NOT NULL
- `pricepernight`: DECIMAL, NOT NULL
- `created_at`: TIMESTAMP, DEFAULT `CURRENT_TIMESTAMP`
- `updated_at`: TIMESTAMP, ON UPDATE `CURRENT_TIMESTAMP`

---

### 3. **Booking**
- `booking_id`: UUID, **Primary Key**, Indexed
- `property_id`: UUID, **Foreign Key** → Property(`property_id`)
- `user_id`: UUID, **Foreign Key** → User(`user_id`)
- `start_date`: DATE, NOT NULL
- `end_date`: DATE, NOT NULL
- `total_price`: DECIMAL, NOT NULL
- `status`: ENUM (`pending`, `confirmed`, `canceled`), NOT NULL
- `created_at`: TIMESTAMP, DEFAULT `CURRENT_TIMESTAMP`

---

### 4. **Payment**
- `payment_id`: UUID, **Primary Key**, Indexed
- `booking_id`: UUID, **Foreign Key** → Booking(`booking_id`)
- `amount`: DECIMAL, NOT NULL
- `payment_date`: TIMESTAMP, DEFAULT `CURRENT_TIMESTAMP`
- `payment_method`: ENUM (`credit_card`, `paypal`, `stripe`), NOT NULL

---

### 5. **Review**
- `review_id`: UUID, **Primary Key**, Indexed
- `property_id`: UUID, **Foreign Key** → Property(`property_id`)
- `user_id`: UUID, **Foreign Key** → User(`user_id`)
- `rating`: INTEGER, CHECK (`rating >= 1 AND rating <= 5`), NOT NULL
- `comment`: TEXT, NOT NULL
- `created_at`: TIMESTAMP, DEFAULT `CURRENT_TIMESTAMP`

---

### 6. **Message**
- `message_id`: UUID, **Primary Key**, Indexed
- `sender_id`: UUID, **Foreign Key** → User(`user_id`)
- `recipient_id`: UUID, **Foreign Key** → User(`user_id`)
- `message_body`: TEXT, NOT NULL
- `sent_at`: TIMESTAMP, DEFAULT `CURRENT_TIMESTAMP`

---

## 🔗 Relationships

- **User ↔ Property**  
  One-to-Many: A user (host) can create many properties.

- **User ↔ Booking**  
  One-to-Many: A guest user can make multiple bookings.

- **Property ↔ Booking**  
  One-to-Many: A property can have multiple bookings.

- **Booking ↔ Payment**  
  One-to-One: Each booking has one associated payment.

- **User ↔ Review**  
  One-to-Many: A user can leave multiple reviews.

- **Property ↔ Review**  
  One-to-Many: A property can receive multiple reviews.

- **User ↔ Message (sender/recipient)**  
  One-to-Many (bidirectional): Users can send and receive messages.

---

## 🧮 ERD Tools & Export Tips

To create a visual diagram from this schema:
- Use **[Draw.io](https://draw.io)** or **[dbdiagram.io](https://dbdiagram.io)**
- Clearly mark:
  - Primary Keys (PK)
  - Foreign Keys (FK)
  - Entity relationships and cardinalities (1:N, 1:1)
- Export your diagram as `.png`, `.svg`, or `.drawio` to include in your repo

---

## 📂 File Location

```
alx-airbnb-database/ERD/requirements.md
```

---
