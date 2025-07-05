# Partitioning Performance Report – Booking Table

## 🎯 Objective

Improve performance when querying large datasets in the `bookings` table by partitioning based on the `start_date` column.

---

## 🏗️ What Was Done

- A new `bookings_partitioned` table was created using PostgreSQL's `RANGE` partitioning on `start_date`.
- Four partitions were created for each quarter of the year 2024.
- A query filtering bookings within April 2024 was tested with `EXPLAIN ANALYZE`.

---

## 🚀 Performance Results

- **Before Partitioning:** Full table scan was observed.
- **After Partitioning:** PostgreSQL only accessed `bookings_2024_q2` instead of scanning the entire dataset.
- **Execution Time:** Reduced significantly on large datasets (depending on row count).

---

## ✅ Conclusion

Partitioning the `bookings` table by `start_date` narrowed down scans to only the relevant partitions. This optimization is effective for improving query performance on large, time-based datasets.
