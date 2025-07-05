# Airbnb Database Schema

## Overview
This directory contains the SQL script to define the Airbnb clone database schema based on the provided specification.

## Files
- `schema.sql`: Contains all SQL `CREATE TABLE` statements, data types, indexes, constraints, and foreign key relationships.

## Entities & Relationships
The following tables are created:
- `users`
- `properties`
- `bookings`
- `payments`
- `reviews`
- `messages`

## Features
- UUID as primary keys
- ENUM types for roles, booking statuses, and payment methods
- Proper indexing for fast lookup
- Foreign key constraints with `ON DELETE CASCADE` for relational integrity
- Timestamps for creation and updates

## Usage
To create the schema, connect to your PostgreSQL database and run:

```bash
psql -U <username> -d <database_name> -f schema.sql
