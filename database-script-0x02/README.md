# Database Script: Seed Data

## Overview

This script (`seed.sql`) is designed to populate the Airbnb database with sample data across all key entities including:

- Users
- Properties
- Bookings
- Payments
- Reviews
- Messages

The data reflects realistic user behavior and relationships to enable meaningful testing and development.

## Contents

- **Users:** Includes guests, hosts, and an admin with sample profile data.
- **Properties:** Listings associated with hosts including price and location.
- **Bookings:** Sample reservations linked to users and properties.
- **Payments:** Transactions made for bookings using various methods.
- **Reviews:** User feedback with ratings and comments.
- **Messages:** Communication between users for booking inquiries.

## How to Use

1. Make sure the database schema has already been created using `schema.sql`.
2. Run the script in your SQL environment:
   ```bash
   psql -U youruser -d airbnb_db -f seed.sql
